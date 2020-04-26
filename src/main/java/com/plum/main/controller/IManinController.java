package com.plum.main.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plum.main.model.PlumVo;

public interface IManinController {

	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(String pagenm);

	// 사원조회
	@RequestMapping(value = "/main/empmng")
	public PlumVo empmng(PlumVo inVo);
	
	// 학력조회
	@RequestMapping(value = "/main/lvledu")
	public PlumVo lvledu(PlumVo inVo);
	
	// 프로필 조회
	@RequestMapping(value = "/main/profile")
	public PlumVo profile(PlumVo inVo);
	
	// 자격증 조회
	@RequestMapping(value = "/main/certf")
	public PlumVo certf(PlumVo inVo);
}
