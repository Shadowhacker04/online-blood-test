package com.Project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Project.Entity.Tests;
import com.Project.Entity.Technicians;
import com.Project.Entity.Customer;
import com.Project.RepoImpl.AdminRepoImpl;

@Controller
public class AdminController {

	@Autowired
	AdminRepoImpl ar;
	
	@GetMapping("adminhome")
	public String adminLogin()
	{
		return "Admin/home";
	}
	
	@GetMapping("addtest")
	public String AddNewTest(Model m)
	{
		return "Admin/AddTest";
	}
	
	@PostMapping("addTest")
	public String addNewTest(@RequestParam String txttname,
			@RequestParam String txtCost,
			@RequestParam String txttType,
			@RequestParam String txttime, Model m) {

		Tests t = new Tests();
		t.setTname(txttname);
		t.setCost(Integer.parseInt(txtCost));
		t.settType(txttType);
		t.settTime(txttime);
		
		String res = ar.addTest(t);
		m.addAttribute("msg", res);
		return "Admin/viewTests";
	}
	

	@GetMapping("addtechnician")
	public String AddNewTechnician(Model m)
	{
		return "Admin/Addtechnician";
	}
	
	@PostMapping("addTechnician")
	public String addNewTechnician(@RequestParam String txtfirstName,
			@RequestParam String txtlastname,
			@RequestParam String txtemail,
			@RequestParam String txtgender,
			@RequestParam String txtPhnno,
			@RequestParam String txttiming, Model m) {
			
			Technicians tech = new Technicians();
			tech.setFirstname(txtfirstName);
			tech.setLastname(txtlastname);
			tech.setEmail(txtemail);
			tech.setGender(txtgender);
			tech.setPhnNo(txtPhnno);
			tech.setTime(txttiming);
	
			String res = ar.addTechnician(tech);
			m.addAttribute("msg", res);
			return "Admin/viewTechnicians";
	}
	
	@GetMapping("viewTechnicians")
	public String getTechnician(Model m) {
		List<Technicians> info = ar.showAllTechnicians();
		m.addAttribute("techlist", info);
		return "Admin/viewTechnicians";
	}
	
	/*@GetMapping("viewRequests")
	public String getRequest(Model m) {
		List<Requests> info = ar.showAllRequests();
		m.addAttribute("tlist", info);
		return "Admin/viewRequests";
	}*/
	
	@GetMapping("viewTests")
	public String getTest(Model m) {
		List<Tests> info = ar.showAllTests();
		m.addAttribute("tlist", info);
		return "Admin/viewTests";
	}
	
	@GetMapping("viewcustomer")
	public String getCustomer(Model m) {
		List<Customer> info = ar.showAllCustomer();
		m.addAttribute("clist", info);
		return "Admin/viewCustomer";
	}
}
