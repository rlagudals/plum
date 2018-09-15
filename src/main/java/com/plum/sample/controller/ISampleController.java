package com.plum.sample.controller;

import java.util.HashMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plum.sample.model.SampleVo;

public interface ISampleController {

	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */
	
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample(String pageno);

	// 사원리스트를 가져오기
	@RequestMapping(value = "/sample/sample1")
	public SampleVo sample1(SampleVo inVo);
}
