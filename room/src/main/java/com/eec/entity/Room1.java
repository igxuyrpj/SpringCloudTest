package com.eec.entity;

public class Room1 {
	private Integer id;
	private String className;
	private String floor;
	private String state;
	private String classNo;
	private String seat;
	private String media;
	private String date;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public Room1(String className, String floor, String state, String classNo, String seat, String media) {
		super();
		this.className = className;
		this.floor = floor;
		this.state = state;
		this.classNo = classNo;
		this.seat = seat;
		this.media = media;
	}
	public Room1() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getMedia() {
		return media;
	}
	public void setMedia(String media) {
		this.media = media;
	}
	public Room1(String className, String floor, String state, String classNo, String seat, String media, String date) {
		super();
		this.className = className;
		this.floor = floor;
		this.state = state;
		this.classNo = classNo;
		this.seat = seat;
		this.media = media;
		this.date = date;
	}
	
	
}
