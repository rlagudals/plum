<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
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
					alert(inputInfo.userNm + "�� ȸ�������� �Ϸ�Ǿ����ϴ�.");
				}else{
					alert("�űԵ���� ���������� ó������ �ʾҽ��ϴ�.");
				}
			},
			error : function(request,status,error){
				console.log("�űԵ�� ����");			
			}			
			
		});		
	});		
});

// ID �ߺ�üũ
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
					alert(inputData.loginId + "�� ��� ������ ���̵� �Դϴ�.");
				}else{
					alert("�ߺ��� ���̵� �����մϴ�. ���̵� �ٽ� �������ּ���.");
				}
			},
			error : function(request,status,error){
				console.log("����");				
			}			
		});		
}

// ���
function fun_regCancel(){
	alert("�ۼ����� ������ �����˴ϴ�. ȸ�������� ����Ͻðڽ��ϱ�?");
	location.href = "/jsp/common/login.jsp";
}
</script>
<body>
<div>
	<table>
	<tr height="3"></tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">�̸�</td>
		<td><input type="text" id="txtUserNm"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">���̵�</td>
		<td><input type="text" id="txtLoginId"></td>
		<td width="5"></td>
		<td><input type="button" id="btnIdCheck" onclick="fun_idCheck()" value="���̵� �ߺ� üũ"></td>
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">��й�ȣ</td>
		<td><input type="password" id="txtLoginPwd"></td>		
	</tr>
	<tr>
		<td><input type="button" id="btnReg" value="�����ϱ�">&nbsp;</td>
		<td><input type="button" id="btnCancel" onclick="fun_regCancel()" value="&nbsp;&nbsp;&nbsp;�� ��&nbsp;&nbsp;&nbsp;"></td>
	</tr>
	</table>
</div>
</body>
</html>