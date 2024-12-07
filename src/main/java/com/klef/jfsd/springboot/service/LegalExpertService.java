package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.LegalExpert;

public interface LegalExpertService 
{
    public String registerLegalExpert(LegalExpert legalExpert);
    public LegalExpert checkLegalExpertLogin(String email, String password);
    public List<LegalExpert> viewAllLegalExperts();
}
