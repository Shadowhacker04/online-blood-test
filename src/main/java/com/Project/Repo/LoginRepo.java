package com.Project.Repo;


import com.Project.Entity.*;


public interface LoginRepo {

	public boolean validateAdmin(String username, String password);
	public Technician getTechnicianByEmail(String email);
	public void changeTechnicianStatus(Technician tech);
	boolean validateTechnician(String username, String password);
	Customer getCustomerByEmail(String email);
	boolean validateCustomer(String username, String password);
	
}
