package com.eec.entity;

public class User {
	private Integer id;
	private String username;
	private String password;
	private String phone_number;
	private String date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public User(String username, String password, String phone_number, String date) {
		super();
		this.username = username;
		this.password = password;
		this.phone_number = phone_number;
		this.date = date;
	}
	public User() {
		super();
	}
	
	
}