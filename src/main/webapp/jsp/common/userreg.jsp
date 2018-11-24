<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<style>
	div 
	{ 
		width:700px;
		height:300px;	
	}
</style>
<script type="text/javascript" src="/plum/js/common/jquery-1.12.3.min.js"></script>
<script>
$(document).ready(function(){
	
	$('#btnReg').click(function(){			
		
		var userNm = $('[id=txtUserNm]').val();
		var frontRegNo = $('[id=txtFrontRegNo]').val();
		var gender = $('[id=cboGender]').val();
		var loginId = $('[id=txtLoginId]').val();
		var loginPwd = $('[id=txtLoginPwd]').val();
		var email = $('[id=txtEmail]').val();
		var telNum = $('[id=txtTelNum]').val();
		
		var inputInfo = { "userNm" : userNm, "frontRegNo" : frontRegNo, "gender" : gender, 
				          "loginId" : loginId, "loginPwd" : loginPwd, "email" : email,
						  "telNum" : telNum };
	
		$.ajax({ 
			type : "POST",
			dataType : "json",
			contentType: 'application/json; charset=UTF-8', 
			url : "/userRegProc",
			data : JSON.stringify(inputInfo),
			success : function(data){

				if(data.sccYn == "Y"){
					alert(inputInfo.userNm + "님 회원가입이 완료되었습니다.");
				}else{
					alert("신규등록이 정상적으로 처리되지 않았습니다.");
				}
			},
			error : function(request,status,error){
				console.log("신규등록 에러");			
			}			
			
		});		
	});		
});

// ID 중복체크
function fun_idCheck(){	
		
	var loginId = $('[id=txtLoginId]').val();		
	var inputData = { "loginId" : loginId };

	 $.ajax({
			type : "POST",
			dataType : "json",
			contentType: 'application/json; charset=UTF-8', 
			url : "/idCheckProc",
			data : JSON.stringify(inputData),
			success : function(data){		
				console.log(data);
				
				if(data.sccYn == "Y"){
					alert(inputData.loginId + "는 사용 가능한 아이디 입니다.");
				}else{
					alert("중복된 아이디가 존재합니다. 아이디를 다시 설정해주세요.");
				}
			},
			error : function(request,status,error){
				console.log("에러");				
			}			
		});		
}

// 취소
function fun_regCancel(){
	alert("작성중인 내용이 삭제됩니다. 회원가입을 취소하시겠습니까?");
	location.href = "/plum/login";
}
</script>
<body>
<div>
	<table>
	<tr height="3"></tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">이름</td>
		<td><input type="text" id="txtUserNm"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">아이디</td>
		<td><input type="text" id="txtLoginId"></td>
		<td width="5"></td>
		<td><input type="button" id="btnIdCheck" onclick="fun_idCheck()" value="아이디 중복 체크"></td>
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">비밀번호</td>
		<td><input type="password" id="txtLoginPwd"></td>		
	</tr>
	<tr>
		<td><input type="button" id="btnReg" value="가입하기">&nbsp;</td>
		<td><input type="button" id="btnCancel" onclick="fun_regCancel()" value="&nbsp;&nbsp;&nbsp;취 소&nbsp;&nbsp;&nbsp;"></td>
	</tr>
	</table>
</div>
</body>
</html>