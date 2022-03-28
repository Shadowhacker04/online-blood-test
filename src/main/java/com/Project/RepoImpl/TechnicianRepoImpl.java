package com.Project.RepoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.Project.Entity.CusRequests;
import com.Project.Entity.CusTech;
import com.Project.Entity.Technician;
import com.Project.Repo.TechnicianRepo;

@Component
public class TechnicianRepoImpl implements TechnicianRepo{

	
	@Autowired
	JdbcTemplate jt;
	
	private String email;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public Technician getTechnicianByEmail(String email) {
		
		String sql = "Select * from Technician where email = ?";
		Technician tech = null;
		try {
			 tech = (Technician) jt.queryForObject(sql,new Object[] {email},new BeanPropertyRowMapper(Technician.class));
			return tech;
		}
		catch(Exception ex) {
			tech = null;
		}
		return null;
	}

	@Override
	public boolean changePassword(String email, String passindata, String oldpass, String newpass, String conpass) {
		
		String sql = "Update Technician set passwrd = ? where email = ?";
		try {
			if(passindata.equals(oldpass) && newpass.equals(conpass)) {
				int r = jt.update(sql, new Object[] {newpass, email});
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
	
	@SuppressWarnings("deprecation")
	@Override
	public List<CusRequests> showallrequests(String techname) {
		String sql = "Select * from requests where adminassign = ?";
		@SuppressWarnings({ "unchecked", "rawtypes" })
		List<CusRequests> req = jt.query(sql, new Object[] {techname}, new BeanPropertyRowMapper(CusRequests.class));
		return req;
	}

	@Override
	public String rejectRequestById(String reqid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CusTech> showAllRequest() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String accept(String name, CusRequests cr) {
		String sql = "update requests set assigned = ? where requestid = ?";
		int	inf = jt.update(sql, new Object[] {name, cr.getRequestid()});
		if (inf > 1)
			return "Success";
		else
			return "Failure";
	}

	
	

	@Override
	public String custechupdate(String opinion, CusRequests cr) {
		String sql = "Update CusTech set Techopinion = ? where requestid = ?";
		int	inf = jt.update(sql, new Object[] {opinion, cr.getRequestid()});
		if (inf > 1)
			return "Success";
		else
			return "Failure";
	}

}
