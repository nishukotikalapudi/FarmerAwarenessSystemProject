package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.repository.FarmerRepository;

@Service
public class FarmerServiceImpl implements FarmerService{

	@Autowired
	private FarmerRepository farmerRepository;
	@Override
	public String FarmerRegistration(Farmer farmer) {
		farmerRepository.save(farmer);
		return "Farmer Registered Successfully";
	}
	@Override
	public Farmer checkfarmerlogin(String email, String pwd) {
		
		return farmerRepository.checkfarmerlogin(email, pwd);
	}
	@Override
	public String updatefarmer(Farmer f) {
		// TODO Auto-generated method stub
		Farmer farmer = farmerRepository.findById(f.getId()).get();
		farmer.setContact(f.getContact());
		farmer.setDateofbirth(f.getDateofbirth());
		farmer.setCategory(f.getCategory());
		farmer.setGender(f.getGender());
		farmer.setLocation(f.getLocation());
		farmer.setName(f.getName());
		farmer.setPassword(f.getPassword());
		farmer.setIncome(f.getIncome());
		
		farmerRepository.save(farmer);
		
		return "Farmer Updated Successfully";
	}
	@Override
	public List<Farmer> displayFarmersByCategory(String category) {
		// TODO Auto-generated method stub
		return farmerRepository.findByCategory(category);
	}

}
