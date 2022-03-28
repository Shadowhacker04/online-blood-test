package com.Project.Repo;

import java.util.List;

import com.Project.Entity.CusRequests;
import com.Project.Entity.CusTech;
import com.Project.Entity.Technician;

public interface TechnicianRepo {

	Technician getTechnicianByEmail(String email);

	boolean changePassword(String email, String passindata, String oldpass, String newpass, String conpass);
	public List<CusTech> showAllRequest();
	
	public List<CusRequests> showallrequests(String techname);
	public String rejectRequestById(String reqid);
	public String accept(String name, CusRequests cr);
	public String custechupdate(String opinion, CusRequests cr);
}
