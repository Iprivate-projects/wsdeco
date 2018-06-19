package com.wsdeco.oa.commons.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

/**
 *<p></p>
 * @author qiaozhen
 * @time 2017年12月29日上午11:06:27
 * @verson 
 */
@Component()
@Primary()
public class Person {
	/**
	 * id
	 */
	private int id;
	/**
	 * 姓名
	 */
	private String name;
	/**
	 * 性别是否为男性
	 */
	private boolean male;
	/**
	 * 职位
	 */
	private String position;
	/**
	 * 电话
	 */
	private long tel;
//	/**
//	 * 部门
//	 */
//	@Autowired(required=false)
//	private Department depatrment;
	/**
	 * 入职时间
	 */
	private int time;
	/**
	 * 状态
	 */
	private boolean state;
	
	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Person(int id, String name, boolean male, String position, long tel, int time, boolean state) {
		super();
		this.id = id;
		this.name = name;
		this.male = male;
		this.position = position;
		this.tel = tel;
		this.time = time;
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isMale() {
		return male;
	}
	public void setMale(boolean male) {
		this.male = male;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public long getTel() {
		return tel;
	}
	public void setTel(long tel) {
		this.tel = tel;
	}
//	public Department getDepatrment() {
//		return depatrment;
//	}
//	public void setDepatrment(Department depatrment) {
//		this.depatrment = depatrment;
//	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", male=" + male + ", position=" + position + ", tel=" + tel
				+ ", time=" + time + ", state=" + state + "]";
	}
	
	
}
