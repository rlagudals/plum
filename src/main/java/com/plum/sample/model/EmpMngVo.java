package com.plum.sample.model;

import java.util.List;

import lombok.Data;

@Data     
public class EmpMngVo {
	
	private TBI1000 tbi1000;
	private TBI2000 tbi2000;
	private TBI3000 tbi3000;
	
	private List<TBI1000> tbi1000List;
	private List<TBI2000> tbi2000List;
	private List<TBI3000> tbi3000List;
}
