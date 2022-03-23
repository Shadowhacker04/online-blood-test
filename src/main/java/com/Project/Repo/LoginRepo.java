package com.Project.Repo;

import com.Project.Entity.Technicians;
import com.Project.Entity.Customer;

public interface LoginRepo {

	public boolean validateAdmin(String username, String password);
	public boolean validateTechnician(String email, String password);
	public boolean validateCustomer(String email, String password);
	public Technicians getTechnicianbyEmail(String email);
	public Technicians getTechnicianbyPassword(String passwrd);
	public Customer getCustomerbyEmail(String email);
	public Customer getCustomerbyPassword(String passwrd);

}
