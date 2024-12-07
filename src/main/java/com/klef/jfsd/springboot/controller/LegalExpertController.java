package com.klef.jfsd.springboot.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.klef.jfsd.springboot.model.LegalExpert;
import com.klef.jfsd.springboot.service.LegalExpertService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LegalExpertController 
{
    @Autowired
    private LegalExpertService legalExpertService;

    @GetMapping("legalexpertreg")
    public String legalExpertRegistration() {
        return "legalexpertreg";
    }

    @PostMapping("insertlegalexpert")
    public String insertLegalExpert(HttpServletRequest request, Model model) {
        String name = request.getParameter("lname");
        String email = request.getParameter("lemail");
        String password = request.getParameter("lpwd");
        String specialization = request.getParameter("lspecialization");

        LegalExpert legalExpert = new LegalExpert();
        legalExpert.setName(name);
        legalExpert.setEmail(email);
        legalExpert.setPassword(password);
        legalExpert.setSpecialization(specialization);

        String message = legalExpertService.registerLegalExpert(legalExpert);
        model.addAttribute("message", message);

        return "regsuccess";
    }

    @GetMapping("legalexpertlogin")
    public String legalExpertLogin() {
        return "legalexpertlogin";
    }

    @PostMapping("checklegalexpertlogin")
    public String checkLegalExpertLogin(HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {
        String email = request.getParameter("lemail");
        String password = request.getParameter("lpwd");

        LegalExpert legalExpert = legalExpertService.checkLegalExpertLogin(email, password);

        if (legalExpert != null) {
            // Login successful, redirect to legalexperthome
            redirectAttributes.addFlashAttribute("legalExpert", legalExpert);
            return "redirect:/legalexperthome"; // Redirect to the home page after login
        } else {
            // Login failed, show an error message
            model.addAttribute("message", "Login Failed. Invalid credentials.");
            return "legalexpertlogin"; // Stay on the login page
        }
    }

    @GetMapping("legalexperthome")
    public String legalExpertHome() {
        return "legalexperthome"; // Display the home page after login
    }

    @GetMapping("viewalllegalexperts")
    public String viewAllLegalExperts(Model model) {
        List<LegalExpert> legalExperts = legalExpertService.viewAllLegalExperts();
        model.addAttribute("legalexperts", legalExperts);
        return "viewalllegalexperts";
    }
}
