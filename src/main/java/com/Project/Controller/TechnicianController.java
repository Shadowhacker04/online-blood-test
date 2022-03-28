package com.Project.Controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Project.Entity.CusRequests;
import com.Project.Entity.CusTech;
import com.Project.Entity.Technician;
import com.Project.RepoImpl.TechnicianRepoImpl;

@Controller
public class TechnicianController {
	
	static String identify = null;
	static String get = "ok";
	
		@Autowired
		TechnicianRepoImpl tr;
		
		@GetMapping("changepassword")
		public String techpass() {
			return "Technician/ChangePassword";
		}

		@PostMapping("chngpassprocess")
		public String changePass(@RequestParam("email") String email, @RequestParam("oldpass") String oldpass, @RequestParam("newpass") String newpass, @RequestParam String conpass, Model m) {
				
			Technician tech = tr.getTechnicianByEmail(email);
			if(tech!=null) {
			System.out.println(tech.getFirstname());
			boolean ric = tr.changePassword(tech.getEmail(), tech.getPasswrd(), oldpass, newpass, conpass);
			if(ric==true) {
				m.addAttribute("msg", "Done!");
				return "Technician/ChangePassword";
			}
			else {
				m.addAttribute("msg", "incorrect info provided!");
				return "Technician/ChangePassword";
			}
			}
			else {
				m.addAttribute("msg", "incorrect info provided!");
				return "Technician/ChangePassword";
			}
		}
		
		@PostMapping("accept/{requestid}")	
		public String requestaccept(@PathVariable("requestid") String requestid , Model m) {
		CusRequests cr = new CusRequests();
		cr.setRequestid(requestid);
		tr.custechupdate("Accepted", cr);
		String st = tr.accept(identify, cr);
		if(st.equals("Failure"))
			m.addAttribute("msg", "Info Updated!..");
		else
			m.addAttribute("msg", "Error occured, try again!");
		return "redirect:/viewreq";
		}
		
		
		@PostMapping("reject/{requestid}")	
		public String requestreject(@PathVariable("requestid") String requestid , Model m) {
		CusRequests cr = new CusRequests();
		get = "stop";
		cr.setRequestid(requestid);
		tr.custechupdate("Rejected", cr);
		return "redirect:/viewreq";
		}
		

		@GetMapping("technicianhome")
		public String TechHome(Model m) {
		m.addAttribute("name", identify);
		return "Technician/home";
		}

		
		@GetMapping("viewreq")
		public String getRequestList(Model m) {
			List<CusRequests> infoAll = tr.showallrequests(identify);
			m.addAttribute("ideal", get);
			m.addAttribute("name", identify);
			m.addAttribute("rlist", infoAll);
			return "Technician/viewrequests";
		}

		@GetMapping("logtecout")
		public String techlogout() {
		identify = null;
		get = "ok";
		return "/index";
		}

}
