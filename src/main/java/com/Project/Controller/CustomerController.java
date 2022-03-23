package com.Project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Project.Entity.CusRequests;
import com.Project.Entity.Customer;
import com.Project.Entity.Packages;
import com.Project.Entity.Tests;
import com.Project.Repo.CusRepo;


@Controller
public class CustomerController {
	
	static String vari = null;
	static String testname = null;
	static String packnam = null;

	@Autowired
	CusRepo ir;
	
	@GetMapping("/cusreg")
	public String Addinfo(Model m)
	{
		return "/customer/cusreg";
	}
	
	@PostMapping("regprocess")
	public String Addinfom(@RequestParam String firstname,@RequestParam String cusid,
	@RequestParam String lastname,@RequestParam String password, @RequestParam String email,
	@RequestParam String gender,@RequestParam String address,@RequestParam String month,
	@RequestParam String year,@RequestParam String day,@RequestParam Long mobile,
	@RequestParam String ansone,@RequestParam String anstwo,@RequestParam String ansthree,Model m) {
		
		String birth = year+"-"+month+"-"+day;
		Customer inf = new Customer();
		inf.setCustomerid(cusid);
		inf.setFirstname(firstname);
		inf.setLastname(lastname);
		inf.setPassword(password);
		inf.setEmailid(email);
		inf.setGender(gender);
		inf.setAddress(address);
		inf.setMobileno(String.valueOf(mobile));
		inf.setDob(birth);
		inf.setQ1(ansone);
		inf.setQ2(anstwo);
		inf.setQ3(ansthree);
		String res = ir.Addinfo(inf);
		m.addAttribute("msg", res);
		return "/customer/cusreg";
	}
	
	@GetMapping("/requests")
	public ModelAndView requests()
	{	
		if(vari!=null) {
		
		List<CusRequests> req = ir.showall(vari);
		ModelAndView m = new ModelAndView("/customer/requests");
		if(req != null) {
			Customer inf = ir.Searchcus(vari);
			String name = inf.getFirstname();
			m.addObject("req", req);
			m.addObject("name", name);
			
		}
		else {
			m.addObject("msg", "No requests made yet!...");
			
		}
		return m;
	}
	else {
		ModelAndView m = new ModelAndView("error");
		return m;
	}
}
	
	
	@GetMapping("reqtest")
	public ModelAndView requesttest(Model m)
	{
		Customer inf = ir.Searchcus(vari);
		String name = inf.getFirstname();
		List<Tests> test = ir.viewtests();
		List<Packages> pack = ir.viewpack();
		ModelAndView m1 = new ModelAndView("/customer/newreq");
		m1.addObject("test", test);
		m1.addObject("pack", pack);
		m1.addObject("msg", name);
		return m1;
		
	}
		
	
	@GetMapping("home")
	public String homepage(Model m)
	{
		testname = null;
		packnam = null;
		Customer inf = ir.Searchcus(vari);
		String name = inf.getFirstname();
		m.addAttribute("msg", name);
		return "/customer/homepage";
		
	}
	
	@GetMapping("modify")
	public String modify(Model m)
	{
		Customer inf = ir.Searchcus(vari);
		if(inf!=null)
		{
		
			String name = inf.getFirstname();
			m.addAttribute("msg", name);
			m.addAttribute("inf", inf);
			return "/customer/updatecus";
		}
		else
		{
			m.addAttribute("masg", "Enter legit info!...");
		}
		return "/customer/updatecus";
		
	}
	
	
	@GetMapping("profile")
	public String profile(Model m)
	{
		Customer inf = ir.Searchcus(vari);
		if(inf!=null)
		{
			String firstname = inf.getFirstname();
			String lastname = inf.getLastname();
			String gender = inf.getGender();
			String mobile = inf.getMobileno();
			String dob = inf.getDob();
			String adrs = inf.getAddress();
			String email = inf.getEmailid();
			m.addAttribute("fname", firstname);
			m.addAttribute("lname", lastname);
			m.addAttribute("gender", gender);
			m.addAttribute("msg", firstname);
			m.addAttribute("mobile", mobile);
			m.addAttribute("dob", dob);
			m.addAttribute("email", email);
			m.addAttribute("adrs", adrs);
			m.addAttribute("vari", vari);
			int count = ir.count(vari);
			m.addAttribute("count", count);
			return "/customer/profile";
		}
		else
		{
			return "/error";
		}
		
	}
	
	@PostMapping("update")
	public String Update(@RequestParam String firstname, @RequestParam String lastname, @RequestParam String email, @RequestParam String dob, @RequestParam String gender, @RequestParam String address,  
			@RequestParam String mobile, @RequestParam String ansone, @RequestParam String anstwo, @RequestParam String ansthree, Model m )
	{
		Customer inf = new Customer();
		inf.setFirstname(firstname);
		inf.setLastname(lastname);
		inf.setEmailid(email);
		inf.setDob(dob);
		inf.setGender(gender);
		inf.setAddress(address);
		inf.setMobileno(mobile);
		inf.setQ1(ansone);
		inf.setQ2(anstwo);
		inf.setQ3(ansthree);
		String st = ir.update(vari, inf);
		if(st.equals("Failure"))
			m.addAttribute("masg", "Info Updated!..");
		else
			m.addAttribute("masg", "Error occured, try again!");
		return "/customer/updatecus";		
	}
	

