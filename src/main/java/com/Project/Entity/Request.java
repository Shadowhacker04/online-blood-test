package com.Project.Entity;

/*create table request(
requestId int auto_increment primary key,
customer_name varchar(20),
address varchar(20),
mobile varchar(10),
test_Requested varchar(20),
date_of_test varchar(20),
request_status varchar(50),
techid int);*/

public class Request {

	private int requestid;
	private String custname;
	private String address;
	private String phnno;
	private String testreq;
	private String dot;
	private String status;
	public int getRequestid() {
		return requestid;
	}
	public void setRequestid(int requestid) {
		this.requestid = requestid;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhnno() {
		return phnno;
	}
	public void setPhnno(String phnno) {
		this.phnno = phnno;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Request(int requestid, String custname, String address, String phnno, String testreq, String dot,
			String status) {
		super();
		this.requestid = requestid;
		this.custname = custname;
		this.address = address;
		this.phnno = phnno;
		this.testreq = testreq;
		this.dot = dot;
		this.status = status;
	}
	public Request() {
		super();
	}
	
	
}
