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
<title>Physical Simulator - Update Question</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/navbar-static-top.css'/>"
	rel="stylesheet">
	
<script src="<c:url value='/resources/js/jquery-3.4.1.js'/>"></script>


<script type="text/javascript">

	function goBack() {
		location.href = "/myproject/community/read_question?boardnum=" + ${VO.boardnum} + "&temp=" + true;
	};
	
	function update1() {
		confirm("修正しますか。");
	};
	
</script>
</head>


<body>

	<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include> 

	<!-- nav -->
	
	<form action="<c:url value='/community/update_question_process'/>" id="updateForm" method="post">
	<div class="container">
		<table class="table">
			<tr>
				<th>番号</th>
				<td>${VO.boardnum}</td>
			</tr>
			<tr>
				<th>作成者</th>
				<td>${VO.userID}</td>
			</tr>
			<tr>
				<th>作成日</th>
				<td>${VO.inputdate}</td>
			</tr>
			<tr>
				<th>照会数</th>
				<td>${VO.hit}</td>
			</tr>
			<tr>
				<th>題目</th>
				<td><input type="text" name="title" value="${VO.title}" required="required"></td>
			</tr>
			<tr>
				<th>内容</th>
				<td><textarea name="content" required="required">${VO.content}</textarea></td>
			</tr>
			<tr>
				<td class="right" colspan="2">
					<input type="submit" value="修正" onclick="return update1()"/>
					<input type="button" value="キャンセル" onclick="goBack()"/>
				</td>
			</tr>
		</table>
		<input type="hidden" name="boardnum" value="${VO.boardnum}"/>
		</div>
	</form>
	
	
	


<!-- Modals -->
	<jsp:include page="/WEB-INF/views/include/loginModal.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/include/logoutModal.jsp"></jsp:include>
<!-- Modal end -->


	<!-- Placed at the end of the document so the pages load faster -->
	
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>

</body>
</html>