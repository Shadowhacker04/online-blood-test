package com.Project.Repo;

import java.util.List;

import com.Project.Entity.CusTech;
import com.Project.Entity.Packages;
import com.Project.Entity.Technician;
import com.Project.Entity.Tests;


public interface AdminRepo {
	
	public boolean addTest(Tests t);
	public List<Tests> showAllTests();
	public Tests getTestByName(String testname);
	
	public boolean addTechnician(Technician tech);
	public List<Technician> showAllTechnicians();
	public Technician getTechnicianByName(String firstname);
	
	public boolean addCusTechMap(String requestid, String techassign);
	public List<CusTech> showAllCusTechMap();
	public CusTech getMapTechnician(String techassign);
	public CusTech getMapRequest(String requestid);
	
	public String activateTechnicianByName(String firstname);
	public String deactivateTechnicianByName(String firstname);
	public String deleteTechnicianByName(String firstname);
	public String Addpack(Packages pac);
}
