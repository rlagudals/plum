<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<%@include file="./header.jsp" %>
<script type="text/javascript">
var firstGrid = {};
var gridPage = 0;
var gridRow = 19;

$(document).ready(function () {
	/* dash(-)로 구분되는 날짜 포맷터 */
	
	//console.log(ax5.ui.grid.formatter);
	
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
	
	// 연락처
	ax5.ui.grid.formatter["phone_num"] = function() {
		if (this.value != null){
			var date = this.value;
			if(date.length == 8) {
				return date.substr(0, 3) + "-" + date.substr(4, 8) + "-" + date.substr(8,12);
			} else {
				return "-";
			}
		}else{
			return "-";
		}
	};
	
	ax5.ui.grid.formatter["user_nvl_data"] = function() {
		var data = this.value;
		
		if(date == '') {
			return '-'
		} else {
			return data;
		}
	};	

	/* 그리드 객체 생성 */
	firstGrid = new ax5.ui.grid();

	
	/* 그리드 설정 지정 */
	firstGrid.setConfig({
		
	    target: $('[data-ax5grid="first-grid"]'),

        showLineNumber: true,
        showRowSelector: false,
        multipleSelect: false,
        lineNumberColumnWidth: 40,
        rowSelectorColumnWidth: 27,
        columnMinWidth : 160,
	    columns: [
             
 /*          {key: "empNo", label: "날짜", align: "center", editor: {type: "number"}},
 			 {key: "type", label: "구분", align: "center", 
           	 editor: {
            	type: "select", config: {
                    columnKeys: {
                        optionValue: "CD", optionText: "NM"
                    },
                    options: [
                        {CD: "O", NM: "O: 주유"},
                        {CD: "R", NM: "R: 정비"}
                    ]
                },
	            disabled: function () {
	                // 활성화 여부를 item.complete 의 값으로 런타임 판단.
	                return this.item.complete == "true";
	            }
             }
            },   */
	    	{key: "loginId", label: "<strong>아이디</strong>", formatter: "nvl", align: "left", width : 100}, 
	    	{key: "userNm", label: "<strong>사원명</strong>", formatter: "nvl", align: "left" , width : 100}, 
	    	{key: "empNo", label: "<strong>사원번호</strong>", formatter: "nvl", align: "left" , width : 100}, 
	    	{key: "addr", label: "<strong>주소</strong>", formatter: "nvl", align: "left", width : 100},   
	    	{key: "frontRegNo", label: "<strong>생년월일</strong>", formatter: "nvl", align: "center"}, 
	    	{key: "gender", label: "<strong>성별</strong>", formatter: "nvl", align: "center"}, 
	    	{key: "email", label: "<strong>E-Mail</strong>", formatter: "nvl", align: "center"},          
	    	{key: "telNum", label: "<strong>연락처</strong>", formatter: "phone_num", align: "center"},     
	    	{key: "emerTelNum", label: "<strong>비상연락처</strong>", formatter: "phone_num", align: "center"}, 
	    	{key: "entrDt", label: "<strong>입사일자</strong>", formatter: "date", align: "center"},  
	    	{key: "resingDt", label: "<strong>퇴사일자</strong>", formatter: "date", align: "center"}, 
	    	{key: "deptCd", label: "<strong>부서</strong>", formatter: "nvl", align: "center"}, 
	    	{key: "gradeCd", label: "<strong>직급</strong>", formatter: "nvl", align: "center"}, 
	    	{key: "lvlEdu", label: "<strong>학력</strong>", formatter: "nvl", align: "center"}, 
	    	{key: "major", label: "<strong>전공</strong>", formatter: "nvl", align: "center"},  
	    	{key: "marrYn", label: "<strong>결혼여부</strong>", formatter: "nvl", align: "center"}, 
	    	{key: "salClas", label: "<strong>호봉</strong>", formatter: "nvl", align: "center"}  
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
	
	search(gridPage);	
});

/*사원정보 조회 */
function search(_gridPage) {
	
	//페이지 넘겨받음
	gridPage = _gridPage;
	
	var sNm = $("[id=txtName]").val();
	var sId = $("[id=txtId]").val();
	var sEntrDt1 = $("[id=dtFromDt]").val();
	var sEntrDt2 = $("[id=dtToDt]").val();
		
	var empMngVo = {};
	var tbi1000 = {};
	var empMngVoList = [];

	tbi1000["gridPage"] = gridPage;
	tbi1000["gridRow"] = gridRow;
	tbi1000["userNm"] = sNm;
	tbi1000["loginId"] = sId;
	tbi1000["entrDt1"] = sEntrDt1;
	tbi1000["entrDt2"] = sEntrDt2;
	empMngVo["tbi1000"] = tbi1000;
			
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : "application/json",
		async : true,
		data : JSON.stringify(empMngVo),
		url : "/plum/sample/empmng",
		success : function(data) {
			
			console.log(data);
			
			var totCnt = 0;
			var totPage = 0; 
			if (data.tbi1000List[0] !== undefined) {
				totCnt = data.tbi1000List[0].totCnt;
				totPage = data.tbi1000List[0].totPage;
			}
			    			
			firstGrid.setData(
					{
				        list: data.tbi1000List,
				        page: {
				            currentPage: gridPage,
				            pageSize: gridRow,
				            totalElements: totCnt,
				            totalPages: totPage
				        }
				    }
				);
		},
		error : function(request, status, error) {
			alert('다시 한 번 입력해주세요 에러에러');
		}
	});	
};	
</script>
<div>
	<table>
		<tr height="10" rowspan="17"></tr>
		<tr>
			<td><label>사원명</label></td>
			<td width="5"></td>
			<td><input type="text" id="txtName"></td>
			<td width="20"></td>		
			<td><label>아이디</label></td>
			<td width="5"></td>
			<td><input type="text" id="txtId"></td>
			<td width="20"></td>		
			<td><label>조회기간</label></td>
			<td width="5"></td>
			<td><input type="text" id="dtFromDt"></td>
			<td width="5"></td>
			<td><label>~</label></td>
			<td width="5"></td>
			<td><input type="text" id="dtToDt"></td>
			<td width="20"></td>	
			<td><button onclick="search(0);">조회</button></td>
		</tr>
		<tr height="10" rowspan="17"></tr>
	</table>
</div>
<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="width:100%; height:600px;"></div>
</html>