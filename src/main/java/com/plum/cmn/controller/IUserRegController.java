package com.plum.cmn.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plum.cmn.model.TB0000;

public interface IUserRegController {
	
	@RequestMapping(value = "/userreg")
	public String userreg();
	
	// 회원가입 진행
	@RequestMapping(value = "/userRegProc")
	public TB0000 userRegProc(TB0000 inputTB0000);
	
	// 중복 아이디 체크 진행
	@RequestMapping(value = "/idCheckProc")
	public TB0000 idCheckProc(TB0000 inputId);
}
