package com.plum.sample.model;

import com.plum.cmn.model.CmnModel;

import lombok.Data;

@Data
public class TBI2000 extends CmnModel {
	
	private String userNm;
	private String empNo;
	private String lvlEdu;
	private String major;
	private String doblMajor;
}
