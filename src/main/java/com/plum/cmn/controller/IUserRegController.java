package com.plum.cmn.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.plum.cmn.model.*;

public interface IUserRegController {
	
	@RequestMapping(value = "/userreg")
	public String userreg();
	
	// 회원가입 진행
	@RequestMapping(value = "/userRegProc")
	public UserLoginInfo userRegProc(UserLoginInfo userLoginInfo);
	
	// 중복 아이디 체크 진행
	@RequestMapping(value = "/idCheckProc")
	public UserLoginInfo idCheckProc(UserLoginInfo inputId);
}
