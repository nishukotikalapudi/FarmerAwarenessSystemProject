package com.klef.jfsd.springboot.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Article;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.repository.ArticleRepository;
import com.klef.jfsd.springboot.service.AdminService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private ArticleRepository articleRepository;
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		
		long count = adminService.farmercount();
		mv.addObject("count",count);
		return mv;
	}
	@GetMapping("viewallfarmers")
	  public ModelAndView viewallfarmers() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Farmer> farmerslist = adminService.ViewAllFarmers();
	    mv.setViewName("viewallfarmers");
	    mv.addObject("farmerslist", farmerslist);
	    return mv;
	  }
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		if(admin!=null) {
			mv.setViewName("adminhome");
			long count = adminService.farmercount();
			mv.addObject("count",count);
		}
		else {
			mv.setViewName("adminloginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	
	
	
	
	
	@GetMapping("deletefarmer")
	  public ModelAndView deletefarmer() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Farmer> farmerslist = adminService.ViewAllFarmers();
	    mv.setViewName("deletefarmer");
	    mv.addObject("farmerslist", farmerslist);
	    return mv;
	  }
	@GetMapping("delete")
		public String delete(@RequestParam("id")  int fid) {
			adminService.deletefarmer(fid);
			return "redirect:/deletefarmer";
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("publisharticle")
	public ModelAndView publisharticle() {
	    ModelAndView modelAndView = new ModelAndView("publisharticle");
	    modelAndView.setViewName("publisharticle");  // Adds the articles to the view
	    return modelAndView;  // Return both view and data
	}
	@PostMapping("publisharticle")
	public String publisharticle(@RequestParam("title") String title,
	                             @RequestParam("content") String content, 
	                             Model model) {
	    Article article = new Article();
	    article.setTitle(title);
	    article.setContent(content);
	    article.setPublishedDate(new Date());
	    articleRepository.save(article);
	    return "redirect:/adminhome";
	}


}
