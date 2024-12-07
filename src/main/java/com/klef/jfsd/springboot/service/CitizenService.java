package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Citizen;

public interface CitizenService 
{
	public String citizenRegistration(Citizen citizen);
	public Citizen checkCitizenLogin(String email,String password);
	
	public String updateCitizen(Citizen citizen);
}
