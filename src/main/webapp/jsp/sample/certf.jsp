<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	ax5.ui.grid.formatter["date"] = function() {
		if (this.value != null){
			var date = this.value;
			if(date.length == 8) {
				return date.substr(0, 4) + "-" + date.substr(4, 2) + "-" + date.substr(6);
			} else {
				return "-";
			}
		}else{
			return "-";
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
			    	{key: "certfTitle", label: "<strong>자격증</strong>", formatter: "nvl", align: "left"},  
			    	{key: "certfDt", label: "<strong>자격증 취득일자</strong>", formatter: "date", align: "center"}
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
	
	var certfVo = {};
	var tbi4000 = {};
	//var empMngVoList = [];

	//tbi2000["gridPage"] = gridPage;
	//tbi2000["gridRow"] = gridRow;
	certfVo["tbi4000"] = tbi4000;
	
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : "application/json",
		async : true,
		data : JSON.stringify(certfVo),
		url : "/plum/sample/certf",
		success : function(data) {
			firstGrid.setData(
					{
				        list: data.tbi4000List,
				        page: {
				            //currentPage: gridPage,
				            //pageSize: gridRow,
				            totalElements: data.tbi4000List[0].totCnt,
				            totalPages: data.tbi4000List[0].totPage
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
	<button onclick="search();">조회</button>
</div>
<div style="height:10px;"></div>
<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="width:100%; height:600px;"></div>
</html>