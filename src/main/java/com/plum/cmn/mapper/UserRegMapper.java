package com.plum.cmn.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.plum.cmn.model.TB0000;

@Mapper
public interface UserRegMapper {

	// 회원가입
	public int insertUserInfo(TB0000 inputTB0000);
	
	// 중복 아이디 체크
	public TB0000 getIdCheck(TB0000 inputId);
}
