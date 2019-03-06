package com.eec.entity;

public class Lab {
	 private Integer id;
	  private String pic;
	  private String info;
	  private String date;
	  private String uptime;
	  private String title;
	  private String type;//1.代表图片，2.代表文档

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUptime() {
		return uptime;
	}
	public void setUptime(String uptime) {
		this.uptime = uptime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	  
}
