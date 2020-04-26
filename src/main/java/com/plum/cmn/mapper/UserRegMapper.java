package com.plum.cmn.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.plum.cmn.model.*;

@Mapper
public interface UserRegMapper {

	// 회원가입
	public int insertUserInfo(UserLoginInfo userLoginInfo);
	
	// 중복 아이디 체크
	public UserLoginInfo getIdCheck(UserLoginInfo inputId);
}
