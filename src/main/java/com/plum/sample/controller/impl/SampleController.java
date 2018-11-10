package com.plum.sample.controller.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plum.sample.controller.ISampleController;
import com.plum.sample.model.EmpMngVo;
import com.plum.sample.model.TBI1000;
import com.plum.sample.service.SampleService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class SampleController implements ISampleController {

	@Autowired
	SampleService sampleService;
	
	
	@Override
	public String sample(@RequestParam String pageno) {

		return "/sample/sample" + pageno + ".jsp";
	}

	@Override
	public @ResponseBody EmpMngVo sample1( @RequestBody EmpMngVo inVo) {
		
		
		
		log.info(inVo.toString());
	
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI1000> list = new ArrayList<TBI1000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		list = sampleService.selectSample1(inVo.getTbi1000()); 
		
		log.info(list.toString());
		
		sampleVo.setTbi1000List1(list); 
		
		return sampleVo;
	}
<<<<<<< HEAD
	
	@Override
	public @ResponseBody EmpMngVo lvledu(@RequestBody EmpMngVo inVo) {
		
		log.info(inVo.toString());
	
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI2000> lvlEdulist = new ArrayList<TBI2000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		lvlEdulist = sampleService.selectLvlEdu(inVo.getTbi2000());
		
		log.info(lvlEdulist.toString());
		
		sampleVo.setTbi2000List(lvlEdulist); 
		
		return sampleVo;
	}
	
	@Override
	public @ResponseBody EmpMngVo profile(@RequestBody EmpMngVo inVo) {
		
		log.info(inVo.toString());
	
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI2000> proList = new ArrayList<TBI2000>();
		EmpMngVo sampleVo = new EmpMngVo();
		// 리스트가져와서 담음
		proList = sampleService.selectLvlEdu(inVo.getTbi2000());
		
		log.info(proList.toString());
		
		sampleVo.setTbi2000List(proList); 
		
		return sampleVo;
	}
=======

>>>>>>> refs/remotes/origin/master
}
