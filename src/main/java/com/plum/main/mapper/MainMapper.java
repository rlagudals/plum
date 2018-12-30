package com.plum.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.plum.main.model.TBI1000;
import com.plum.main.model.TBI2000;
import com.plum.main.model.TBI3000;
import com.plum.main.model.TBI4000;

@Mapper
public interface MainMapper {
	
	// 로그인
	public List<TBI1000> selectSample(TBI1000 inputTBI1000);

	// 학력조회
	public List<TBI2000> selectLvlEdu(TBI2000 inputTBI2000);
	
	// 프로필 조회
	public List<TBI3000> selectProfile(TBI3000 inputTBI3000);
	
	// 자격증 조회
    public List<TBI4000> selectCertf(TBI4000 inputTBI4000);
}
