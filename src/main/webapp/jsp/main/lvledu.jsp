<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<%@include file="./header.jsp" %>
<script type="text/javascript">
//<![CDATA
var firstGrid = {};
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
	firstGrid = new ax5.ui.grid();

	/* 그리드 설정 지정 */
	firstGrid.setConfig({
		
	    target: $('[data-ax5grid="first-grid"]'),

        showLineNumber: false,
        showRowSelector: true,
        multipleSelect: false,
        lineNumberColumnWidth: 40,
        rowSelectorColumnWidth: 27,
        columnMinWidth : 160,
	    columns: [    	
	    			{key: "empNo", label: "<strong>사원번호</strong>", formatter: "nvl", align: "left"}, 
			    	{key: "userNm", label: "<strong>사원명</strong>", formatter: "nvl", align: "left"}, 
			    	{key: "lvlEdu", label: "<strong>E-Mail</strong>", formatter: "nvl", align: "left"},          
			    	{key: "major", label: "<strong>전공</strong>", formatter: "nvl", align: "left"},     
			    	{key: "doblMajor", label: "<strong>부전공</strong>", formatter: "nvl", align: "left"}
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
 			onDBLClick: function(){
 				common.pageMove("empmng/empinfo",this.list[this.dindex]);
 			},
 	 	    onClick: function(){
            
        	},
		}
	});
	
	// 조회
	search();	
});

/*학력 조회 */
function search() {
	
	var empMngVo = {};
	var tbi2000 = {};
	var empMngVoList = [];

	var sNo = $("[id=txtEmpNo]").val();
	var sNm = $("[id=txtEmpNm]").val();
	//tbi2000["gridPage"] = gridPage;
	//tbi2000["gridRow"] = gridRow;
	tbi2000["empNo"] = sNo;
	tbi2000["userNm"] = sNm;
	empMngVo["tbi2000"] = tbi2000;
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : "application/json",
		async : true,
		data : JSON.stringify(empMngVo),
		url : "/plum/main/lvledu",
		success : function(data) {
			firstGrid.setData(
					{
				        list: data.tbi2000List,
				        page: {
				            //currentPage: gridPage,
				            //pageSize: gridRow,
				            totalElements: data.tbi2000List[0].totCnt,
				            totalPages: data.tbi2000List[0].totPage
				        }
				    }
				);
		},
		error : function(request, status, error) {
			alert('에러');
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
<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="width:100%; height:600px;"></div>
</html>