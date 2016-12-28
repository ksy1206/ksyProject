<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../common/commonHEAD.jsp" flush="false" />
<jsp:include page="../common/script.jsp" flush="false" />

<body>

	<jsp:include page="../common/navigation.jsp" flush="false" />
	
	<!-- Page Content -->
    <div class="container">

        <!-- Service Panels -->
        <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Services Panels</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="panel panel-default text-center" style="height: 300px;">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <img src="<%=cp %>/img/service/cg.png" width="100%">
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4><strong>건축 CG</strong></h4>
                        <p><strong>인테리어투시도, 실내vr투시도, 건축시뮬레이션동영상, 조감도, 인테리어동영상.</strong></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="panel panel-default text-center" style="height: 300px;">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                               <img src="<%=cp %>/img/service/sigong.png" width="100%">
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4><strong>인테리어 시공</strong></h4>
                        <p><strong>호텔, 객실, 로비, 카페, 레스토랑, 감각이필요한공간.</strong></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="panel panel-default text-center" style="height: 300px;">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <img src="<%=cp %>/img/service/engineer.png" width="100%">
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4><strong>감리</strong></h4>
                        <p><strong>컨셉제안, 디자인, 출장현장CG적용,<br> 실비정산가산보수 방식 감리.</strong></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Service Tabs -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Service Tabs</h2>
            </div>
            <div class="col-lg-12">

                <ul id="myTab" class="nav nav-tabs nav-justified">
                    <li class="active"><a href="#service-one" data-toggle="tab"><i class="fa fa-tree"></i> 건축 CG</a>
                    </li>
                    <li class=""><a href="#service-two" data-toggle="tab"><i class="fa fa-car"></i> 인테리어 시공</a>
                    </li>
                    <li class=""><a href="#service-three" data-toggle="tab"><i class="fa fa-support"></i> 감리</a>
                    </li>
                </ul>

                <div id="myTabContent" class="tab-content" style="margin-left: 1em; margin-right: 1em; margin-top: 2em;">
                    <div class="tab-pane fade active in" id="service-one">
                        <h4><strong>건축 CG</strong></h4>
                        <p>건축외부는 영상으로 제작합니다. 실내는360도vr 또는 영상으로 제작합니다. 때문에 컷당 비용을 산정하지 않습니다. 컷은  원하시만큼 드립니다.<br>
                                   팬션,  리조트,  호텔 , 주거(아파트, 다세대)단지, 전원주택 등 자연조경의 표현이 필요한 작업에 최적화되있습니다.<br>
                                   최고의품질을 저렴한 가격으로 제작합니다. 도면없이도 컨셉, 상상만으로도 제작은 가능합니다. </p>
                        
                    </div>
                    <div class="tab-pane fade" id="service-two">
                        <h4><strong>인테리어 시공</strong></h4>
                        <p>다년간의 경력과 노하우를 가진 인테리어 디자이너 팀입니다.<br>
                        	투명하고 합리적인 가격과 책임있는시공, 꼼꼼한 마감을 약속드립니다.<br>
                        	저희와 함께하시면 추가 비용없이 CG로 고객의 의견을 반영해 사전 디자인작업을 합니다.<br>
                        	참고이미지, 2d도면 으로 디자인을 제안하면 디자인품질이 낮아질수있고 제시공으로인한 경제적, 시간적손실이 발생할수있습니다.<br>
                        	저희업체는 사전CG작업을통해 최소한의 시간과 비용으로 최적의 디자인을 약속합니다. </p>
                    </div>
                    <div class="tab-pane fade" id="service-three">
                        <h4><strong>감리</strong></h4>
                        <p>현장에 필요한 디자인전문가를 파견해드립니다.<br>
                        	직영공사 원하시는 업주여러분들을 도와드립니다. 현장에 파견된 디자이너는 고객님의 머리속 이미지를 현장에 적용해 이미지로 출력해드립니다.<br>
                        	마감제와 가구배치까지 표현된CG컷은 건축 시공설명서와 같습니다. 마감완성본을 보고 시공하기때문에 공기가 단축되고 적합한 마감재 선택에 도움이 됩니다. </p>
                    </div>
                </div>

            </div>
        </div>
		
		<hr>

        <jsp:include page="../common/footer.jsp" flush="false" />

    </div>
    <!-- /.container -->

</body>

</html>
