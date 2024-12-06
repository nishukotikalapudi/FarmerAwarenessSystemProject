package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Article;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.repository.ArticleRepository;
import com.klef.jfsd.springboot.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class FarmerController {
	
	@Autowired
	private FarmerService farmerService;
	@Autowired
	private ArticleRepository articleRepository;
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("farmerreg")
	public ModelAndView farmerreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerreg");
		return mv;
	}
	@PostMapping("insertfarmer")
    public ModelAndView insertfarmer(HttpServletRequest request)
    {
       String name = request.getParameter("fname");
     String gender = request.getParameter("fgender");
     String dob = request.getParameter("fdob");
     String category = request.getParameter("fcategory");
     double income = Double.parseDouble(request.getParameter("fincome"));
     String location = request.getParameter("flocation");
     String email = request.getParameter("femail");
     String password = request.getParameter("fpwd");
     String contact = request.getParameter("fcontact");
     String status = "Registered";
     
       Farmer f = new Farmer();
       f.setName(name);
       f.setGender(gender);
       f.setCategory(category);
       f.setDateofbirth(dob);
       f.setIncome(income);
       f.setLocation(location);
       f.setEmail(email);
       f.setPassword(password);
       f.setContact(contact);
       f.setStatus(status);
       
       String msg = farmerService.FarmerRegistration(f);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("farmerlogin")
	public ModelAndView farmerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerlogin");
		return mv;
	}
	@GetMapping("farmerhome")
	public ModelAndView farmerhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerhome");
		return mv;
	}
	@GetMapping("farmerlogout")
	public ModelAndView farmerlogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("farmer");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerlogin");
		return mv;
	}
	@GetMapping("farmersessionfail")
	public ModelAndView farmersessionfail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmersessionfail");
		return mv;
	}
	@PostMapping("checkfarmerlogin")
	public ModelAndView checkfarmerlogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		String femail = request.getParameter("femail");
		String fpwd = request.getParameter("fpwd");
		
		Farmer f = farmerService.checkfarmerlogin(femail, fpwd);
		if(f!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("farmer", f);
			//employee is session variable
			
			mv.setViewName("farmerhome");
		}
		else {
			mv.setViewName("farmerloginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	@GetMapping("farmerprofile")
	public ModelAndView farmerprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerprofile");
		return mv;
	}
	@GetMapping("updatefarmer")
	public ModelAndView updatefarmer() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatefarmer");
		return mv;
	}
	@PostMapping("update")
    public ModelAndView update(HttpServletRequest request)
    {
       int id =Integer.parseInt(request.getParameter("fid"));
       String name = request.getParameter("fname");
     String gender = request.getParameter("fgender");
     String dob = request.getParameter("fdob");
     String category = request.getParameter("fcategory");
     double income = Double.parseDouble(request.getParameter("fincome"));
     String location = request.getParameter("flocation");
     String password = request.getParameter("fpwd");
     String contact = request.getParameter("fcontact");


       Farmer f = new Farmer();
       f.setId(id);
       f.setName(name);
       f.setGender(gender);
       f.setCategory(category);
       f.setDateofbirth(dob);
       f.setIncome(income);
       f.setLocation(location);
       f.setPassword(password);
       f.setContact(contact);
       
       String msg = farmerService.updatefarmer(f);
       
       ModelAndView mv = new ModelAndView("updatesuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
	@GetMapping("viewfarmersbycategory")
	public ModelAndView viewfarmersbycategory(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("viewfarmersbycategory");
		HttpSession session = request.getSession();
		Farmer f = (Farmer)session.getAttribute("farmer");
		List<Farmer>farmerslist = farmerService.displayFarmersByCategory(f.getCategory());
		mv.addObject("farmerslist",farmerslist);
		return mv;
	}
	@GetMapping("viewarticles")
	public ModelAndView viewarticles() {
	    List<Article> articles = articleRepository.findAll();
	    if (articles.isEmpty()) {
	        System.out.println("No articles found in the database."); // Debugging
	    }
	    ModelAndView modelAndView = new ModelAndView("viewarticles");
	    modelAndView.addObject("articles", articles);  
	    return modelAndView;  
	}

}
