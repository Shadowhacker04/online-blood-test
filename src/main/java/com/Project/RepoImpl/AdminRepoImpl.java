package com.Project.RepoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.Project.Entity.CusRequests;
import com.Project.Entity.CusTech;
import com.Project.Entity.Customer;
import com.Project.Entity.Packages;
import com.Project.Entity.Technician;
import com.Project.Entity.Tests;
import com.Project.Repo.AdminRepo;
import com.Project.Repo.CusRepo;

@Component
public class AdminRepoImpl implements AdminRepo{
	
	@Autowired
	JdbcTemplate jt;

	@Override
	public boolean addTest(Tests t) {
		String sql = "insert into tests values(?,?,?,?)";
		try
		{
			int r=jt.update(sql, new Object[] {t.getTname(),t.getCost(),t.gettType(),t.gettTime()});
			if(r>=1) {
				return true;
			}
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return false;
	}

	@Override
	public List<Tests> showAllTests() {
		String sql = "select * from tests";
		try {
			List<Tests> info = jt.query(sql, new BeanPropertyRowMapper(Tests.class));
			return info;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public Tests getTestByName(String testname) {
		String sql="select*from Tests where TestName=?";
		try
		{
			Tests t = (Tests) jt.queryForObject(sql, new Object[] {testname}, new BeanPropertyRowMapper(Tests.class));
			return t;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}
	
	@Override
	public boolean addTechnician(Technician tech) {
		String sql = "insert into Technician(firstname,lastname,email,gender,phnno,time,passwrd,status) values(?,?,?,?,?,?,?,?);";
		try
		{
			int r=jt.update(sql, new Object[] {tech.getFirstname(),tech.getLastname(),tech.getEmail(),tech.getGender(),tech.getPhnNo(),tech.getTime(),tech.getPasswrd(),"Active"});
			if(r>=1) {
				return true;
			}
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return false;
	}

	@Override
	public List<Technician> showAllTechnicians() {
		String sql = "select*from Technician;";
		try {
			List<Technician> infoAll = jt.query(sql, new BeanPropertyRowMapper(Technician.class));
			return infoAll;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public Technician getTechnicianByName(String firstname) {
		String sql="select*from Technician where firstname=?";
		try
		{
			Technician tech = (Technician) jt.queryForObject(sql, new Object[] {firstname}, new BeanPropertyRowMapper(Technician.class));
			return tech;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public boolean addCusTechMap(String requestid, String techassign) {
		String sql1 = "Insert into CusTech(requestid,firstname) values(?,?)";
		String sql2 = "Update requests set adminassign = ? where requestid = ?";
		CusTech ct1= getMapRequest(requestid);
		CusTech ct2= getMapTechnician(techassign);
		try {
			if(ct1 == null && ct2 == null) {
				int r = jt.update(sql1, new Object[] {requestid ,techassign});
				jt.update(sql2, new Object[] {techassign, requestid});
				if(r>=1) {
					return true;
				}
				else {
					return false;
				}
			}
			else {
				return false;
			}
			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return false;
	}

	@Override
	public List<CusTech> showAllCusTechMap() {
		String sql = "Select * from CusTech;";
		List<CusTech> custechAll = jt.query(sql, new BeanPropertyRowMapper(CusTech.class));
		return custechAll;
	}

	@Override
	public CusTech getMapTechnician(String techassign) {
		String sql = "select * from CusTech where firstname = ?";
		try {
			
			CusTech ct = (CusTech) jt.queryForObject(sql, new Object[] { techassign}, new BeanPropertyRowMapper(CusTech.class));
			
			System.out.println(ct.getFirstname());
			return ct;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public CusTech getMapRequest(String requestid) {
		
		
		
		
		String sql = "select * from CusTech where requestid = ?";
		try {
			CusTech ct = (CusTech) jt.queryForObject(sql, new Object[] {requestid}, new BeanPropertyRowMapper(CusTech.class));
			return ct;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	
		
		return null;
	}

	public List<CusRequests> showAllRequest() {
		String sql = "Select * from requests;";
		List<CusRequests> reqAll = jt.query(sql, new BeanPropertyRowMapper(CusRequests.class));
		return reqAll;
	}
	
	public List<CusRequests> showopened() {
		String sql = "Select * from requests where status = ?";
		List<CusRequests> reqAll = jt.query(sql, new Object[] {"Open"}, new BeanPropertyRowMapper(CusRequests.class));
		return reqAll;
	}
	
	

	@Override
	public String activateTechnicianByName(String firstname) {
	Technician tech=getTechnicianByName(firstname);
	if(tech.getStatus().equals("deactivated")){
	String sql="update Technician set status='active' where firstname=?;";
	try {
	int res=jt.update(sql, new Object[] {firstname});
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
	public String deactivateTechnicianByName(String firstname) {
	Technician tech=getTechnicianByName(firstname);
	if(tech.getStatus().equals("active")){
	String sql="update Technician set status='deactivated' where firstname=?;";
	try {
	int res=jt.update(sql, new Object[] {firstname});
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
	public String deleteTechnicianByName(String firstname) {
	Technician tech=getTechnicianByName(firstname);
	if(tech.getStatus().equals("deactivated")){
	String sql="delete from Technician where firstname=?;";
	try {
	int res=jt.update(sql, new Object[] {firstname});
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
	public String Addpack(Packages pac) {
		String sql = "Insert into packages values(?,?,?,?,?,?)";
		int pack = jt.update(sql, new Object[] {pac.getPackageid(), pac.getPackname(), pac.getNo(), pac.getTstname(), pac.getCost(), pac.getDescription()});

		if (pack >= 1)
			return "Created!...";
		else
			return "Error Occured!...";
	
	}
	
}
