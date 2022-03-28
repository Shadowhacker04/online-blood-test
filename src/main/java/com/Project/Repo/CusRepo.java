package com.Project.Repo;

import java.util.List;

import com.Project.Entity.CusRequests;
import com.Project.Entity.Customer;
import com.Project.Entity.Packages;
import com.Project.Entity.Tests;

public interface CusRepo {

	public String Addinfo(Customer inf);
	public List<CusRequests> showall(String customerid);
	public Customer Searchcus(String customerid);
	public String update(String customerid, Customer inf);
	public String requests(String status, CusRequests cr);
	public List<Tests> viewtests();
	public List<Tests> search(String type);
	public List<Packages> viewpack();
	public Tests Searchtest(String tname);
	public Packages Searchpack(String packname);
	public String booktest(CusRequests req);
	public int count(String customerid);
	public String updatePassword(String customerid, String newpass);
	public Customer Searchcusbyph(String phone);
}