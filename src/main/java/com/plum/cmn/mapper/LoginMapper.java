package com.plum.cmn.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.plum.cmn.model.*;

@Mapper
public interface LoginMapper {
	
	// 로그인
	public UserLoginInfo getLoginAuth(UserLoginInfo userLoginInfo);
}
