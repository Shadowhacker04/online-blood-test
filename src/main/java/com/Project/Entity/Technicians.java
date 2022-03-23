package com.Project.Entity;

import org.springframework.boot.autoconfigure.domain.EntityScan;

/*create table Technicians(
TechId int auto_increment primary key,
first_name varchar(10),
last_name varchar(10),
email varchar(20),
gender varchar(10),
Phnno varchar(10),
Timing varchar(20),
passwrd varchar(15));*/

public class Technicians {
	
	private int techId;
	private String firstname;
	private String lastname;
	private String email;
	private String gender;
	private String phnNo;
	private String time;
	private String passwrd;
	private String status;
	
	public int getTechId() {
		return techId;
	}
	public void setTechId(int techId) {
		this.techId = techId;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhnNo() {
		return phnNo;
	}
	public void setPhnNo(String phnNo) {
		this.phnNo = phnNo;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPasswrd() {
		return passwrd;
	}
	public void setPasswrd(String passwrd) {
		this.passwrd = passwrd;
	
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	public Technicians(int techId, String firstname, String lastname, String email, String gender, String phnNo,
			String time, String passwrd, String status) {
		super();
		this.techId = techId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.phnNo = phnNo;
		this.time = time;
		this.passwrd = passwrd;
		this.status= status;
	}
	public Technicians() {
		super();
	}
	
	
}
