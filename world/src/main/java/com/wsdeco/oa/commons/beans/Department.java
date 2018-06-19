package com.wsdeco.oa.commons.beans;
/**
 * 部门实体类
 * */
public class Department {
	private Integer id;
	private String name;
	private String shortName;
	private String remark;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "department [id=" + id + ", name=" + name + ", shortName=" + shortName + ", remark=" + remark + "]";
	}
	
	
	
}
