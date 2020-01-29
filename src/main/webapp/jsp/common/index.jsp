<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>첫화면</title>
</head>
<!--<script type="text/javascript" src="/js/common/jquery-1.12.3.min.js">-->
<script type="text/javascript">

function fn_login() {	
	debugger;
	location.href = "/jsp/common/login.jsp";
}


</script>
<!-- 
<script>
	function fn_login() {	
		debugger;
		location.href = "/jsp/common/login.jsp";
	}
</script>
 -->
<body>
<table> 
	<tr>
		<td>
			<input type="button" value="로그인 화면 이동" onclick="javascript:fn_login();"></input>		
		</td>	
</table>
</body>
</html>