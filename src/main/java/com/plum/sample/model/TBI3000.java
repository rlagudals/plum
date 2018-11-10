package com.plum.sample.model;

import com.plum.cmn.model.CmnModel;

import lombok.Data;

@Data
public class TBI3000 extends CmnModel {
	
	private String userNm;
	private String empNm;
	private String compNm;
	private String clientCompNm;
	private String projTitle;
	private String stratDt;
	private String endDt;
	private String assignTask;
}
