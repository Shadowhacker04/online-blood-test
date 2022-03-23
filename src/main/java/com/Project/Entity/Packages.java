package com.Project.Entity;

/*create table package(
packageid int auto_increment primary key,
packagename varchar(50),
no_of_tests_included int,
tests_included varchar(500),
cost int);*/


public class Packages {

	private String packageid;
	private String packname;
	private int no;
	private String tstname;
	private int cost;
	private String description;
	
	
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPackageid() {
		return packageid;
	}
	public void setPackageid(String packageid) {
		this.packageid = packageid;
	}
	public String getPackname() {
		return packname;
	}
	public void setPackname(String packname) {
		this.packname = packname;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTstname() {
		return tstname;
	}
	public void setTstname(String tstname) {
		this.tstname = tstname;
	}
	
	
	
}
