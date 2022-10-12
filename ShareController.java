package com.gl.crudApplication.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.gl.crudApplication.bean.CompanyShare;
import com.gl.crudApplication.service.ShareService;

@RestController
public class ShareController {
	@Autowired
	private ShareService service;
	
	@GetMapping("/index")
	public ModelAndView showIndexpage() {

		ModelAndView mv=new ModelAndView("index");
		List<CompanyShare> companyList=service.findAll();
		mv.addObject("companyRecord",companyList);
		return mv;
	}

	@GetMapping("/company-entry")
	public ModelAndView showCompanyEntrypage() {
		CompanyShare company =new CompanyShare();
		ModelAndView mv=new ModelAndView("companyEntryPage");
		mv.addObject("companyRecord",company);
		return mv;
	}
	
	@PostMapping("/company")
	public ModelAndView saveNewCompany(@ModelAttribute("companyRecord") CompanyShare company) {
		long id=service.genrateCompanyId();
		System.out.println(id);
		company.setCompanyId(id);
		service.save(company);	
		return new ModelAndView("redirect:/index");
	}
}