<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%  
	String cp = request.getContextPath();
%>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
	<ul class="nav navbar-nav">
		<li><a href="#" onclick="moveMenu.main();">Main Portfolio</a></li>
		<li><a href="#" onclick="moveMenu.cg();">CG Portfolio</a></li>
		<li><a href="#" onclick="moveMenu.vr();">VR Simulation</a></li>
		<li><a href="#" onclick="moveMenu.Construction();">Construction</a></li>
		<li><a href="#" onclick="moveMenu.contact();">견적요청 확인</a></li>
	</ul>
</nav>

<script>
	function MoveMenu(){
		var _this = this;
		
		_this.main = function() {
			location.href = "/admin/main.do";
		};
		_this.cg = function() {
			location.href = "/admin/cg.do";
		};
		_this.vr = function() {
			location.href = "/admin/vr.do";
		};
		_this.Construction = function() {
			location.href = "/admin/construction.do";
		};
		_this.contact = function() {
			alert("123");
			//location.href = "/admin/main.do";
		};
	};
	
	var moveMenu = new MoveMenu();
</script>