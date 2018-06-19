package com.wsdeco.oa.hr.handlers;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wsdeco.oa.commons.beans.Person;
import com.wsdeco.oa.hr.service.IDataReadService;
import com.wsdeco.oa.hr.vo.Page;

/**
 *<p></p>
 * @author qiaozhen
 * @time 2017年12月28日上午11:35:54
 * @verson 
 */
@Controller
@RequestMapping("/hr/handlers")
public class DataHandler {

	@Resource(name="readService")
	private IDataReadService service;

	public void setRead(IDataReadService read) {
		this.service = read;
	}


	@RequestMapping("/Addhr.do")
	public String addPerson(HttpServletRequest req,HttpSession session){
		try {
			Person addedPerson = getPersonFromReq(req);
			service.insertPerson(addedPerson);
		} catch (Exception e) {
			session.setAttribute("insertInputError", true);//避免用户输入错误带来的500错误，跳转回输入页面进行提示
			return"/rsxz/AddEmploylee.jsp";
		}
		session.setAttribute("road","/..");//由于跳进了.do改变了路径层级，所以会导致路径问题，使用road调整路径
		return "Readhr.do";
	}

	@RequestMapping("/Update.do")
	public String updatePerson(HttpServletRequest req,HttpSession session){
		try {
			Person person = getPersonFromReq(req);
			service.updatePerson(person);
		} catch (Exception e) {
			session.setAttribute("insertInputError", true);//避免用户输入错误带来的500错误，跳转回输入页面进行提示
			return"/rsxz/AddEmploylee.jsp";
		}
		session.setAttribute("road","/..");//由于跳进了.do改变了路径层级，所以会导致路径问题，使用road调整路径
		return "Readhr.do";
	}
	
	@RequestMapping("/Delete.do")
	public String deletePerson(int id){
		service.deletePerson(id);
		return "Readhr.do";
	}
	
	@RequestMapping("/Queryhr.do")
	public String queryPerson(HttpServletRequest req,@RequestParam(defaultValue="1")int pageno,HttpSession session){
		String content = req.getParameter("content");
//		System.out.println(content);
		Page<Person> page = service.queryPerson(content,pageno);
		session.setAttribute("page", page);
//		System.out.println(page.toString());
		restart(session);
		return "/rsxz/Employlee.jsp";
	}
	
	@RequestMapping("/Readhr.do")
	public String findnewslabel(@RequestParam(defaultValue="1")int pageno,HttpSession session){
		Page<Person> page = service.findCurrentPage(pageno);
//		System.out.println(page.toString());
		session.setAttribute("page", page);
		restart(session);
		return "/rsxz/Employlee.jsp";
	}

	@RequestMapping("/Check.do")
	public String checkPerson(int id,HttpSession session){
//		System.out.println(id);
		Person person = service.checkPerson(id);
		session.setAttribute("personmessage", person);
		restart(session);
		return "/rsxz/EmployeeDetail.jsp";
	}
	
	
	
	/**
	 * 重置(初始化)所有底层变量
	 * @param session
	 */
	private void restart(HttpSession session){
		session.setAttribute("insertInputError", false);
		session.setAttribute("road","");
	}
	
	private Person getPersonFromReq(HttpServletRequest req){
		int id = Integer.valueOf(req.getParameter("id"));
		String name = req.getParameter("name");
		boolean male=req.getParameter("male").equals("男");
		String position = req.getParameter("position");
		long tel = Long.valueOf(req.getParameter("tel"));
		int year = Integer.valueOf(req.getParameter("year"));
		int month = Integer.valueOf(req.getParameter("month"));
		int day = Integer.valueOf(req.getParameter("day"));
		if(year>2018||month>12||day>31||day<1||month<1||year<0){
			Integer.valueOf("这里我就是想搞出个错");
		}
		int time = year*10000+month*100+day;
		boolean state = req.getParameter("state").equals("在职");
		return new Person(id,name,male,position,tel,time,state);
	}
}
