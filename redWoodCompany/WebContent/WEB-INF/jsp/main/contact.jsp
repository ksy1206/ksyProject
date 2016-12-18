<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../common/commonHEAD.jsp" flush="false" />
<jsp:include page="../common/script.jsp" flush="false" />
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD60rwjxUjBDRiDUUfwQvNhjiP8d8hXVD8"></script>
<body>

	<jsp:include page="../common/navigation.jsp" flush="false" />
	
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Contact</h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="col-md-8">
                <!-- Embedded Google Map -->                
                <div id="map-canvas" style="width: 100%; height: 400px;"></div>
            </div>
            <!-- Contact Details Column -->
            <div class="col-md-4">
                <h3>Contact Details</h3>
                <p>
                    	서울시 강남구 테헤란로 84길 14<br>지어로빌딩 1079호<br>
                </p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">P</abbr>: (010) 5339-2679</p>
                <p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">E</abbr>: designmwl@naver.com
                </p>
                <p><i class="fa fa-clock-o"></i> 
                    <abbr title="Hours">H</abbr>: Monday - Friday: 9:00 AM to 6:00 PM</p>
                <ul class="list-unstyled list-inline list-social-icons">
                    <li>
                        <a href="http://blog.naver.com/designmwl"><i class="fa fa-home fa-2x"></i> BLOG</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-8">
                <h3>Send us a Message</h3>
                <form name="sentMessage" id="contactForm" novalidate>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Full Name:</label>
                            <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Phone Number:</label>
                            <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email Address:</label>
                            <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Message:</label>
                            <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- Contact Form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
    
	<script type="text/javascript">
	      function initialize() {
			var latitude = "37.5062160";
			var longitude = "127.0584170";
	        var mapLocation = new google.maps.LatLng(latitude, longitude); // 지도에서 가운데로 위치할 위도와 경도 
	        var markLocation = new google.maps.LatLng(latitude, longitude); // 마커가 위치할 위도와 경도         
	
	        var mapOptions = {
	          center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
	          zoom: 18, // 지도 zoom단계
	          mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
	
	        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
	            mapOptions);
	        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
	        var size_y = 60; // 마커로 사용할 이미지의 세로 크기         
	
	        // 마커로 사용할 이미지 주소
	        var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
	                            new google.maps.Size(size_x, size_y),
	                            '',
	                            '',
	                            new google.maps.Size(size_x, size_y));
	        var marker = "";
	        marker = new google.maps.Marker({ 
	               position: markLocation, // 마커가 위치할 위도와 경도(변수)
	               map: map,
	               icon: image, // 마커로 사용할 이미지(변수)
	            info: '바로 여기~!',
	//             title: '' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
	        });        
	
	//         var content = ""; // 말풍선 안에 들어갈 내용         
	
	        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
	//         var infowindow = new google.maps.InfoWindow({ content: content});
	//         google.maps.event.addListener(marker, "click", function() {
	//             infowindow.open(map,marker);
	//         });
	      }
	
	      google.maps.event.addDomListener(window, 'load', initialize);
	</script>
</body>

</html>
