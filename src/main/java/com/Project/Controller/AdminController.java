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
import com.Project.Entity.Packages;
import com.Project.Entity.Technician;
import com.Project.Entity.Tests;
import com.Project.Repo.CusRepo;
import com.Project.RepoImpl.AdminRepoImpl;

@Controller
public class AdminController {

	@Autowired
	AdminRepoImpl ar;
	
	@Autowired
	CusRepo ir;
	
	@GetMapping("adminhome")
	public String adminLogin()
	{
		return "Admin/home";
	}
	
	@GetMapping("addtest")
	public String addNewTest(Model m)
	{
		return "Admin/Addtest";
	}
	
	@GetMapping("viewtest")
	public String getTestList(Model m) {
		List<Tests> infoAll = ar.showAllTests();
		m.addAttribute("tlist", infoAll);
		return "Admin/ViewTest";
	}
	
	@GetMapping("viewtechnician")
	public String getTechnicianList(Model m) {
		List<Technician> infoAll = ar.showAllTechnicians();
		m.addAttribute("techlist", infoAll);
		return "Admin/ViewTechnician";
	}
	
	@GetMapping("viewcustomer")
	public String getCustomer(Model m) {
		List<CusRequests> requestAll = ar.showAllRequest();
		m.addAttribute("rlist", requestAll);
		return "Admin/ViewCustomer";

	}
	

	@GetMapping("addtechnician")
	public String addNewTechnician(Model m)
	{
		return "Admin/Addtechnician";
	}
	
	@GetMapping("viewrequest")
	public String getRequest(Model m) {
		
		List<Technician> techAll = ar.showAllTechnicians();
		List<CusRequests> requestAll = ar.showopened();
		m.addAttribute("techlist", techAll);
		m.addAttribute("rlist", requestAll);
		List<CusTech> custechAll = ar.showAllCusTechMap();
		m.addAttribute("rtlist", custechAll);

		return "Admin/ViewRequest";
	}
	
	@PostMapping("addtestprocess")
	public String aDDNewTest(@RequestParam("testname") String testname,
			@RequestParam("cost") String cost,
			@RequestParam("testtype") String testtype,
			@RequestParam("testtakentime") String testtakentime, Model m) {

		Tests t = new Tests();
		t.setTname(testname);
		t.setCost(Integer.parseInt(cost));
		t.settType(testtype);
		t.settTime(testtakentime);
		
		boolean res = ar.addTest(t);
		if(res==true) {
			return "redirect:/viewtest";
		}
		else {
			m.addAttribute("msg", "Failed to Add!..");
			return "addtest";
		}
		
	}
	

	@PostMapping("packsub")
	public String packsubmission(@RequestParam("packname") String packname, @RequestParam("packcost") String cost,
			@RequestParam("tests") String tests, @RequestParam("number") String number, 
			@RequestParam("id") String id, @RequestParam("desc") String desc,  Model m) {

		Packages pac = new Packages();
		pac.setPackageid(id);
		pac.setPackname(packname);
		pac.setNo(Integer.parseInt(number));
		pac.setTstname(tests);
		pac.setCost(Integer.parseInt(cost));
		pac.setDescription(desc);
		String res = ar.Addpack(pac);
		m.addAttribute("ews", res);
		
		return "redirect:adminhome";
	}

	
	
	@PostMapping("addtechnicianprocess")
	public String aDDNewTechnician(@RequestParam String firstname,@RequestParam String lastname,
			@RequestParam String email,@RequestParam String gender,
			@RequestParam String phnno,@RequestParam String time,
			@RequestParam String passwrd, Model m) {

		Technician tech=new Technician();
		tech.setFirstname(firstname);
		tech.setLastname(lastname);
		tech.setEmail(email);
		tech.setGender(gender);
		tech.setPhnNo(phnno);
		tech.setTime(time);
		tech.setPasswrd(passwrd);
		
		
		boolean res = ar.addTechnician(tech);
		m.addAttribute("msg", res);
		return "redirect:/viewtechnician";
	}
	

	
	@PostMapping("rtmap")
	public String mappingProcess(@RequestParam("reqid") String requestid, @RequestParam("firstname") String techassign, Model m) {
		
		boolean flag = ar.addCusTechMap(requestid, techassign);
		if(flag) {
			m.addAttribute("msg", "Technician successfully assigned...");
			List<Technician> techAll = ar.showAllTechnicians();
			List<CusRequests> requestAll = ar.showopened();
			
			m.addAttribute("rlist", requestAll);
			m.addAttribute("techlist", techAll);
			List<CusTech> custechAll = ar.showAllCusTechMap();
			m.addAttribute("rtlist", custechAll);
			return "Admin/ViewRequest";
		}
		else {
			m.addAttribute("msg","Request, Technician already mapped!...");
			List<Technician> techAll = ar.showAllTechnicians();
			List<CusRequests> requestAll = ar.showopened();
			m.addAttribute("rlist", requestAll);
			m.addAttribute("techlist", techAll);
			List<CusTech> custechAll = ar.showAllCusTechMap();
			m.addAttribute("rtlist", custechAll);
			return "Admin/ViewRequest";
		}
	}
	
	
	@GetMapping("active/{firstname}")
	public String activateTechnician(@PathVariable("firstname") String firstname, Model m) {
	Technician tech=new Technician();
	tech.setFirstname(firstname);
	String r = ar.activateTechnicianByName(firstname);
	if (r != null) {
	m.addAttribute("msg", r);
	List<Technician> techAll = ar.showAllTechnicians();
	m.addAttribute("techlist", techAll);
	return "Admin/ViewTechnician";
	} else {
	m.addAttribute("msg", "Failed!!");
	return "Admin/ViewTechnician";
	}
	}





	@GetMapping("deactivated/{firstname}")
	public String deactivateTechnician(@PathVariable("firstname") String firstname, Model m) {
	Technician tech = new Technician();
	tech.setFirstname(firstname);
	String r = ar.deactivateTechnicianByName(firstname);
	if (r != null) {
	m.addAttribute("msg", r);
	List<Technician> techAll = ar.showAllTechnicians();
	m.addAttribute("techlist", techAll);
	return "Admin/ViewTechnician";
	} else {
	m.addAttribute("msg", "Failed!!");
	return "Admin/ViewTechnician";
	}
	}

	@GetMapping("delete/{firstname}")
	public String deleteTechnician(@PathVariable("firstname") String firstname, Model m) {
	Technician tech = new Technician();
	tech.setFirstname(firstname);
	String r = ar.deleteTechnicianByName(firstname);
	if (r != null) {
	m.addAttribute("msg", r);
	List<Technician> techAll = ar.showAllTechnicians();
	m.addAttribute("techlist", techAll);
	return "Admin/ViewTechnician";
	} else {
	m.addAttribute("msg", "Failed!!");
	return "Admin/ViewTechnician";
	}
	}

	@GetMapping("addpack")
	public String demo(Model m)
	{
		List<Tests> test = ir.viewtests();
		m.addAttribute("test", test);
		return "/Admin/addpack";
		
	}
	
	
}
