package com.Project.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.Project.Controller.*;

import com.Project.Entity.Customer;
import com.Project.Entity.Technician;
import com.Project.Repo.CusRepo;
import com.Project.RepoImpl.LoginRepoImpl;


@Controller
public class LoginController {

	@Autowired
	LoginRepoImpl lr;
	
	@Autowired
	CusRepo ir;
	
	
	@PostMapping("login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String passwrd, @RequestParam("usertype") String usertype, Model m) {
		if(usertype.equalsIgnoreCase("admin")) {
			boolean res = lr.validateAdmin(username, passwrd);
			if(res) {
				return "redirect:/adminhome";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "/index";
			}
		}
		else if(usertype.equalsIgnoreCase("technician")) {
			boolean res = lr.validateTechnician(username, passwrd);
			if(res) {
				Technician tech = lr.getTechnicianByEmail(username);
				TechnicianController.identify = tech.getFirstname();
				return "redirect:/technicianhome";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "/index";
			}
		}
		
		else if(usertype.equalsIgnoreCase("customer")) {
			
			if(usertype.equalsIgnoreCase("customer")) {
				Customer inf = ir.Searchcus(username);
				if((inf!=null) && (passwrd.equals(inf.getPassword()))){
				//if(passwrd.equals(inf.getPassword())) {
					CustomerController.vari = username;
					return "redirect:home";
					}
				else {
					m.addAttribute("msg","Wrong Username / Password");
					return "/index";
				}
				}
				else {
					m.addAttribute("msg","Wrong Username / Password");
					return "/index";
				}
		}
		else {
			m.addAttribute("msg","Wrong Username / Password");
			return "/index";
		}
	}
		
}
