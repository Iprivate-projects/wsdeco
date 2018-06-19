package com.wsdeco.oa.hr.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wsdeco.oa.commons.beans.Person;
import com.wsdeco.oa.hr.vo.Page;

/**
 *<p></p>
 * @author qiaozhen
 * @time 2018年1月1日下午5:18:06
 * @verson 
 */
public interface IDataDao {
	public List<Person> getAllDataOfPerson(@Param("pageStartIndex")int pageStartIndex,@Param("pageSize")int pageSize);
	public int selectAllCount();
	public void insertPerson(Person addedPerson);
	public List<Person> getPersonByName(@Param("name")String content, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public List<Person> getPersonById(@Param("id")int id, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public List<Person> getPersonByTel(@Param("tel")long tel, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public List<Person> getPersonByMale(@Param("male")boolean b, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public List<Person> getPersonByState(@Param("state")boolean b, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public List<Person> getPersonByPosition(@Param("position")String content, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public List<Person> getPersonByTime(@Param("time")int id, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
//	public List<Person> getPersonByDepartment(@Param("department")String content, @Param("pageStartIndex")int pageStartIndex, @Param("pageSize")int pageSize);
	public void updatePerson(Person person);
	public void deletePerson(int id);
}