	@PostMapping("booktest")	
	public String booktest(@RequestParam("ideal") String reqid, @RequestParam("date") String date, Model m) {
		Tests tst = ir.Searchtest(testname);
		CusRequests req = new CusRequests();
		req.setRequestid(reqid);
		req.setDateofrequest(date);
		req.setCost(tst.getCost());
		req.setCustomerid(vari);
		req.setName(tst.getTname());
		req.setStatus("Open");
		String st = ir.booktest(req);
		m.addAttribute("msg", st);
		testname = null;
		return "/customer/homepage";
	}
	
	@PostMapping("bookpack")	
	public String bookpack(@RequestParam("idealp") String requid, @RequestParam("datep") String datep, Model m) {
		Packages pac = ir.Searchpack(packnam);
		CusRequests req = new CusRequests();
		req.setRequestid(requid);
		req.setDateofrequest(datep);
		req.setCost(pac.getCost());
		req.setCustomerid(vari);
		req.setName(pac.getPackname());
		req.setStatus("Open");
		String st = ir.booktest(req);
		m.addAttribute("msg", st);
		packnam = null;
		return "/customer/homepage";
	}
	
	
	
	@PostMapping("requests/{requestid}")	
	public String request(@PathVariable("requestid") String requestid , Model m) {
	CusRequests cr = new CusRequests();
	cr.setRequestid(requestid);
	String st = ir.requests("Closed", cr);
	if(st.equals("Failure"))
		m.addAttribute("msg", "Info Updated!..");
	else
		m.addAttribute("msg", "Error occured, try again!");
	return "redirect:/requests";
	}
	
	
	@GetMapping("confirm")
	public String confirm(Model m)
	{
		Tests tst = ir.Searchtest(testname);
		if(tst!=null)
		{
			Customer inf = ir.Searchcus(vari);
			String name = inf.getFirstname();
			String tname = tst.getTname();
			int tcost = tst.getCost();
			String tTime = tst.gettTime();
			m.addAttribute("tname", tname);
			m.addAttribute("tcost", tcost);
			m.addAttribute("tTime", tTime);
			m.addAttribute("msg", name);
			return "/customer/confirm";
		}
		else
		{
			return "/customer/broken";
		}
			
	}
	

	@PostMapping("proceed")
	public String chngpswrd(@RequestParam("password") String password, @RequestParam("newpassword") String newpassword, Model m)
	{
		Customer inf = ir.Searchcus(vari);
		
if((inf.getPassword()).equals(newpassword)) {
			
	m.addAttribute("error", "New password cannot be same as new!..");}
else {
	
	String name = inf.getFirstname();
	m.addAttribute("msg", name);
		if((inf.getPassword()).equals(password)) {
		String st =	ir.updatePassword(vari, newpassword);
			if(st.equals("Failure")) {
				m.addAttribute("error", "Info Updated!..");}
			else {
				m.addAttribute("error", "Error occured, try again!");
			return "/customer/paswrd";	}	
		}else {
			m.addAttribute("error", "Check the old password you have entered!");
		}}
		return "/customer/paswrd";
	}		
	
	
	
	
	@GetMapping("pconfirm")
	public String pconfirm(Model m)
	{
		Packages pac = ir.Searchpack(packnam);
		if(pac!=null)
		{
			Customer inf = ir.Searchcus(vari);
			String name = inf.getFirstname();
			String pname = pac.getPackname();
			long pcost = pac.getCost();
			String desc = pac.getDescription();
			int no = pac.getNo();
			String tests = pac.getTstname();
			m.addAttribute("pname", pname);
			m.addAttribute("pcost", pcost);
			m.addAttribute("no", no);
			m.addAttribute("tests", tests);
			m.addAttribute("desc", desc);
			m.addAttribute("msg", name);
			return "/customer/pconfirm";
		}
		else
		{
			return "/customer/broken";	
		}
		
	}
	
	
	@PostMapping("newreq/{tname}")
	public String requesttest(@PathVariable("tname") String tname , Model m) {
		
		testname = tname;
		
		return "redirect:/confirm";
		}
	
	@PostMapping("reqpack/{packname}")
	public String requestpack(@PathVariable("packname") String packname , Model m) {
		
		packnam = packname;
		
		return "redirect:/pconfirm";
		}
	
	
	
	@PostMapping("login")	
	public String login(@RequestParam("username") String uname, @RequestParam("password") String passwrd, @RequestParam("usertype") String usertype, Model m) {
		
		if(usertype.equalsIgnoreCase("customer")) {
			Customer inf = ir.Searchcus(uname);
			if((inf!=null) && (passwrd.equals(inf.getPassword()))){
			//if(passwrd.equals(inf.getPassword())) {
				vari = uname;
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
	
	
	
	@GetMapping("logout")
	public ModelAndView logout()
	{
		vari = null;
		ModelAndView m = new ModelAndView("/index");
		return m;
		
	}
	
	
	@GetMapping("broken")
	public String broken(Model m)
	{
		return "/customer/broken";
		
	}
	
	@GetMapping("feedback")
	public String feedback(Model m)
	{
		Customer inf = ir.Searchcus(vari);
		String name = inf.getFirstname();
		m.addAttribute("msg", name);
		return "/customer/feedback";
		
	}
	
	
	
	@GetMapping("paswrd")
	public String password(Model m)
	{
		
		Customer inf = ir.Searchcus(vari);
		String name = inf.getFirstname();
		m.addAttribute("msg", name);
		return "/customer/paswrd";
		
	}
	
	
	
}
