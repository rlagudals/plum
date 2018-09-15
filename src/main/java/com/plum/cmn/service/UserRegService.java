package com.plum.cmn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plum.cmn.mapper.UserRegMapper;
import com.plum.cmn.model.TB0000;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class UserRegService {
	
	@Autowired
	private UserRegMapper userRegMapper;
	
	// 회원가입
	public int userRegProc(TB0000 insertData) {
		
		return userRegMapper.insertUserInfo(insertData);
	}
	
	// 중복 아이디 체크
	public TB0000 idCheckProc(TB0000 insertData) {
		
		return userRegMapper.getIdCheck(insertData);
	}
}
