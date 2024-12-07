package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.LegalExpert;

@Repository
public interface LegalExpertRepository extends JpaRepository<LegalExpert, Integer> 
{
    @Query("select l from LegalExpert l where l.email=?1 and l.password=?2")
    public LegalExpert checkLegalExpertLogin(String email, String password);
}
