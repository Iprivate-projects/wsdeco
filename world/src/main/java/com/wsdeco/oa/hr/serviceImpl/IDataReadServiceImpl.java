package com.wsdeco.oa.hr.serviceImpl;

import java.util.List;

import com.wsdeco.oa.commons.beans.Person;
import com.wsdeco.oa.hr.dao.IDataDao;
import com.wsdeco.oa.hr.service.IDataReadService;
import com.wsdeco.oa.hr.vo.Page;

/**
 *<p></p>
 * @author qiaozhen
 * @time 2018年1月1日下午5:14:37
 * @verson 
 */
public class IDataReadServiceImpl implements IDataReadService{

	private IDataDao dao;
	
	public void setDao(IDataDao dao) {
		this.dao = dao;
	}

	@Override
	public Page<Person> findCurrentPage(int i) {
	Page<Person> page = new Page<Person>();
	page.setPageno(i);
	int totalRows = dao.selectAllCount();
	page.setAllRows(totalRows);
	List<Person> datas = 
			dao.getAllDataOfPerson(page.getPageStartIndex(),page.getPageSize());
	page.setDatas(datas);
	return page;
	}

	@Override
	public void insertPerson(Person addedPerson) {
		dao.insertPerson(addedPerson);
	}

	@Override
	public Page<Person> queryPerson(String content, int pageno) {
		Page<Person> page = new Page<Person>();
		page.setPageno(pageno);
		int totalRows = dao.selectAllCount();
		page.setAllRows(totalRows);
		List<Person> datas = null;
		try {
			try {
				int id = Integer.valueOf(content);
				if(id>10000&&id<20200000){
					datas = dao.getPersonByTime(id,page.getPageStartIndex(),page.getPageSize());
				}else{
					datas = dao.getPersonById(id,page.getPageStartIndex(),page.getPageSize());
				}
			} catch (Exception e) {
				long tel =Long.valueOf(content); 
				datas = dao.getPersonByTel(tel,page.getPageStartIndex(),page.getPageSize());
			}
		} catch (NumberFormatException e) {
			if(content.equals("男")){
				datas = dao.getPersonByMale(true,page.getPageStartIndex(),page.getPageSize());
			}else if(content.equals("女")){
				datas = dao.getPersonByMale(false,page.getPageStartIndex(),page.getPageSize());
			}else if(content.equals("在职")){
				datas = dao.getPersonByState(true,page.getPageStartIndex(),page.getPageSize());
			}else if(content.equals("离职")){
				datas = dao.getPersonByState(false,page.getPageStartIndex(),page.getPageSize());
			}else{
				datas = dao.getPersonByName(content,page.getPageStartIndex(),page.getPageSize());
				if(datas.isEmpty()){
					datas = dao.getPersonByPosition(content,page.getPageStartIndex(),page.getPageSize());
				}
//				if(datas.isEmpty()){
//					datas = dao.getPersonByDepartment(content,page.getPageStartIndex(),page.getPageSize());
//				}
			}
		}
		page.setDatas(datas);
		return page;
	}

	@Override
	public Person checkPerson(int id) {
		List<Person> datas = dao.getPersonById(id,0,3);
		return datas.get(0);
	}

	@Override
	public void updatePerson(Person person) {
		dao.updatePerson(person);
	}

	@Override
	public void deletePerson(int id) {
		dao.deletePerson(id);
	}

}
