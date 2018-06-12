package com.wsdeco.oa.notice.manage.dao;

import java.util.List;
import java.util.Map;

import com.wsdeco.oa.commons.beans.noticeBean;


public interface INoticeDao {

	long selectAllRows();

	List<noticeBean> selectCurrentPageDates(Map<String, Integer> map);

	void insertNotice(noticeBean noticeBean);

	void deleteNoticeById(int id);

	void updateNotice(noticeBean noticeBean);

	noticeBean selectNoticeById(int id);

}
