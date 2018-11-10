package com.plum.sample.controller;

import java.util.HashMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plum.sample.model.EmpMngVo;

public interface ISampleController {

	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */	
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample(String pagenm);
	
	// 사원리스트를 가져오기
	@RequestMapping(value = "/sample/empmng")
	public EmpMngVo empmng(EmpMngVo inVo);
	
	// 학력조회
	@RequestMapping(value = "/sample/lvledu")
	public EmpMngVo lvledu(EmpMngVo inVo);
	
	// 프로필 조회
	@RequestMapping(value = "/sample/profile")
	public EmpMngVo profile(EmpMngVo inVo);
}
