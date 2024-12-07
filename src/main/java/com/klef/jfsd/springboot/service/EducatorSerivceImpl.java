package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.repository.EducatorRepository;

@Service
public class EducatorSerivceImpl implements EducatorService{
  
  @Autowired
  private EducatorRepository educatorRepository;
  @Override
  public String EducatorRegistration(Educator educator) {
    educatorRepository.save(educator);
    
    return "Educator registered ";
  }
  @Override
  public Educator checkEducatorLogin(String email, String password) {
    return educatorRepository.checkEducatorLogin(email,password);
  }

}