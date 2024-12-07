package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="legalexpert_table")
public class LegalExpert 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="legalexpert_id")
    private int id;

    @Column(name="legalexpert_name", nullable=false, length=100)
    private String name;

    @Column(name="legalexpert_email", nullable=false, unique=true, length=100)
    private String email;

    @Column(name="legalexpert_password", nullable=false, length=100)
    private String password;

    @Column(name="legalexpert_specialization", nullable=false, length=100)
    private String specialization;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getSpecialization() {
        return specialization;
    }
    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }
}
