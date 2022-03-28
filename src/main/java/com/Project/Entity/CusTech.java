package com.Project.Entity;

/*create table requestTech(
sno int auto_increment primary key,
reqid int,
cusname varchar(50),
testreq varchar(50),
dot varchar(20),
techassign varchar(50));*/


public class CusTech {

	private int sno;
	private String requestid;
	private String cusname;
	private String testreq;
	private String dot;
	private String firstname;
	private String Techopinion;
	
	
	public String getTechopinion() {
		return Techopinion;
	}
	public void setTechopinion(String techopinion) {
		Techopinion = techopinion;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	
	
	public String getRequestid() {
		return requestid;
	}
	public void setRequestid(String requestid) {
		this.requestid = requestid;
	}
	public String getCusname() {
		return cusname;
	}
	public void setCusname(String cusname) {
		this.cusname = cusname;
	}
	public String getTestreq() {
		return testreq;
	}
	public void setTestreq(String testreq) {
		this.testreq = testreq;
	}
	public String getDot() {
		return dot;
	}
	public void setDot(String dot) {
		this.dot = dot;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	
	
	
}
