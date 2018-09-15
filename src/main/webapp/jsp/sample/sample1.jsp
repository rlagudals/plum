<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<%@include file="./header.jsp" %>
<script type="text/javascript">
//<![CDATA
var firstGrid = {};
var gridPage = 0;
var gridRow = 19;

$(document).ready(function () {
	/* dash(-)로 구분되는 날짜 포맷터 */
	
	console.log(ax5.ui.grid.formatter);
	
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
            {key: "empNo", label: "<strong>사원번호</strong>", formatter: "nvl", align: "center"},
            {key: "empName", label: "사원명", formatter: "nvl", align: "center"},
            {key: "authClsNm", label: "사원권한", formatter: "nvl", align: "center"},
            {key: "joinDate", label: "입사일자", formatter: "date", align: "center"},
            {key: "empPhotCntt", label: "핸드폰번호", formatter: "nvl", align: "center"},
            {key: "homeAddr", label: "주소", formatter: "nvl", align: "center"}
            
            
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
	
	var empMngControllerVo = new Object();
	var empMngVo = new Object();
	var empMngVoList = new Array();

	empMngVo["gridPage"] = gridPage;
	empMngVo["gridRow"] = gridRow;
	empMngControllerVo["empMngVo"] = empMngVo;

	
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : "application/json",
		async : true,
		data : JSON.stringify(empMngControllerVo),
		url : "/sample/sample1",
		success : function(data) {
			
			console.log(data);

			firstGrid.setData(
					{
				        list: data.tbi1000List1,
				        page: {
				            currentPage: gridPage,
				            pageSize: gridRow
// 				            ,
// 				            totalElements: data.tbi1000List1[0].totCnt,
// 				            totalPages: data.empMngVoList[0].totPage
				        }
				    }
				);
		},
		error : function(request, status, error) {
			alert('다시 한 번 입력해주세요 에러에러');
		}
	});	


};
//]]>		
	</script>
	

	
<h3>AX5UI Grid <button onclick="search(0);">조회</button></h3>
<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="width:100%; height:600px;"></div>

</div><!-- .index -->

</html>