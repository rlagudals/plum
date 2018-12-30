package com.plum.main.controller.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plum.main.controller.IManinController;
import com.plum.main.model.EmpMngVo;
import com.plum.main.model.TBI1000;
import com.plum.main.model.TBI2000;
import com.plum.main.model.TBI3000;
import com.plum.main.model.TBI4000;
import com.plum.main.service.MainService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class MainController implements IManinController {

	@Autowired
	MainService mainService;
		
	@Override
	public String main(@RequestParam String pagenm) {
		
		log.debug("===> page name : " + "/main/" + pagenm + ".jsp");
		return "/main/" + pagenm + ".jsp";
	}

	/*
	@Override	
	public @ResponseBody EmpMngVo sample(@RequestBody EmpMngVo inVo) {
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI1000> list = new ArrayList<TBI1000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		list = sampleService.selectSample(inVo.getTbi1000()); 
		
		log.info(list.toString());
		
		sampleVo.setTbi1000List(list); 
		
		return sampleVo;
	}
    */
	
	@Override
	public @ResponseBody EmpMngVo empmng(@RequestBody EmpMngVo inVo) {
		log.info(inVo.toString());
		
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI1000> empmngList = new ArrayList<TBI1000>();
		EmpMngVo empmng = new EmpMngVo();
		// 리스트가져와서 담음
		empmngList = mainService.selectLoginInfo(inVo.getTbi1000());
		
		log.info(empmngList.toString());
		
		empmng.setTbi1000List(empmngList); 
		
		return empmng;
	}
	
	@Override
	public @ResponseBody EmpMngVo lvledu(@RequestBody EmpMngVo inVo) {
		
		log.info(inVo.toString());
	
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI2000> lvlEdulist = new ArrayList<TBI2000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		lvlEdulist = mainService.selectLvlEdu(inVo.getTbi2000());
		
		log.info(lvlEdulist.toString());
		
		sampleVo.setTbi2000List(lvlEdulist); 
		
		return sampleVo;
	}
	
	@Override
	public @ResponseBody EmpMngVo profile(@RequestBody EmpMngVo inVo) {
		
		log.info(inVo.toString());
	
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI3000> proList = new ArrayList<TBI3000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		proList = mainService.selectProfile(inVo.getTbi3000());
		
		log.info(proList.toString());
		
		sampleVo.setTbi3000List(proList); 
		
		return sampleVo;
	}
	
	@Override
	public @ResponseBody EmpMngVo certf(@RequestBody EmpMngVo inVo) {
		
		log.info(inVo.toString());
	
		// 서비스 호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI4000> certfList = new ArrayList<TBI4000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		certfList = mainService.selectCertf(inVo.getTbi4000());
		
		log.info(certfList.toString());
		
		sampleVo.setTbi4000List(certfList); 
		
		return sampleVo;
	}
}
