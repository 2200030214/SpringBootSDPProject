package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.service.CitizenService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class CitizenController {
	@Autowired
	private CitizenService citizenService;
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("citizenreg")
	public ModelAndView customerreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("citizenreg");
		return mv;
	}
	
	@GetMapping("citizenhome")
	public ModelAndView citizenhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("citizenhome");
		return mv;
	}
	
	@GetMapping("citizenprofile")
	public ModelAndView citizenprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("citizenprofile");
		return mv;
	}
	
	@PostMapping("insertcitizen")
	public ModelAndView insertcitizen(HttpServletRequest request)
	{
		//take the data from HTML to middle
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		String password=request.getParameter("cpwd");
		
		Citizen citizen=new Citizen();
		citizen.setName(name);
		citizen.setGender(gender);
		citizen.setDateofbirth(dob);
		citizen.setEmail(email);
		citizen.setLocation(location);
		citizen.setContact(contact);
		citizen.setPassword(password);
		
		String message=citizenService.citizenRegistration(citizen);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message", message);
		
		return mv;
	}
	
	@GetMapping("citizenlogin")
	public ModelAndView customerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("citizenlogin");
		return mv;
	}
	
	@PostMapping("checkcitizenlogin")
	public ModelAndView checkcitizenlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String cemail=request.getParameter("cemail");
		String cpwd=request.getParameter("cpwd");
		
		Citizen citizen=citizenService.checkCitizenLogin(cemail, cpwd);
		
		if(citizen!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("citizen", citizen);// citizen is session object
			
			mv.setViewName("citizenhome");//login success
		}
		else
		{
			mv.setViewName("citizenlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("updateprofile")
	public ModelAndView updateprofile()
	{
		ModelAndView mv=new ModelAndView("updateprofile");
		
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		int id=Integer.parseInt(request.getParameter("cid"));
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob=request.getParameter("cdob");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		String password=request.getParameter("cpwd");
		
		Citizen citizen=new Citizen();
		citizen.setId(id);
		citizen.setName(name);
		citizen.setGender(gender);
		citizen.setDateofbirth(dob);
		citizen.setLocation(location);
		citizen.setContact(contact);
		citizen.setPassword(password);
		
		citizenService.updateCitizen(citizen);
		
		//create new session variable for Citizen
		
		mv.setViewName("citizenlogin");
		
		return mv;
	}
	
	@GetMapping("citizenlogout")
	public ModelAndView citizenlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("citizenlogout");
		return mv;
	}

}
