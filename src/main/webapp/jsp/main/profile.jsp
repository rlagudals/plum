<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<%@include file="./header.jsp" %>
<script type="text/javascript">
//<![CDATA
var profileGrid = {};
//var gridPage = 0;
//var gridRow = 19;

$(document).ready(function () {

	ax5.ui.grid.formatter["nvl"] = function () {
		var data = this.value;
		if(data == null || data == "") {
			return '-';
		} else {
			return data;
		}		
	};
	
	/* 그리드 객체 생성 */
	profileGrid = new ax5.ui.grid();

	/* 그리드 설정 지정 */
	profileGrid.setConfig({
		
	    target: $('[data-ax5grid="profile-grid"]'),

        showLineNumber: false,
        showRowSelector: true,
        multipleSelect: false,
        lineNumberColumnWidth: 40,
        rowSelectorColumnWidth: 27,
        columnMinWidth : 160,
	    columns: [    	
	    			{key: "empNm", label: "<strong>사원번호</strong>", formatter: "nvl", align: "center"}, 
			    	{key: "empNm", label: "<strong>사원명</strong>", formatter: "nvl", align: "left"}, 
			    	{key: "compNm", label: "<strong>업체명</strong>", formatter: "nvl", align: "left"},          
			    	{key: "clientCompNm", label: "<strong>고객사명</strong>", formatter: "nvl", align: "left"},     
			    	{key: "projTitle", label: "<strong>프로젝트명</strong>", formatter: "nvl", align: "left"},
			    	{key: "assignTask", label: "<strong>담당업무</strong>", formatter: "nvl", align: "left"},
			    	{key: "stratDt", label: "<strong>시작일</strong>", formatter: "nvl", align: "left"},
			    	{key: "endDt", label: "<strong>종료일</strong>", formatter: "nvl", align: "left"}
			    	
        ],
        page: {
		            navigationItemCount: 9,
		            height: 30,
		            display: true,
		            firstIcon: '|<',
		            prevIcon: '<',
		            nextIcon: '>',
		            lastIcon: '>|',
		            onChange: function () {
		            	search(this.page.selectPage);
		            }
	    },
	    header: {
	        align: "center"
	    },
		body: { 
 			/*
			onDBLClick: function(){
 				common.pageMove("empmng/empinfo",this.list[this.dindex]);
 			},
 	 	    onClick: function(){
            
        	},
        	*/
		}
	});
	
	// 조회
	search();	
});

/* 인력 프로필 조회  */
function search() {
	
	var empMngVo = {};
	var tbi3000 = {};
	var empMngVoList = [];
	
	var sNo = $("[id=txtEmpNo]").val();
	var sNm = $("[id=txtEmpNm]").val();
	//tbi2000["gridPage"] = gridPage;
	//tbi2000["gridRow"] = gridRow;
	tbi3000["empNo"] = gridPage;
	tbi3000["userNm"] = gridRow;
	empMngVo["tbi3000"] = tbi3000;
	
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : "application/json",
		async : true,
		data : JSON.stringify(empMngVo),
		url : "/plum/main/profile",
		success : function(data) {
			profileGrid.setData(
					{
				        list: data.tbi3000List,
				        page: {
				            //currentPage: gridPage,
				            //pageSize: gridRow,
				            totalElements: data.tbi3000List[0].totCnt,
				            totalPages: data.tbi3000List[0].totPage
				        }
				    }
				);
		},
		error : function(request, status, error) {
			alert('인력 프로필 조회 에러');
		}
	});	
};		
</script>
<div style="height:10px;"></div>
<div>
	<table>
		<tr height="10" rowspan="17"></tr> 
		<tr>
			<td><label>사원번호</label></td>
			<td width="5"></td>
			<td><input type="text" id="txtEmpNo"></td>
			<td width="18"></td>		
			<td><label>사원명</label></td>
			<td width="5"></td>
			<td><input type="text" id="txtEmpNm"></td>
			<td width="18"></td>		
			<td><button onclick="search();">조회</button></td>
		</tr>
		<tr height="7" rowspan="17"></tr>
	</table>
</div>
<div style="height:10px;"></div>
<div data-ax5grid="profile-grid" data-ax5grid-config="{}" style="width:100%; height:600px;"></div>
</html>