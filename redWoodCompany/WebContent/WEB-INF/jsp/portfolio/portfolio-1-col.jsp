<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../common/commonHEAD.jsp" flush="false" />
<jsp:include page="../common/script.jsp" flush="false" />

<body>

	<jsp:include page="../common/navigation.jsp" flush="false" />

	<input type="hidden" value="${type}" id="type">

    <!-- Page Content -->
    <div class="container">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Four Column Portfolio
                    <small>Subheading</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Four Column Portfolio</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <c:forEach var="data" items="${potolio_list}">
		        <div class="col-md-3 img-portfolio" onclick="modalOpen('${data.img_Name}')">
		        	<c:if test="${type == 'cg' }">
		            	<img class="img-responsive img-hover" src="/upload/img/cg/${data.img_Name}" alt="">
		            </c:if>
		            <c:if test="${type == 'construction' }">
		            	<img class="img-responsive img-hover" src="/upload/img/construction/${data.img_Name}" alt="">
		            </c:if>
		        </div>
        	</c:forEach>
        </div>
        <!-- /.row -->

        <hr>

<!--         Pagination -->
<!--         <div class="row text-center"> -->
<!--             <div class="col-lg-12"> -->
<!--                 <ul class="pagination"> -->
<!--                     <li> -->
<!--                         <a href="#">&laquo;</a> -->
<!--                     </li> -->
<!--                     <li class="active"> -->
<!--                         <a href="#">1</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">2</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">3</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">4</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">5</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">&raquo;</a> -->
<!--                     </li> -->
<!--                 </ul> -->
<!--             </div> -->
<!--         </div> -->
<!--         /.row -->

<!--         <hr> -->

        <jsp:include page="../common/footer.jsp" flush="false" />

    </div>
    <!-- /.container -->
    
	<div class="container">
	  <!-- Trigger the modal with a button -->
	  <input type="hidden" value="asdf" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" id="modalButton"/>
	
	  <!-- Modal -->
	  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
	    
	      <!-- Modal content-->
	      <div class="modal-content modal-fullsize" style="margin-top: 10em;">
	        <div class="modal-body">
	          <img style="width: 100%;" src="" id="modalImg">
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	      
	    </div>
	  </div>  
	</div>

<script type="text/javascript">
	function modalOpen(imgName) {
		var modalImg = document.getElementById('modalImg');
		var type = $("#type").val();
		if(type == 'cg'){
			modalImg.src = "/upload/img/cg/"+imgName;
		} else {
			modalImg.src = "/upload/img/construction/"+imgName;
		}
		
		$("#modalButton").trigger("click");
	}

</script>


</body>

</html>
