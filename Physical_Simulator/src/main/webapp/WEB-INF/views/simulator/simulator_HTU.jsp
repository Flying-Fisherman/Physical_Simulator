<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>Physical Simulator - How To Use</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/navbar-static-top.css'/>"
	rel="stylesheet">
	
<script src="<c:url value='/resources/js/jquery-3.4.1.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>

<script type="text/javascript">
	
</script>
</head>


<body>

	<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include> 

	<!-- nav -->
	
	<div class="container theme-showcase" role="main">
		<div class="page-header">
			<h1>Simulate Project - How To Use</h1>
		</div>
		<div class="jumbotron" style="height: 700px; text-align: center;">
			<h2>매우 간단하고 쉬운 사용법</h2>
			<h4>지나가던 초등학생도 보면 앎</h4>
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			  
			    <div class="item active">
			      <img src="<c:url value='/resources/pic/help_1.jpg'/>" alt="대충 도움되는 사진1">
			      <div class="carousel-caption">
			      </div>
			    </div>
			    
			    <div class="item">
			      <img src="<c:url value='/resources/pic/help_2.jpg'/>" alt="대충 도움되는 사진2">
			      <div class="carousel-caption">
			      </div>
			    </div>
			    
			    <div class="item">
			      <img src="<c:url value='/resources/pic/help_3.jpg'/>" alt="대충 도움되는 사진3">
			      <div class="carousel-caption">
			      </div>
			    </div>
			    
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	


<!-- Modals -->
	<jsp:include page="/WEB-INF/views/include/loginModal.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/include/logoutModal.jsp"></jsp:include>
<!-- Modal end -->


	

</body>
</html>