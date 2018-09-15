package com.plum.cmn.controller.impl;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plum.cmn.controller.ICmnController;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class CmnController implements ICmnController {

//	@Autowired
//	private CmnService cmnService;

	// jsp 페이지 이동을 위한 페이지 컨트롤러
	@Override
	public @ResponseBody HashMap<String, String> pageMove(@RequestBody HashMap<String, String> inJson) {

		/*
		 * log.debug("페이지 이동"); log.debug(CmnUtil.toJson(inJson));
		 */

		HashMap<String, String> returnMap = new HashMap<String, String>();
		String url = ""; //WorksCmnConst.BLANK;

		// 유효성 검사
		if (inJson.isEmpty() || inJson == null) {
			returnMap.put("Msg", "data is null");
			return returnMap;
		} else {
			url = inJson.get("url");
			returnMap.put("url", "/jsp/" + url + ".jsp");
		}

		returnMap.put("empNo", inJson.get("empNo"));

		return returnMap;

	}

	@Override
	public String pageMove(@RequestParam String pn) {
		log.debug("111111111111111111111111111111111");
		// TODO Auto-generated method stub
		return pn;
	}

	@Override
	public String index() {
		
		return "/index.jsp";
	}

}
