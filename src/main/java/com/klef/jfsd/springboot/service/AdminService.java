package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Product;

public interface AdminService 
{
	public List<Citizen> viewAllCitizens();
	public Admin checkAdminLogin(String uname,String pwd);
	public long citizencount();
	
	public String deleteCitizen(int id);
	public Citizen displayCitizenByID(int id);
	
	//Image upload & display operations
	
	public String addProduct(Product product);
	public List<Product> viewAllProducts();
	public Product displayProductById(int pid);
	
}
