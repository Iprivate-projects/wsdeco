package com.wsdeco.oa.notice.manage.service;

import com.wsdeco.oa.commons.beans.noticeBean;
import com.wsdeco.oa.commons.vo.Page;

/**
*<p></p>
*@author asd
*@time 2018年1月4日下午5:05:58
*@version
*/
public interface INoticeService {

	Page<noticeBean> findCurrentPage(int pageno);

	void addNotice(noticeBean noticeBean);

	void removeNoticeById(int id);

	void modifyNotice(noticeBean noticeBean);

	noticeBean findNoticeById(int id);

}
