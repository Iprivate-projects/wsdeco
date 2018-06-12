package com.wsdeco.oa.branch.department.dao;

import java.util.List;
import java.util.Map;

import com.wsdeco.oa.commons.beans.Department;

/**
*<p>dao接口</p>
*@author asd
*@time 2017年12月28日下午4:19:40
*@version
*/
public interface IBranchDao {
	//获取部门数量
	long selectAllRows();
	//获取当前页所包含的部门数据
	List<Department> selectCurrentPageDates(Map<String, Integer> map);
	//根据id查询
	Department selectDepartmentById(int id);
	//添加部门
	void insertBranch(Department department);
	//修改部门
	void updateBranch(Department department);
	//删除部门
	void deleteBranchById(int id);
	
}
