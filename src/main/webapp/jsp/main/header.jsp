<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> -->

	<link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">
	
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-kernel/master/dist/ax5ui.all.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css"/>
	
	<link href="./resources/custom.css" rel="stylesheet" type="text/css">
	
	<script src="./js/common/common.js"></script>				
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.js"></script>
</head>

<script>
	// 선택된 메뉴에 따라 메인 타이틀이 변경
	function title() {
		
	}
</script>
<body>	
	<div>	
		<div>
			<div>
				<h2 href="#" onclick="common.temp('empmng');" class="">PLUM</h2>
			</div>
			<div class="col-xs-1 top-info"></div>
			<div class="col-xs-1"></div>
			<div class="col-xs-1"></div>
			<div class="col-xs-8 text-right logout">
				logout
			</div>
		</div>
		<div class="col-xs-2 left">
			<ul>
				<li style="line-height:28px; cursor:default;" onclick="common.temp('empmng');">사원관리</li>
				<li style="line-height:28px; cursor:default;" onclick="common.temp('lvledu');">학력관리</li>
				<li style="line-height:28px; cursor:default;" onclick="common.temp('certf');">자격증관리</li>
				<li style="line-height:28px; cursor:default;" onclick="common.temp('profile');">직원프로필</li>
				<li style="line-height:28px; cursor:default;" onclick="common.temp('askboard');">Q&A</li>
			</ul>
		</div>
	</div>
</body>
</html>