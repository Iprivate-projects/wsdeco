package com.wsdeco.oa.hr.vo;

import java.util.List;

import com.wsdeco.oa.commons.beans.Constants;

/**
 *<p></p>
 * @author qiaozhen
 * @time 2017年12月26日下午10:52:13
 * @verson 
 */
public class Page<T> {
	/**
	 * 当前页码(minpage<pageno<maxpage)
	 */
	private int pageno;
	/**
	 * 当前页首项
	 */
	private int pageStartIndex;
	/**
	 * 页面大小
	 */
	private int pageSize;
	/**
	 * 总记录数
	 */
	private long allRows;
	/**
	 * 最大页码
	 */
	private long maxPages;
	/**
	 * 页数据
	 */
	private List<T> datas;

	public Page() {
		pageno = Constants.DEFAULT_PAGENO;
		pageSize = Constants.PAGE_SIZE;
	}

	public Page(int pageno, int pageSize) {
		if (pageno < Constants.MIN_PAGNO) {
			pageno = Constants.DEFAULT_PAGENO;
		}
		if (pageSize < Constants.MIN_PAGNO) {
			pageSize = Constants.PAGE_SIZE;
		}
		this.pageno = pageno;
		this.pageSize = pageSize;
	}

	public int getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	public int getPageStartIndex() {
		return (pageno - 1) * pageSize;
	}

	public void setPageStartIndex(int pageStartIndex) {
		this.pageStartIndex = pageStartIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public long getAllRows() {
		return allRows;
	}

	public void setAllRows(long totalRows) {
		this.allRows = totalRows;
	}

	public long getMaxPages() {
		maxPages = allRows/pageSize;
		if(allRows%pageSize!=0) {
			maxPages++;
		}
		return maxPages;
	}

	public void setMaxPages(long totalPages) {
		this.maxPages = totalPages;
	}

	public List<T> getDatas() {
		return datas;
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	@Override
	public String toString() {
		return "Page [pageno=" + pageno + ", pageStartIndex=" + pageStartIndex + ", pageSize=" + pageSize + ", allRows="
				+ allRows + ", maxPages=" + maxPages + ", datas=" + datas.get(0).toString() + "]";
	}
	
	
}
