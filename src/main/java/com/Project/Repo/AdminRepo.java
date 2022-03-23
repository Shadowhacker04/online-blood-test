package com.Project.Repo;

import java.util.*;
import com.Project.Entity.Tests;
import com.Project.Entity.Technicians;
import com.Project.Entity.Customer;
import com.Project.Entity.Packages;
import com.Project.Entity.Request;

public interface AdminRepo {

	public String addTest(Tests t);
	public List<Tests> showAllTests();
	
	
	public String addTechnician(Technicians tech);
	public List<Technicians> showAllTechnicians();
	public Technicians getTechnicianById(int techid);
	
	public List<Request> showAllRequests();
	public List<Customer> showAllCustomer();
	
	public boolean addPackage(Packages p);
	public List<Packages> showPackage();
	
	public String ActivateTechnicianById(int techid);
	public String DeactivateTechnicianById(int techid);
	public String DeleteTechnicianById(int techid);

}
