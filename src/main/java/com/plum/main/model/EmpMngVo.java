package com.plum.main.model;

import java.util.List;

import lombok.Data;

@Data     
public class EmpMngVo {
	
	private TBI1000 tbi1000;
	private TBI2000 tbi2000;
	private TBI3000 tbi3000;
	private TBI4000 tbi4000;
	
	// 사원관리
	private List<TBI1000> tbi1000List;
	// 학력
	private List<TBI2000> tbi2000List;
	// 프로필
	private List<TBI3000> tbi3000List;
    // 자격증
	private List<TBI4000> tbi4000List;
}
