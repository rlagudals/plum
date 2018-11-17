<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<script type="text/javascript" src="/plum/js/common/jquery-1.12.3.min.js"></script>
<script src="./js/common/common.js"></script>
<script>
$(document).ready(function(){
	
	$("#btnLogin").click(function(){	
		
		var loginId = $("[id=loginId]").val();
		var loginPwd = $("[id=loginPwd]").val();
		
		var inputData =  { "loginId" : loginId, "loginPwd" : loginPwd };
		
		// ILoginController.loginProc
		 $.ajax({
				type : "POST",
				dataType : "json",
				contentType: 'application/json; charset=UTF-8', 
				url : "/plum/loginProc",
				data : JSON.stringify(inputData),
				success : function(data){		
					console.log(data);
					console.log(data.sccYn);
					console.log(data.resultMsg);
					
					if(data.sccYn == "Y"){
						alert(inputData.loginId + "님 환영합니다");
						common.pageMove("empmng");
					}else{
						alert("사용자가 가입안되있거나 비밀번호가 잘못되었습니다");
					}
				},
				error : function(request,status,error){
					console.log("에러");				
				},
			});		
	});		
});

// 회원가입
function fn_userReg() {
	location.href = "/plum/userreg";
}
</script>
<body>
<h1>Login</h1>
<div>
<table> 
	<tr>
		<td style="font-size:10pt; font-family:'돋움';">아이디</td>
		<td><input type="text" id="loginId"></input></td>
	</tr>
	<tr>
		<td style="font-size:10pt; font-family:'돋움';">비밀번호</td>
		<td><input type="password" id="loginPwd"></input></td>
	</tr>
	<tr>
		<td><input type="button" id="btnLogin" value="로그인"></input></td>
		<td><input type="button" id="btnUserReg" value="회원가입" onclick="fn_userReg();"></input></td>	
</table>
</div>
</body>
</html>