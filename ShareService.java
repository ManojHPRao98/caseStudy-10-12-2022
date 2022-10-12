package com.gl.crudApplication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.crudApplication.bean.CompanyShare;
import com.gl.crudApplication.repository.ShareRepository;


@Service
public class ShareService {
	
	@Autowired
	private ShareRepository repository;
	
	public void save(CompanyShare company) {
		repository.save(company);
	}
	public List<CompanyShare> findAll(){
		
		return repository.findAll();
		
	}
	public CompanyShare findById(Long Id) {

		return repository.getById(Id);
		
	}
	public Long genrateCompanyId() {
		Long val=repository.findMaxCompanyId();
		if (val==null) {
			val=(long) 1000001;
		}
		else
			val=val+1;
		return val;
	}
	public void delete(Long Id) {
		repository.deleteById(Id);;
	}
}