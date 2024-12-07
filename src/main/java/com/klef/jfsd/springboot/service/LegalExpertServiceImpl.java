package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.LegalExpert;
import com.klef.jfsd.springboot.repository.LegalExpertRepository;

@Service
public class LegalExpertServiceImpl implements LegalExpertService 
{
    @Autowired
    private LegalExpertRepository legalExpertRepository;

    @Override
    public String registerLegalExpert(LegalExpert legalExpert) {
        legalExpertRepository.save(legalExpert);
        return "Legal Expert registered successfully!";
    }

    @Override
    public LegalExpert checkLegalExpertLogin(String email, String password) {
        return legalExpertRepository.checkLegalExpertLogin(email, password);
    }

    @Override
    public List<LegalExpert> viewAllLegalExperts() {
        return legalExpertRepository.findAll();
    }
}
