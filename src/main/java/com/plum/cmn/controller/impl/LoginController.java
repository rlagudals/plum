package com.plum.cmn.controller.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plum.cmn.controller.ILoginController;
import com.plum.cmn.model.*;
import com.plum.cmn.service.LoginService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class LoginController implements ILoginController {

	@Autowired
	LoginService loginService;

	@Override
	public String index() {

		log.debug("인덱스");

		return "/common/index.jsp";
	}
	
	@Override
	public String login() {

		log.debug("----> 로그인 화면");

		return "/common/login.jsp";
	}

	@Override
	public @ResponseBody UserLoginInfo loginProc(@RequestBody UserLoginInfo userInfo) { 

		UserLoginInfo returnUserInfo = new UserLoginInfo();
		
		log.debug("loginProc 호출");
		
		returnUserInfo = loginService.loginProc(userInfo);

		if (returnUserInfo != null) {
			
			returnUserInfo.setSccYn("Y");
			returnUserInfo.setResultMsg("로그인성공");
			
		} else {
			returnUserInfo = new UserLoginInfo();
			returnUserInfo.setSccYn("N");
			returnUserInfo.setResultMsg("로그인실패");
		}

		return returnUserInfo;
	}
	
	@Override
	public String singInPopUp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String singInUpRegUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String sameIdChecked() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findLoginId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String initPassword() {
		// TODO Auto-generated method stub
		return null;
	}
}
