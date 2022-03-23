package com.Project.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Project.Entity.Technicians;
import com.Project.Entity.Customer;
import com.Project.RepoImpl.LoginRepoImpl;

/**@Controller
public class LoginController {

	@Autowired
	LoginRepoImpl lr;
	
	
	@PostMapping("login")
	public String Login(@RequestParam String username, @RequestParam String password, @RequestParam String usertype, Model m) {
		if(usertype.equalsIgnoreCase("admin")) {
			boolean res = lr.validateAdmin(username, password);
			if(res) {
				return "Admin/home";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "login";
			}
		}
		else if(usertype.equalsIgnoreCase("technician")) {
			boolean res = lr.validateTechnician(username, password);
			if(res) {
				Technicians tech = lr.getTechnicianbyEmail(username);
				m.addAttribute("tech", tech);
				return "Technician/Homepage";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "Login/Loginpage";
			}
			
		}
		else if(usertype.equalsIgnoreCase("customer")) {
			boolean res = lr.validateCustomer(username, password);
			if(res) {
				Customer customer = lr.getCustomerbyEmail(username);
				m.addAttribute("customer", customer);
				return "Customer/Homepage";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "Login/Loginpage";
			}
		}
		else {
			m.addAttribute("msg","Wrong Username / Password");
			return "Login/Loginpage";
		}
		
	}
}**/
