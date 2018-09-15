package com.plum.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.plum.sample.model.TBI1000;

@Mapper
public interface SampleMapper {
	
	// 로그인
	public List<TBI1000> selectSample1(TBI1000 inputTBI1000);
}
