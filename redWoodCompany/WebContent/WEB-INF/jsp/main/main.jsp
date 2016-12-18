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

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider01.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider02.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 2</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider03.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 3</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider04.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 4</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider05.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 5</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    We Work
                </h1>
            </div>
            <div class="col-md-4">
<!--                 <div class="panel panel-default"> -->
<!--                     <div class="panel-heading"> -->
<!--                         <h4><i class="fa fa-fw fa-check"></i> Bootstrap v3.3.7</h4> -->
<!--                     </div> -->
<!--                     <div class="panel-body"> -->
<!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p> -->
<!--                         <a href="#" class="btn btn-default">Learn More</a> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="col-md-4">
                <div class="">
                    <div class="" align="center">
                        <img src="<%=cp%>/img/work.jpg" width="350px;" alt="">
                    </div>
                </div>
            </div>
            <div class="col-md-4">
<!--                 <div class="panel panel-default"> -->
<!--                     <div class="panel-heading"> -->
<!--                         <h4><i class="fa fa-fw fa-compass"></i> Easy to Use</h4> -->
<!--                     </div> -->
<!--                     <div class="panel-body"> -->
<!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p> -->
<!--                         <a href="#" class="btn btn-default">Learn More</a> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
        </div>
        <!-- /.row -->

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

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">건축 시뮬레이션</h2>
            </div>
            <div class="col-md-6">
                <video poster="http://placehold.it/640x360" controls="controls" autoplay="autoplay" style="max-width: 100%;">
				    <source src="<%=cp%>/video/main01.mp4" type="video/mp4" />
				</video>
            </div>
            <div class="col-md-6">
                <video poster="http://placehold.it/640x360" controls="controls" autoplay="autoplay" style="max-width: 100%;">
				    <source src="<%=cp%>/video/main01.mp4" type="video/mp4" />
				</video>
            </div>
        </div>
        <!-- /.row -->

        <hr>        
    
    	<jsp:include page="../common/footer.jsp" flush="false" />

    </div>
    <!-- /.container -->
    
    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
