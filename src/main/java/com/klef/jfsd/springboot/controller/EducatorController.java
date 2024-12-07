package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.service.EducatorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class EducatorController 
{
  @Autowired
  private EducatorService educatorService;
  @GetMapping("/educatorHome")
  public ModelAndView home() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("Home");
    return mv;
  }
  @GetMapping("educatorRegistration")
  public ModelAndView educatorRegistration() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("educatorRegistration");
    return mv;
  }
  @GetMapping("educatorlogin")
  public ModelAndView educatorlogin() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("educatorlogin");
    return mv;
  }
  
  @PostMapping("inserteducator")
  public ModelAndView inserteducator(HttpServletRequest request) {
    //take the data from HTML to middle
      String name=request.getParameter("ename");
      String gender=request.getParameter("egender");
      String dob=request.getParameter("edob");
      String email=request.getParameter("eemail");
      String location=request.getParameter("elocation");
      String contact=request.getParameter("econtact");
      String password=request.getParameter("epwd");
      
      Educator educator=new Educator();
      educator.setName(name);
      educator.setGender(gender);
      educator.setDateofbirth(dob);
      educator.setEmail(email);
      educator.setLocation(location);
      educator.setContact(contact);
      educator.setPassword(password);
      
      String message=educatorService.EducatorRegistration(educator);
      
      ModelAndView mv=new ModelAndView();
      mv.setViewName("regsuccess");
      mv.addObject("message", message);
      
      return mv;
  }
  @PostMapping("checkeducatorlogin")
    public ModelAndView checkeducatorlogin(HttpServletRequest request)
    {
      ModelAndView mv=new ModelAndView();
      
      String eemail=request.getParameter("eemail");
      String epwd=request.getParameter("epwd");
      
      Educator educator=educatorService.checkEducatorLogin(eemail,epwd);
      
      if(educator!=null)
      {
        HttpSession session=request.getSession();
        session.setAttribute("educator", educator);// citizen is session object
        
        mv.setViewName("educatorhome");//login success
      }
      else
      {
        mv.setViewName("educatorlogin");
        mv.addObject("message","Login Failed");
      }
      return mv;
    }
}