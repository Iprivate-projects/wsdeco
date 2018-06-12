package com.wsdeco.oa.branch.department.service;

import com.wsdeco.oa.commons.beans.Department;
import com.wsdeco.oa.commons.vo.Page;
/**
 * 
 * <p>service接口</p>
 *@author 李江铎
 *@time 2017年12月28日下午4:18:45
 *@version
 */
public interface IBranchService {
	//查询当前页
	Page<Department> findCurrentPage(int pageno);

	Department findDepartmentById(int id);

	void addBranch(Department department);

	void modifyBranch(Department department);

	void removeBranchById(int id);

	

	

}
