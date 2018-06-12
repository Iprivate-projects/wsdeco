package com.wsdeco.oa.hr.service;

import java.util.List;

import com.wsdeco.oa.commons.beans.Person;
import com.wsdeco.oa.hr.vo.Page;

/**
 *<p></p>
 * @author qiaozhen
 * @time 2018年1月1日下午4:34:24
 * @verson 
 */
public interface IDataReadService {

	public void insertPerson(Person addedPerson);

	public Page<Person> findCurrentPage(int i);

	public Page<Person> queryPerson(String content, int pageno);

	public Person checkPerson(int id);

	public void updatePerson(Person person);

	public void deletePerson(int id); 


}
