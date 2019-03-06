package com.eec.entity;

public class Room {
	private Integer id;
	private String num;
	private String stuName;
	private String className;
	private String floor;
	private String classNo;
	private String date;
	private String datepicker;
	public Room(String num, String stuName, String className, String floor, String classNo, String date,
			String datepicker) {
		super();
		this.num = num;
		this.stuName = stuName;
		this.className = className;
		this.floor = floor;
		this.classNo = classNo;
		this.date = date;
		this.datepicker = datepicker;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDatepicker() {
		return datepicker;
	}

	public void setDatepicker(String datepicker) {
		this.datepicker = datepicker;
	}

	public Room(String num, String stuName, String className, String floor,String classNo) {
		super();
		this.num = num;
		this.stuName = stuName;
		this.className = className;
		this.floor = floor;
		
		this.classNo = classNo;
	}
	
	public Room(Integer id, String num, String stuName, String className, String floor, String classNo) {
		super();
		this.id = id;
		this.num = num;
		this.stuName = stuName;
		this.className = className;
		this.floor = floor;
		
		this.classNo = classNo;
	}

	public Room() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	
}