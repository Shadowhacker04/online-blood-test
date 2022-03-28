package com.Project.RepoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.Project.Entity.*;
import com.Project.Repo.CusRepo;
@Component
public class CustomerRepoImpl implements CusRepo {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public String Addinfo(Customer inf) {
		
		String sql = "Insert into customer(customerid, firstname, lastname, password, emailid, dob, gender, address, mobileno, Q1, Q2, Q3) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		int r = jt.update(sql, new Object[] {inf.getCustomerid(), inf.getFirstname(), inf.getLastname(), inf.getPassword(), inf.getEmailid(), inf.getDob(), inf.getGender(), inf.getAddress(), inf.getMobileno(), inf.getQ1(), inf.getQ2(), inf.getQ3() });
		
		if (r > 1)
			return "Error, Try again later!..";
		else
			return "Thanks for Registering!. Note your ID: "+inf.getCustomerid();
	}
	
	
	@Override
	public String booktest(CusRequests req) {
		String sql = "Insert into requests(requestid, customerid, dateofrequest, name, cost, status) values(?,?,?,?,?,?)";
		int book = jt.update(sql, new Object[] {req.getRequestid(), req.getCustomerid(), req.getDateofrequest(), req.getName(), req.getCost(), req.getStatus()});
		if (book > 1)
			return "Error, Try again later!..";
		else
			return "Remember to mark the date on your calender!, Note your Request ID: "+req.getRequestid()+".";
	}
	

	@SuppressWarnings("deprecation")
	@Override
	public List<CusRequests> showall(String customerid) {
		String sql = "Select * from requests where customerid = ?";
		@SuppressWarnings({ "unchecked", "rawtypes" })
		List<CusRequests> req = jt.query(sql, new Object[] {customerid}, new BeanPropertyRowMapper(CusRequests.class));
		return req;
	}
	
	
	@SuppressWarnings("rawtypes")
	@Override
	public List<Tests> viewtests() {
		String sql = "Select * from tests";
		@SuppressWarnings("unchecked")
		List<Tests> test = jt.query(sql, new BeanPropertyRowMapper(Tests.class));
		return test;
	}
	
	@Override
	public List<Tests> search(String type) {
		String sql = "select * from tests where tType = ?";
		List<Tests> req = jt.query(sql, new Object[] {type}, new BeanPropertyRowMapper(Tests.class));
		return req;
	}
	
	
	@Override
	public List<Packages> viewpack() {
		String sql = "Select * from packages";
		@SuppressWarnings({ "unchecked", "rawtypes" })
		List<Packages> pack = jt.query(sql, new BeanPropertyRowMapper(Packages.class));
		return pack;
	}
	

	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public Customer Searchcus(String customerid) {
		String sql = "Select * from customer where customerid = ?";
		Customer inf=null;
		try {
			inf = (Customer)jt.queryForObject(sql, new Object[] {customerid}, new BeanPropertyRowMapper(Customer.class));
		}
		catch(Exception ex){
			inf=null;
		}
		return inf;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public Customer Searchcusbyph(String phone) {
		String sql = "Select * from customer where mobileno = ?";
		Customer inf=null;
		try {
			inf = (Customer)jt.queryForObject(sql, new Object[] {phone}, new BeanPropertyRowMapper(Customer.class));
		}
		catch(Exception ex){
			inf=null;
		}
		return inf;
	}
	
	
	
	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public Tests Searchtest(String tname) {

		String sql = "Select * from tests where tname = ?";
		Tests tst=null;
		try {
			tst = (Tests)jt.queryForObject(sql, new Object[] {tname}, new BeanPropertyRowMapper(Tests.class));
		}
		catch(Exception ex){
			tst=null;
		}
		return tst;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public Packages Searchpack(String packname) {
		String sql = "Select * from packages where packname = ?";
		Packages pac = null;
		try {
			
			pac = (Packages)jt.queryForObject(sql, new Object[] {packname}, new BeanPropertyRowMapper(Packages.class));
			
		}catch(Exception ex) {
			
			pac = null;
		}
		return pac;
	}


	public String updateform(String firstname, String lastname, String email, String comment) {
		
		String sql = "Insert into feedback values(?,?,?,?)";
		int r =jt.update(sql, new Object[] {firstname, lastname, email, comment});
		if (r >= 1)
			return "Thanks for Comment!";
		else
			return "Submission Failed";
	}
		
	


	@Override
	public String update(String customerid, Customer inf) {
		
		String sql = "update customer set mobileno = ?, firstname=?, lastname=?, emailid=?, dob=?, gender=?, Address=?, Q1=?, Q2=?, Q3=?  where customerid = ?";
		int rup = jt.update(sql, new Object[] {inf.getMobileno(), inf.getFirstname(), inf.getLastname(),  inf.getEmailid(), inf.getDob(), inf.getGender(), inf.getAddress(), inf.getQ1(), inf.getQ2(), inf.getQ3(), customerid });
		
		if (rup > 1)
			return "Success";
		else
			return "Failure";
	}
	
	
	@Override
	public String updatePassword(String customerid, String newpass) {
		String sql = "update customer set password = ? where customerid = ?";
		int	inf = jt.update(sql, new Object[] {newpass, customerid});
		if (inf > 1)
			return "Success";
		else
			return "Failure";
	}

	@Override
	public String requests(String status, CusRequests cr) {
		String sql = "update requests set status = ? where requestid = ?";
		int	inf = jt.update(sql, new Object[] {status, cr.getRequestid()});
		if (inf > 1)
			return "Success";
		else
			return "Failure";
	}


	@Override
	public int count(String customerid) {
		String sql = "SELECT count(*) FROM requests WHERE customerid = ?";
		@SuppressWarnings("deprecation")
		int count = jt.queryForObject(sql, new Object[] { customerid }, Integer.class);
		return count;
	}


	
	

}
