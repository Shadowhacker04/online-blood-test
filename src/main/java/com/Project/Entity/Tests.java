package com.Project.Entity;

/*create table Tests( 
TestName varchar(50),
Cost int,
TestType varchar(10),
TestTakenTime varchar(20));*/

public class Tests {

	private String tname;
	private int cost;
	private String tType;
	private String tTime;
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String gettType() {
		return tType;
	}
	public void settType(String tType) {
		this.tType = tType;
	}
	public String gettTime() {
		return tTime;
	}
	public void settTime(String tTime) {
		this.tTime = tTime;
	}
	public Tests(String tname, int cost, String tType, String tTime) {
		super();
		this.tname = tname;
		this.cost = cost;
		this.tType = tType;
		this.tTime = tTime;
	}
	public Tests() {
		super();
	}
	
	
}
