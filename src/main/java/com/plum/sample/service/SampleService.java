package com.plum.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plum.sample.mapper.SampleMapper;
import com.plum.sample.model.TBI1000;
import com.plum.sample.model.TBI2000;
import com.plum.sample.model.TBI3000;
import com.plum.sample.model.TBI4000;
import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class SampleService {

	@Autowired
	private SampleMapper sampleMapper;

	public List<TBI1000> selectSample(TBI1000 inputTBI1000) {
		
		return sampleMapper.selectSample(inputTBI1000);
	}	

	public List<TBI2000> selectLvlEdu(TBI2000 inputTBI2000) {
		
		return sampleMapper.selectLvlEdu(inputTBI2000);
	}	
	
	public List<TBI3000> selectProfile(TBI3000 inputTBI3000) {
		
		return sampleMapper.selectProfile(inputTBI3000);
	}	
	
	public List<TBI4000> selectCertf(TBI4000 inputTBI4000) {
		
		return sampleMapper.selectCertf(inputTBI4000);
	}	
}
