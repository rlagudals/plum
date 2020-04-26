package com.plum.cmn.controller;

import java.util.HashMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public interface ICmnController {

	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */
	@RequestMapping(value = "/page", method = RequestMethod.POST)
	public HashMap<String, String> pageMove(HashMap<String, String> inJson);

	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */
	@RequestMapping(value = "/pageNm")
	public String pageMove(String pn);
	
	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */
	@RequestMapping(value = "/index")
	public String index();

}
