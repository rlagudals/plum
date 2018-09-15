package com.plum.cmn.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.plum.cmn.model.TB0000;

@Mapper
public interface LoginMapper {
	
	// 로그인
	public TB0000 getLoginAuth(TB0000 inputTB0000);
}
