package com;

public class Buyer {
	
	String fname,lname,street,state,city,pincode;

	public Buyer(String fname, String lname, String street, String state, String city, String pincode) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.street = street;
		this.state = state;
		this.city = city;
		this.pincode = pincode;
	}

	public Buyer() {
		super();
	}
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
}
