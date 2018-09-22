package com.plum.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.plum.sample.model.TBI1000;
import com.plum.sample.model.TBI2000;

@Mapper
public interface SampleMapper {
	
	// 사원조회
	public List<TBI1000> selectSample1(TBI1000 inputTBI1000);
	
	// 학력조회
	public List<TBI2000> selectLvlEdu(TBI2000 inputTBI2000);
}
