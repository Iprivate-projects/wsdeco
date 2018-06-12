package com.wsdeco.oa.branch.department.handles;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wsdeco.oa.branch.department.service.IBranchService;
import com.wsdeco.oa.commons.beans.Department;
import com.wsdeco.oa.commons.vo.Page;
/**
 * 
 * <p>部门处理器</p>
 *@author 李江铎
 *@time 2017年12月28日下午4:17:41
 *@version
 */
@Controller
@RequestMapping("/test")
public class BranchHandle {
	@Autowired
	private IBranchService service;
	

	public void setService(IBranchService service) {
		this.service = service;
	}
	//分页查询当前数据
	@RequestMapping("/queryBranch.do")
	public String queryHandle(int pageno,HttpSession session){
		
		//查询当前页信息
		Page<Department> page=service.findCurrentPage(pageno);
		session.setAttribute("page", page);
	
	  return "/xtsz/Branch.jsp";
		
	}
	//按id查询数据
	@RequestMapping("/look.do")
	public String lookHandle(int id,HttpSession session){
		
		Department department =service.findDepartmentById(id);
		session.setAttribute("department", department);
		
	
	  return "/xtsz/BranchDetail.jsp";
		
	}
	//添加部门
	@RequestMapping("/addBranch.do")
	public String addBranchHandle(Department department){
		
		service.addBranch(department);
		
	
	  return "queryPage.do";
		
	}
	//添加之后查询
	@RequestMapping("/queryPage.do")
	public String queryPageHandle(@RequestParam(defaultValue="1")int pageno,HttpSession session){
		
		Page<Department> departments=service.findCurrentPage(pageno);
		session.setAttribute("departments",departments);
		
	  return "/xtsz/Branch.jsp";
		
	}
	//修改之前查询
	@RequestMapping("/modifyPage.do")
	public String modifyPageHandle(int id,HttpSession session){
		
		Department department=service.findDepartmentById(id);
		session.setAttribute("department", department);
		
	  return "/xtsz/modifyBranch.jsp";
		
	}
	//修改部门
	@RequestMapping("/modifyBranch.do")
	public String modifyBranchHandle(Department department){
		
		service.modifyBranch(department);
	  return "modifyPage.do";
		
	}
	//删除部门
	@RequestMapping("/deleteBranch.do")
	public String deleteBranchHandle(int id,int pageno){
		
		System.out.println("===========");
			service.removeBranchById(id);
		
	  return "queryBranch.do";
		
	}
	
	
}
