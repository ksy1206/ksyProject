<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>관리자</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
  
  	<!-- Bootstrap Core CSS -->
    <link href="<%=cp%>/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%=cp%>/css/modern-business.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<%=cp%>/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript"  src="<%=cp%>/js/jquery.form.js"></script>
  
  <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>
  
    <script type="text/javascript">
  

	$(document).ready(function(){
      //---------------------------------------
      // 폼 전송후 콜백함수 호출
      //---------------------------------------  
      var options = {
          dataType : "json",
      	contentType : "application/x-www-form-urlencoded;charset=UTF-8" ,
          success : function(data){
          
                      if(data.resultCode == '1') {
                      	$( "#fileUploadPath" ).val(data.fileUploadPath);
                          $( "#fileNewName").val(data.fileName);
                          $( "#destination").val(data.destination);
                          saveCompanyFile();
                     } else{
                  	   alert( "첨부파일 등록에 실패하였습니다.");
                         
                     }
          },
          error : function(xhr, error, data) {
              alert( "파일 업로드에 실패하였습니다.");
          }
     };

     $("#file_upload").ajaxForm(options);
		
		
	});//end document
	
	//저장전 유효성검사 및 파일업로드
	function Sym_save(){		
		var file = $('#file').val();
		if( file == '' || file == 'undefined'){
			
		} else {
			var frm = $( '#file_upload');
			save_file(frm);
			return false;
		}
	}
	
	function save_sympathy(){
		
		var img_Name = $('#fileNewName').val();
		var img_path = $('#fileUploadPath').val();
		var main_portpoloi_img_no = $('#main_portpoloi_img_no').val();
		
		var params = "img_Name="+img_Name+"&img_Path="+img_path+"&main_portpoloi_img_no="+main_portpoloi_img_no;

        $.ajax({
            type        : "POST" 
          , async       : true
          , url         : "/admin/save_img.do"
          , data        : params
          , dataType    : "json"
          , timeout     : 30000  
          , cache       : false    
          //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
          , error       : function(request, status, error) {
             alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );    
          }
          , success     : function(data) {
          				alert("이미지 등록이 완료 되었습니다.");
          				location.reload();
          }
  		});	
	}
	
	function save_file(frm){
		frm.submit();       
	}
	
  function saveCompanyFile(){
	var params = "";
	var file_name = jQuery("#fileNewName" ).val();
	var destination =  jQuery("#destination").val();
	var member_no = "main";
	
	params = "fileNewName=" + jQuery("#fileNewName" ).val() + "&fileUploadPath=" + jQuery("#fileUploadPath" ).val() +
			 "&member_no=" + member_no+"&destination=" + destination;
    
     
	       $.ajax({
	             type        : "POST" 
	           , async       : true
	           , url         : "/cmd/saveCompanyFile.do"
	           , data        : params
	           , dataType    : "json"
	           , timeout     : 30000  
	           , cache       : false    
	           //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
	           , error       : function(request, status, error) {
	               alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );       
	           }
	           , success     : function(data) {
	             
	          	 $("#fileUploadPath" ).val(data.fileUploadPath);
	          	 $("#fileNewName").val(data.fileNewName);
	
	          	save_sympathy();
	
	           }
	 		});
	}  	
	</script>
	
</head>
<body>

<div class="container-fluid" style="background-color:#f8f8f8; color:#777777; height:100px;">
  <h1>Redwood 관리자</h1>
</div>

<jsp:include page="admin_navication.jsp" flush="false" />

<div class="container-fluid" style="margin-left: 5em; margin-right: 5em;">
  <h1>메인 이미지 올리기</h1>
	<input type="hidden" id="fileUploadPath" name="fileUploadPath" value="" />
	<input type="hidden" id="fileNewName" name="fileNewName" value="" />
	<input type="hidden" id="destination" name="destination" value="" />
	
	<div class="form-group" style="width: 200px;">
	  <label for="sel1">이미지 선택</label>
	  <select class="form-control" id="main_portpoloi_img_no">
	    <option value="1">1번째 이미지</option>
	    <option value="2">2번째 이미지</option>
	    <option value="3">3번째 이미지</option>
	    <option value="4">4번째 이미지</option>
	    <option value="5">5번째 이미지</option>
	    <option value="6">6번째 이미지</option>
	  </select>
	</div>
	
	<form id="file_upload" name="file_upload" method="post" accept="image/*;capture=camera" enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do?fileGbn=main">
		<input type="file" name="file" value="" id="file"  style="height: 25px;"/>
	</form>
	
	<div style="margin-top: 1em;">
  		<input type="button" value="등록" class="btn btn-default" onclick="Sym_save()">
  	</div>
  	
	<!-- Portfolio Section -->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Portfolio</h2>
        </div>
        <c:forEach var="data" items="${potolio_list}">
         <div class="col-md-4 col-sm-6">
             <img class="img-responsive img-portfolio img-hover" src="/upload/img/main/${data.img_Name}" alt="">
         </div>
        </c:forEach>
    </div>
    <!-- /.row -->
</div>
</body>
</html>
