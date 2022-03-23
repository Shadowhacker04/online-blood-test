package com.Project.RepoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.Project.Entity.Tests;
import com.Project.Entity.Customer;
import com.Project.Entity.Technicians;
import com.Project.Entity.Packages;
import com.Project.Entity.Request;
import com.Project.Repo.AdminRepo;

@Component
public class AdminRepoImpl implements AdminRepo{

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public String addTest(Tests t) {
		String sql = "Insert into Tests(TestName,Cost,TestType,TestTakenTime) values(?,?,?,?);";
		try
		{
			int r=jt.update(sql, new Object[] {t.getTname(),t.getCost(),t.gettType(),t.gettTime()});
			if(r>=1) {
				return "Test added successfully";
			}
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return "Error in input";
	}
	
	@Override
	public List<Tests> showAllTests() {
		String sql = "Select * from Tests;";
		List<Tests> info = jt.query(sql, new BeanPropertyRowMapper(Tests.class));
		return info;
	}
	
	
	
	@Override
	public String addTechnician(Technicians tech) {
		String sql = "Insert into Technicians(Firstname,lastname,email,gender,mobile,timing,passwrd) values(?,?,?,?,?,?,?);";
		if(tech.getFirstname().length()<3 || tech.getFirstname().length()>15)
		{
			return "Invalid input";
		}
		else {
			if(tech.getLastname().length()<3 || tech.getLastname().length()>15)
			{
				return "Invalid input";
			}
			else {
				String id=tech.getEmail();
				if(id.matches("^[a-zA-Z0-9+_.-]+@+(.+)$")==true)
				{
					tech.setEmail(id);
				}
				else {
					return "invalid input";
				}
			}
		}
		try
		{
			int r=jt.update(sql, new Object[] {tech.getFirstname(),tech.getLastname(),tech.getEmail(),tech.getGender(),tech.getPhnNo(),tech.getTime(),tech.getPasswrd()});
			if(r>=1) {
				return "Technician added successfully";
			}
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return "Error in input";
	}
	
	@Override
	public List<Technicians> showAllTechnicians() {
		String sql = "Select * from Technicians;";
		List<Technicians> infoAll = jt.query(sql, new BeanPropertyRowMapper(Technicians.class));
		return infoAll;
	}

	@Override
	public List<Customer> showAllCustomer() {
		String sql="select concat(\"c.first_name\",\"c.last_name\") as customer_name, c.email,c.DOB,c.gender,c.address,c.Phnno,r.count(r.requestId) from Customer c inner join request r;";
		List<Customer> infoAll=jt.query(sql, new BeanPropertyRowMapper(Customer.class));
		return infoAll;
	}

	@Override
	public boolean addPackage(Packages p) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Packages> showPackage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String ActivateTechnicianById(int techid) {
		Technicians tech=getTechnicianById(techid);
		if(tech.getStatus().equals("deactivated")){
			String sql="update Technicians set status=activated where TechId=?;";
			try {
				int res=jt.update(sql, new Object[] {techid});
				if(res>=1)
					return "Technician activated successfully";
				else
					return "activation failed";
			}
			catch(Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		else
		{
			return "Technician is already active";
		}
		return "failed";
	}

	@Override
	public String DeactivateTechnicianById(int techid) {
		Technicians tech=getTechnicianById(techid);
		if(tech.getStatus().equals("activated")){
			String sql="update Technicians set status=deactivated where TechId=?;";
			try {
				int res=jt.update(sql, new Object[] {techid});
				if(res>=1)
					return "Technician deactivated successfully";
				else
					return "deactivation failed";
			}
			catch(Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		else
		{
			return "Technician is already deactivated";
		}
		return "failed";
		
	}

	@Override
	public String DeleteTechnicianById(int techid) {
		Technicians tech=getTechnicianById(techid);
		if(tech.getStatus().equals("deactivated")){
			String sql="delete from Technicians where TechId=?;";
			try {
				int res=jt.update(sql, new Object[] {techid});
				if(res>=1)
					return "Technician deleted successfully";
				else
					return "failed";
			}
			catch(Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		else
		{
			return "Deactivate Technician to delete!";
		}
		return "failed";
	}

	@Override
	public Technicians getTechnicianById(int techid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Request> showAllRequests() {
		String sql = "Select * from request;";
		List<Request> info = jt.query(sql, new BeanPropertyRowMapper(Request.class));
		return info;
	}

	

	
	
	
}
