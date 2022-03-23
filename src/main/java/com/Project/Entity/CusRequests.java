package com.Project.Entity;

public class CusRequests {
	
	
	private String customerid;
	private String dateofrequest;
	private String name;
	private int cost;
	private String status;
	private String assigned;
	private String requestid;
	
	public String getCustomerid() {
		return customerid;
	}
	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}
	public String getDateofrequest() {
		return dateofrequest;
	}
	public void setDateofrequest(String dateofrequest) {
		this.dateofrequest = dateofrequest;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAssigned() {
		return assigned;
	}
	public void setAssigned(String assigned) {
		this.assigned = assigned;
	}

	public String getRequestid() {
		return requestid;
	}
	public void setRequestid(String requestid) {
		this.requestid = requestid;
	}
	
	
}
