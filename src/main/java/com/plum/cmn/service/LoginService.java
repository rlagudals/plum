package com.plum.cmn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plum.cmn.mapper.LoginMapper;
import com.plum.cmn.model.*;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class LoginService {

	@Autowired
	private LoginMapper loginMapper;

	// 로그인 처리
	public UserLoginInfo loginProc(UserLoginInfo userLoginInfo) {
		
		return loginMapper.getLoginAuth(userLoginInfo);
	}	
}
