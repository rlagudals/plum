<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="./css/bootstrap.css">
	
	<link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-kernel/master/dist/ax5ui.all.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css"/>
	
	<script src="./js/common/common.js"></script>
	<script type="text/javascript" src="./js/common/bootstrap.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.js"></script>
</head>
<style>
body{
	margin : 0;
}

.nav-container {
	display: flex;
	flex-direction: row;
	width: 100%;
	margin: 0;
	padding: 0;
	background-color: darkslategrey;
	list-style-type: none;
}

.nav-item {
	padding: 15px;
	cursor: pointer;
}

.nav-item a {
	text-align: center;
	text-decoration: none;
	color: white;
}

.nav-item:nth-child(1) {
	width: 80px;
	background-color : lightseagreen;
}

.nav-item:hover {
	background-color: grey;	
}

.nav-container {
	position: fixed;
	top: 0;	
}

header {
	margin-top: 80px;
}
</style>
<body>
	<nav>
		<ul class="nav-container">
			<li class="nav-item"><p>PLUM</p></li>
			<li class="nav-item" onclick="common.temp('empmng');">사원관리</li>
			<li class="nav-item" onclick="common.temp('lvledu');">학력관리</li>
			<li class="nav-item" onclick="common.temp('certf');">자격증관리</li>
			<li class="nav-item" onclick="common.temp('profile');">프로필</li>
			<li class="nav-item" onclick="common.temp('askboard');">Q&A</li>
		</ul>
	</nav>
	<div style="height:80px;">
	</div>
</body>
</html>