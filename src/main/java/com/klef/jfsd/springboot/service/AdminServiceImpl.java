package com.klef.jfsd.springboot.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private CitizenRepository citizenRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	
	@Override
	public List<Citizen> viewAllCitizens() {
		return citizenRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public long citizencount() {
		
		return citizenRepository.count();
	}

	@Override
	public String deleteCitizen(int id) {
		citizenRepository.deleteById(id);
		return "Citizen Deleted Successfully";
	}

	@Override
	public Citizen displayCitizenByID(int id) {
		return citizenRepository.findById(id).get();
	}

	@Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "Product Added Successfully";
	}

	@Override
	public List<Product> viewAllProducts() {
		
		return productRepository.findAll();
	}

	@Override
	public Product displayProductById(int pid) {
		return productRepository.findById(pid).get();
	}

}
