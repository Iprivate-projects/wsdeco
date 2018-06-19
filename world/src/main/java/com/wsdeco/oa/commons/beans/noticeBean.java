package com.wsdeco.oa.commons.beans;

public class noticeBean {
	private Integer id;
	private String title;
	private String time;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "noticeBean [id=" + id + ", title=" + title + ", time=" + time + "]";
	}
	
}
