package com.wsdeco.oa.commons.vo;

import java.util.List;

import com.wsdeco.oa.commons.beans.Department;
import com.wsdeco.oa.commons.constant.Constants;

public class Page<T> {
	private int pageno;
	private int pageStartIndex;
	private int pageSize;
	private long totalRows;
	private long totalPages;
	private List<T> dates;
	
	public Page() {
		this.pageno=1;
		this.pageSize=Constants.PAGE_SIZE;
	}

	public Page(int pageno, int pageSize) {
		if(pageno<=0){
			pageno=1;
		}
		if(pageSize<=0){
			pageSize=Constants.PAGE_SIZE;
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
		return (pageno-1)*pageSize;
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

	public long getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(long totalRows) {
		this.totalRows = totalRows;
	}

	public long getTotalPages() {
		totalPages=totalRows/pageSize;
		if(totalRows%pageSize!=0){
			totalPages++;
		}
		return totalPages;
	}

	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}

	public List<T> getDates() {
		return dates;
	}

	public void setDates(List<T> dates) {
		this.dates = dates;
	}

	@Override
	public String toString() {
		return "Page [pageno=" + pageno + ", pageStartIndex=" + pageStartIndex + ", pageSize=" + pageSize
				+ ", totalRows=" + totalRows + ", totalPages=" + totalPages + ", dates=" + dates + "]";
	}
	
	
	
}
