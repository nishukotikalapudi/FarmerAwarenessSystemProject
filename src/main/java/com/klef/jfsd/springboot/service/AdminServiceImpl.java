package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FarmerRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private FarmerRepository farmerRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Override
	public List<Farmer> ViewAllFarmers() {
		return farmerRepository.findAll();
	}
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}
	@Override
	public String deletefarmer(int eid) {
		
		farmerRepository.deleteById(eid);
		return "Deleted Successfully";
	}
	@Override
	public long farmercount() {
		// TODO Auto-generated method stub
		return farmerRepository.count();
	}

}
