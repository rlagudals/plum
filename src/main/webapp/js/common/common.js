var common= {}; //This is WebSquare JavaScript Marker. Do not remove this line.

common.sample = function (pageNm) {
	location.href = "/plum/sample?pagenm=" + pageNm;
	
};
/* json data로 화면 이동 */
common.pageMove = function (i_url, i_data) {
	
	
	var url = i_url;
	var json_data = {};
	
	if(i_data != null){
		json_data["empNo"] = i_data.empNo;
	}
	json_data["url"] = url; 
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : "application/json",
		async : true,
		data : JSON.stringify(json_data),
		url : "/page",
		success : function(data) {
			location.href = data.url + "?empNo=" + data.empNo ;
		},
		error : function(request, status, error) {
			alert('ajax error');
		}
	});	 

};


common.isValidDate = function (iDate) {
	  if( iDate.length != 8 ) {
	    return false;
	  }
	  
	  oDate = new Date();
	  oDate.setFullYear(iDate.substring(0, 4));
	  oDate.setMonth(parseInt(iDate.substring(4, 6)) - 1);
	  oDate.setDate(iDate.substring(6));

	  if( oDate.getFullYear()     != iDate.substring(0, 4)
	      || oDate.getMonth() + 1 != iDate.substring(4, 6)
	      || oDate.getDate()      != iDate.substring(6) ) {
	    return false;
	  }
	   
	  return true;
	};
