package com.wsdeco.oa.notice.manage.handles;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.wsdeco.oa.commons.beans.noticeBean;
import com.wsdeco.oa.commons.vo.Page;
import com.wsdeco.oa.notice.manage.service.INoticeService;


@Controller
@RequestMapping("/run")
public class NoticeHandle {
	@Autowired
	private INoticeService service;
	
	public void setService(INoticeService service) {
		this.service = service;
	}



	@RequestMapping("/seeNotice.do")
	public String queryHandle(int pageno,HttpSession session){
		
		Page<noticeBean> page=service.findCurrentPage(pageno);
		session.setAttribute("page", page);
		
		return "/notice/Notice.jsp";
		
	}
	@RequestMapping("/addNotice.do")
	public String addHandle(noticeBean noticeBean){
		
		
		service.addNotice(noticeBean);
		return "seePage.do";
		
	}
	//添加之后查询
		@RequestMapping("/seePage.do")
		public String queryPageHandle(@RequestParam(defaultValue="1")int pageno,HttpSession session){
			
			Page<noticeBean> departments=service.findCurrentPage(pageno);
			session.setAttribute("departments",departments);
			
		  return "/notice/Notice.jsp";
			
		}
		@RequestMapping("/deleteNotice.do")
		public String deleteNoticeHandle(int id,int pageno){
			
			System.out.println("===========");
				service.removeNoticeById(id);
			
		  return "seeNotice.do";
			
		}
		//修改之前查询
		@RequestMapping("/modifyPage.do")
		public String modifyPageHandle(int id,HttpSession session){
			
			
			noticeBean noticeBean=service.findNoticeById(id);
			
			session.setAttribute("noticeBean", noticeBean);
			
		  return "/notice/modifyNotice.jsp";
			
		}
		//修改部门
		@RequestMapping("/modifyNotice.do")
		public String modifyNoticeHandle(noticeBean noticeBean){
			
			service.modifyNotice(noticeBean);
			
		  return "modifyPage.do";
			
		}
}
