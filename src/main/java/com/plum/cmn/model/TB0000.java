package com.plum.cmn.model;

import org.hibernate.validator.constraints.Length;
import org.springframework.beans.factory.annotation.Autowired;

import lombok.Data;

@Data
public class TB0000 extends CmnModel{
	
	private String loginId;
	private String loginPwd;
	private String userNm;
	private int frontRegNo;
	private String fstRegDttm;
}
