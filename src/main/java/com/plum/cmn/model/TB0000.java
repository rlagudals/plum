package com.plum.cmn.model;

import lombok.Data;

@Data
public class TB0000 extends CmnModel{
	
	private String loginId;
	private String loginPwd;
	private String userNm;
	private int frontRegNo;
	private String fstRegDttm;
}
