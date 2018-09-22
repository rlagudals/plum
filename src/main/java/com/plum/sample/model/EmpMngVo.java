package com.plum.sample.model;

import java.util.List;

import lombok.Data;

@Data     
public class EmpMngVo {
	
	// 사원관리
	private TBI1000 tbi1000;
	
	private List<TBI1000> tbi1000List1;
	private List<TBI1000> tbi1000List2;	
	
	// 학력
	private TBI2000 tbi2000;
	
	private List<TBI2000> tbi2000List;
}
