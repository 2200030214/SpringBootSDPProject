package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.repository.CitizenRepository;

@Service
public class CitizenServiceImpl implements CitizenService
{
	@Autowired
	private CitizenRepository citizenRepository;
	
	
	@Override
	public String citizenRegistration(Citizen citizen) {
		// TODO Auto-generated method stub
		citizenRepository.save(citizen);
		return "Citizen registered successfully";
	}


	@Override
	public Citizen checkCitizenLogin(String email, String password) {
		return citizenRepository.checkCitizenLogin(email, password);
	}


	@Override
	public String updateCitizen(Citizen citizen) {
		Citizen c=citizenRepository.findById(citizen.getId()).get();
		
		c.setContact(citizen.getContact());
		c.setDateofbirth(citizen.getDateofbirth());
		c.setGender(citizen.getGender());
		c.setLocation(citizen.getLocation());
		c.setName(citizen.getName());
		c.setPassword(citizen.getPassword());
		
		citizenRepository.save(c);
		
		return "Citizen Updated Successfully";
	}

	

}
