package com.plum.cmn.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plum.cmn.mapper.LoginMapper;
import com.plum.cmn.model.TB0000;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class LoginService {

	@Autowired
	private LoginMapper loginMapper;

	// 로그인 처리
	public TB0000 loginProc(TB0000 inputTB0000) {
		
		return loginMapper.getLoginAuth(inputTB0000);
	}	
}
