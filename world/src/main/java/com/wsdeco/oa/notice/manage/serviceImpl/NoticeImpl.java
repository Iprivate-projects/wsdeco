package com.wsdeco.oa.notice.manage.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.wsdeco.oa.commons.beans.Constants;
import com.wsdeco.oa.commons.beans.noticeBean;

import com.wsdeco.oa.commons.vo.Page;
import com.wsdeco.oa.notice.manage.dao.INoticeDao;
import com.wsdeco.oa.notice.manage.service.INoticeService;


public class NoticeImpl implements INoticeService {
	@Autowired
	private INoticeDao dao;
	

	public void setDao(INoticeDao dao) {
		this.dao = dao;
	}


	@Override
	public Page<noticeBean> findCurrentPage(int pageno) {

		Page<noticeBean> page=new Page<>(pageno,Constants.PAGE_SIZE);
		
		long totalRows=dao.selectAllRows();
		page.setTotalRows(totalRows);
		
		int pageStartIndex = page.getPageStartIndex();
		int pageSize = page.getPageSize();
		Map<String, Integer> map=new HashMap<>();
		map.put("pageStartIndex", pageStartIndex);
		map.put("pageSize", pageSize);
		
		List<noticeBean> dates= dao.selectCurrentPageDates(map);
		page.setDates(dates);
		
		return page;
		
	}


	@Override
	public void addNotice(noticeBean noticeBean) {
		dao.insertNotice(noticeBean);
	}


	@Override
	public void removeNoticeById(int id) {
		dao.deleteNoticeById(id);
	}


	@Override
	public void modifyNotice(noticeBean noticeBean) {
		dao.updateNotice(noticeBean);
	}


	@Override
	public noticeBean findNoticeById(int id) {
		noticeBean	noticeBean	= dao.selectNoticeById(id);
		return noticeBean;
		
	}

}
