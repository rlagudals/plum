<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<script type="text/javascript" src="/js/common/jquery-1.12.3.min.js"></script>
<script>
$(document).ready(function(){
	
	$('#btnLogin').click(function(){	
		
		var loginId = $("[id=loginId]").val();
		var loginPwd = $("[id=loginPwd]").val();
		
		var inputData =  { "loginId" : loginId, "loginPwd" : loginPwd };
		
		// ILoginController.loginProc
		 $.ajax({
				type : "POST",
				dataType : "json",
				contentType: 'application/json; charset=UTF-8', 
				url : "/loginProc",
				data : JSON.stringify(inputData),
				success : function(data){		
					console.log(data);
					console.log(data.sccYn);
					console.log(data.resultMsg);
					
					if(data.sccYn == "Y"){
						alert(inputData.loginId + "�� ȯ���մϴ�");
					}else{
						alert("����ڰ� ���Ծȵ��ְų� ��й�ȣ�� �߸��Ǿ����ϴ�");
					}
				},
				error : function(request,status,error){
					console.log("����");				
				}			
			});		
	});		
});
	// ȸ������
	function fn_userReg() {
		console.log("fn_userReg()");
		location.href = "/jsp/common/userreg.jsp";
	}
</script>
<body>
<h1>Login</h1>
<div>
<table> 
	<tr>
		<td style="font-size:10pt; font-family:'����';">���̵�</td>
		<td><input type="text" id="loginId"></input></td>
	</tr>
	<tr>
		<td style="font-size:10pt; font-family:'����';">��й�ȣ</td>
		<td><input type="password" id="loginPwd"></input></td>
	</tr>
	<tr>
		<td><input type="button" id="btnLogin" value="�α���"/></input></td>
		<td><input type="button" value="ȸ������" onclick="fn_userReg();"></input></td>	
</table>
</div>
</body>
</html>