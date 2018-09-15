package com.plum.sample.model;

import com.plum.cmn.model.CmnModel;

import lombok.Data;

@Data
public class TBI1000 extends CmnModel {

	private String loginId;
	private String userNm;
	private String empNo;
	private String addr;
	private String frontRegNo;
	private String gender;
	private String email;
	private String telNum;
	private String emerTelNum;
	private String entrDt;
	private String resingDt;
	private String deptCd;
	private String gradeCd;
	private String lvlEdu;
	private String major;
	private String marrYn;
	private String salClas;
	private String fstRegDttm;
	private String fstRgstEmpNo;
	private String lstChgDttm;
	private String lstChgEmpNo;

}
