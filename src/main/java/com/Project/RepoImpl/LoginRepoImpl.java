package com.Project.RepoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.Project.Entity.Technicians;
import com.Project.Entity.Customer;
import com.Project.Repo.LoginRepo;

@Component
public class LoginRepoImpl implements LoginRepo{

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public boolean validateAdmin(String username, String password) {
		if(username.equals("obtbsadmin")&&password.equals("obtbspasscode")) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public Technicians getTechnicianbyEmail(String email) {
		String sql = "Select * from Technicians where email = ?;";
		try {
			Technicians technician = (Technicians) jt.queryForObject(sql, new Object[] {email},new BeanPropertyRowMapper(Technicians.class));
			return technician;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public Technicians getTechnicianbyPassword(String passwrd) {
		String sql = "Select * from Technicians where passwrd = ?;";
		try {
			Technicians technician = (Technicians) jt.queryForObject(sql, new Object[] {passwrd},new BeanPropertyRowMapper(Technicians.class));
			return technician;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public Customer getCustomerbyEmail(String email) {
		String sql = "Select * from Customer where email = ?;";
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
	public Customer getCustomerbyPassword(String passwrd) {
		String sql = "Select * from Customer where passwrd = ?;";
		try {
			Customer customer = (Customer) jt.queryForObject(sql, new Object[] {passwrd},new BeanPropertyRowMapper(Customer.class));
			return customer;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}
	
	@Override
	public boolean validateTechnician(String email, String password) {
		Technicians tech = this.getTechnicianbyEmail(email);
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
	public boolean validateCustomer(String email, String password) {
		
		Customer customer = this.getCustomerbyEmail(email);
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
