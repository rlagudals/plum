package com.plum.cmn.controller.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plum.cmn.controller.ILoginController;
import com.plum.cmn.model.TB0000;
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
	public @ResponseBody TB0000 loginProc(@RequestBody TB0000 inputTB0000) { 

		TB0000 returnTB0000 = new TB0000();

		
		log.debug("loginProc 호출");
		log.debug("인풋파라메터 " + inputTB0000.toString());
		
		returnTB0000 = loginService.loginProc(inputTB0000);

		if (returnTB0000 != null) {
			
			returnTB0000.setSccYn("Y");
			returnTB0000.setResultMsg("로그인성공");
			
		} else {
			returnTB0000 = new TB0000();
			returnTB0000.setSccYn("N");
			returnTB0000.setResultMsg("로그인실패");
		}

		return returnTB0000;
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
