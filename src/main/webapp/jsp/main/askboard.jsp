<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<%@include file="./header.jsp" %>
<script type="text/javascript">

$(document).ready(function () {

	// 조회
	search();	
});

function search() {

};		
</script>
<div style="height:10px;"></div>
<div>
	<table>
		<tr height="10" rowspan="17"></tr> 
		<tr>
			<td><label>검색</label></td>
			<td width="20"></td>
			<td><input type="text" id="txtEmpNm"></td>
			<td width="18"></td>		
			<td><button onclick="search();" class="btn btn-primary">조회</button></td>
		</tr>
		<tr height="7" rowspan="17"></tr>
	</table>
</div>
<div style="height:10px;"></div>
<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="width:100%; height:600px;"></div>
</html>