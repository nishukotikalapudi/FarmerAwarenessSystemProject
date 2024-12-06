package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Farmer;

public interface FarmerService {
	
	public String FarmerRegistration(Farmer farmer);
	public Farmer checkfarmerlogin(String email,String pwd);
	public String updatefarmer(Farmer f);
	
	public List<Farmer> displayFarmersByCategory(String category);
}
