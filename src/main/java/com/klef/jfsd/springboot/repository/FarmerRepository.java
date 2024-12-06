package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Farmer;
import java.util.List;


@Repository
public interface FarmerRepository extends JpaRepository<Farmer, Integer>{
	@Query("select f from Farmer f where f.email=?1 and f.password=?2")
	public Farmer checkfarmerlogin(String uname,String pwd);
	
	@Query("update Farmer f set f.status=?1 where f.id=?2 ")
	@Modifying
	@Transactional
	public int updatefarmerstatus(String status, int eid);
	
	@Query("delete from Farmer f where f.id=?1")
	@Modifying
	@Transactional
	public int deletefarmerbyid(int fid);
	
	
	public List<Farmer> findByCategory(String category);
	
}
