package com.plum.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.plum.sample.model.TBI1000;
<<<<<<< HEAD
import com.plum.sample.model.TBI2000;
import com.plum.sample.model.TBI3000;
=======
>>>>>>> refs/remotes/origin/master

@Mapper
public interface SampleMapper {
	
	// 로그인
	public List<TBI1000> selectSample1(TBI1000 inputTBI1000);
<<<<<<< HEAD
	
	// 학력조회
	public List<TBI2000> selectLvlEdu(TBI2000 inputTBI2000);
	
	// 프로필 조회
	public List<TBI3000> selectProfile(TBI3000 inputTBI3000);
=======
>>>>>>> refs/remotes/origin/master
}
