package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Farmer;

public interface AdminService {
	public List<Farmer> ViewAllFarmers();
	public Admin checkadminlogin(String uname,String pwd);
	public String deletefarmer(int eid);
	public long farmercount();
}
