package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="educator_table")
public class Educator {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name ="educator_id")
  private int id;
  @Column(name ="educator_name",nullable = false)
  private String name;
  @Column(name ="educator_gender",nullable = false)
  private String gender;
  @Column(name ="educator_dateofbirth",nullable = false)
  private String dateofbirth;
  @Column(name ="educator_email",nullable = false)
  private String email;
  @Column(name ="educator_password",nullable = false)
  private String password;
  @Column(name ="educator_location",nullable = false)
  private String location;
  @Column(name ="educator_contact",nullable = false,unique = true)
  private String contact;
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
  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }
  public String getDateofbirth() {
    return dateofbirth;
  }
  public void setDateofbirth(String dateofbirth) {
    this.dateofbirth = dateofbirth;
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
  public String getLocation() {
    return location;
  }
  public void setLocation(String location) {
    this.location = location;
  }
  public String getContact() {
    return contact;
  }
  public void setContact(String contact) {
    this.contact = contact;
  }
  

}