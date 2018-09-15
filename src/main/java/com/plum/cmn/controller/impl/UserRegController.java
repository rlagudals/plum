package com.plum.cmn.controller.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plum.cmn.controller.ILoginController;
import com.plum.cmn.controller.IUserRegController;
import com.plum.cmn.model.TB0000;
import com.plum.cmn.service.LoginService;
import com.plum.cmn.service.UserRegService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class UserRegController implements IUserRegController {

	@Autowired
	UserRegService userRegService;

	@Override
	public String userreg() {

		return "/common/userreg.jsp";
	}

	// 회원가입
	@Override
	public @ResponseBody TB0000 userRegProc(@RequestBody TB0000 inputTB0000) {

		int insertCnt = 0;
		TB0000 returnNewInfo = new TB0000();

		log.debug("신규등록 데이터 " + inputTB0000.toString());

		// insert 쿼리실행
		insertCnt = userRegService.userRegProc(inputTB0000);
		log.info("insert 건수 => " + insertCnt);
		
		if (insertCnt > 0) {
			returnNewInfo.setUserNm(inputTB0000.getUserNm());
			returnNewInfo.setSccYn("Y");
			returnNewInfo.setResultMsg("insert 성공");

		} else {
			returnNewInfo.setSccYn("N");
			returnNewInfo.setResultMsg("insert 실패");
		}

		return returnNewInfo;
	}

	// 아이디 중복 체크
	@Override
	public @ResponseBody TB0000 idCheckProc(@RequestBody TB0000 inputId) {

		TB0000 reCheckId = new TB0000();
		
		log.debug("---> idCheckProc 호출 : " + inputId.toString());

		reCheckId = userRegService.idCheckProc(inputId);
		
		log.debug("-->★★★★★★★ controller : " + reCheckId);

		if (reCheckId == null) {
			
			reCheckId.setSccYn("Y");
			reCheckId.setResultMsg("중복된 아이디 없음");
			
		} else {
			
			reCheckId.setSccYn("N");
			reCheckId.setResultMsg("중복된 아이디 있음");
		}

		return reCheckId;
	}
}
