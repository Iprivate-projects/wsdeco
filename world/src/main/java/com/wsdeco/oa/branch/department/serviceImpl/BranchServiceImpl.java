package com.wsdeco.oa.branch.department.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wsdeco.oa.branch.department.dao.IBranchDao;
import com.wsdeco.oa.branch.department.service.IBranchService;
import com.wsdeco.oa.commons.beans.Department;
import com.wsdeco.oa.commons.constant.Constants;
import com.wsdeco.oa.commons.vo.Page;
/**
 * 
 * <p>service实现类</p>
 *@author 李江铎
 *@time 2017年12月28日下午4:13:29
 *@version
 */

public class BranchServiceImpl implements IBranchService {

	private IBranchDao dao;
	
	

	public void setDao(IBranchDao dao) {
		this.dao = dao;
	}


	//查询当前页部门数据
	@Override
	public Page<Department> findCurrentPage(int pageno) {
		
		Page<Department> page=new Page<>(pageno,Constants.PAGE_SIZE);
		
		long totalRows=dao.selectAllRows();
		page.setTotalRows(totalRows);
		
		int pageStartIndex = page.getPageStartIndex();
		int pageSize = page.getPageSize();
		Map<String, Integer> map=new HashMap<>();
		map.put("pageStartIndex", pageStartIndex);
		map.put("pageSize", pageSize);
		
		List<Department> dates= dao.selectCurrentPageDates(map);
		page.setDates(dates);
		
		return page;
	}


	//根据id查询
	@Override
	public Department findDepartmentById(int id) {
		
		return dao.selectDepartmentById(id);
		
	}

	@Override
	public void addBranch(Department department) {
		dao.insertBranch(department);
		/**
		*@return
		*/
	}

	@Override
	public void modifyBranch(Department department) {
		dao.updateBranch(department);
		/**
		*@return
		*/
	}


	@Override
	public void removeBranchById(int id) {
		dao.deleteBranchById(id);
		/**
		*@return
		*/
	}

	
}
