<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<!-- <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> -->
	
		<link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">	
		<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-kernel/master/dist/ax5ui.all.css">
		<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css" />
		
		<link href="./resources/custom.css" rel="stylesheet" type="text/css">
		
		<script src="./js/common/common.js"></script>				
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.js"></script>
		<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.js"></script>

</head>
<script>
	// 선택된 메뉴에 따라 메인 타이틀이 변경
	function title() {
		
	}
</script>	
	<body>
	
		<div class="index">	
		<div class="col-xs-12 top">
			<div class="col-xs-1 top-brand">
				<a href="#" class="iteyes">PLUM</a>
			</div>
			<div class="col-xs-1 top-info">
<%-- 				${topinfo['emp_no']} / ${topinfo['emp_name']} --%>
			</div>
			<div class="col-xs-1"></div>
			<div class="col-xs-1"></div>
			<div class="col-xs-8 text-right logout">
				logout
			</div>
			
		</div>
		<div class="col-xs-2 left">
			<ul>
				<li onclick="common.sample('empmng');">사원관리</li>
				<li onclick="common.sample('lvledu');">학력관리</a></li>
				<li onclick="common.sample('certf');">자격증관리</a></li>
				<li onclick="common.sample('profile');">직원프로필</a></li>
			</ul>
		</div>
		
	</body>
</html>