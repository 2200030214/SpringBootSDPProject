package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Educator;

public interface EducatorService {
  public String EducatorRegistration(Educator educator);
  public Educator checkEducatorLogin(String email,String password);
}