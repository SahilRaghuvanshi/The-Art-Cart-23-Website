package com;

public class User {

	String emailid,password,name;
	String mobile;
	
	public User(String emailid, String password, String name, String mobile) {
		super();
		this.emailid = emailid;
		this.password = password;
		this.name = name;
		this.mobile = mobile;
	}
	
	public User() {
		super();
	}

	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}



}
