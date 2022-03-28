package com.Project.RepoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.Project.Entity.Customer;
import com.Project.Entity.Technician;
import com.Project.Repo.LoginRepo;

@Component
public class LoginRepoImpl implements LoginRepo {

	@Autowired
	JdbcTemplate jt;

	@Override
	public boolean validateAdmin(String username, String password) {
		if(username.equals("obtbsadmin")&&password.equals("obtbsadmin")) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public Technician getTechnicianByEmail(String email) {
		String sql = "Select * from Technician where email = ?;";
		try {
			Technician tech = (Technician) jt.queryForObject(sql, new Object[] {email},new BeanPropertyRowMapper(Technician.class));
			return tech;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public void changeTechnicianStatus(Technician tech) {

		String status = "Active";
		String sql = "Update Technician set status = ? where emailId = ?;";
		try {
			int r = jt.update(sql, status, tech.getEmail());
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}

	}

	@Override
	public boolean validateTechnician(String username, String password) {
		Technician tech = this.getTechnicianByEmail(username);
		if(tech == null) {
			return false;
		}
		else {
			if(tech.getPasswrd().equals(password)) {
				
				return true;			
			}
			else {
				return false;
			}
				
		}
	}

	@Override
	public Customer getCustomerByEmail(String email) {
		String sql = "Select * from customer where emailid = ?;";
		try {
			Customer customer = (Customer) jt.queryForObject(sql, new Object[] {email},new BeanPropertyRowMapper(Customer.class));
			return customer;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public boolean validateCustomer(String username, String password) {
		Customer customer = this.getCustomerByEmail(username);
		if(customer == null) {
			return false;
		}
		else {
			if(customer.getPassword().equals(password)) {
				
				return true;			
			}
			else {
				return false;
			}
				
		}
	}


}
