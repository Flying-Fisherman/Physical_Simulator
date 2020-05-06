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
<title>Physical Simulator - Question Details</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/navbar-static-top.css'/>"
	rel="stylesheet">
	
<script src="<c:url value='/resources/js/jquery-3.4.1.js'/>"></script>


<script type="text/javascript">
	function update_quest(num) {
		location.href = "/myproject/community/update_question?boardnum=" + num;
	};
	
	function delete_quest() {
		return confirm('削除しますか。');
		/* 
		스크립트로 서버에 요청을 보내기
		location.href = "/web/board/boardDelete?boardnum=${requestScope.VO.boardnum}";
		 */
	};
	
	function replyDelete() {
		return confirm('削除しますか。');
	};
</script>
</head>


<body>

	<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include> 

	<!-- nav -->
	
	<div class="container theme-showcase" role="main">
		<div class="page-header">
			<h1>Simulate Project - Question Write</h1>
		</div>
	<table class="table">
		<tr>
			<th>番号</th>
			<td>${requestScope.VO.boardnum}</td>
			<th>作成者</th>
			<td>${requestScope.VO.userID}</td>
		</tr>
		<tr>
			<th>作成日</th>
			<td>${requestScope.VO.inputdate}</td>
			<th>照会数</th>
			<td>${requestScope.VO.hit}</td>
		</tr>
	</table>
	
	<div class="container"><p class="form-control-static">題目 : ${requestScope.VO.title}</p></div>
		
	<div class="container"><p class="form-control-static">内容</p>
		<textarea rows="5" class="form-control" readonly="readonly" style="resize: none;"> ${requestScope.VO.content}</textarea>
	</div>
		

	
	<div class="form-group" style="text-align: right;">
		<c:if test="${sessionScope.userID == requestScope.VO.userID}">
					<input type="button" value="修正" onclick="update_quest(${requestScope.VO.boardnum})"/>
									
					<a href="<c:url value='/community/delete_question?boardnum=${requestScope.VO.boardnum}'/>">
						<input type="button" value="削除" onclick="return delete_quest()"/>
					</a> 
				</c:if>
				<a href="<c:url value='/community/community_question'/>">
					<input type="button" value="目録" />
				</a>
	</div>
	
	<!-- 댓글 ㅎ -->
	<form action="<c:url value='/community/write_quest_reply'/>" method="POST">
		<table>
			<tr>
				<td>
					<input type="text" name="replyText" required="required"/>
					<input type="submit" value="コメントを書く"/>
					<input type="hidden" name="boardnum" value="${requestScope.VO.boardnum}"/>
				</td>
			</tr>
		</table>
	</form>

	<div id="replyDisplay">
		<table class="table">
		<thead>
			<tr>
				<th>コメント内容</th>
				<th>作成者</th>
				<th>作成日</th>
				<th></th>
			</tr>
		</thead>
			<c:forEach items="${replyList}" var="reply">
				<tr>
					<td class="replytext">
						${reply.replyText}
					</td>
					
					<td class="replyid">
						${reply.userID}
					</td>
					
					<td class="replydate">
						${reply.inputdate}
					</td>
					
					<c:if test="${sessionScope.userID == reply.userID}">
						<td class="replybtn">
							<a href="<c:url value='/community/delete_quest_reply?replynum=${reply.replynum}&boardnum=${reply.boardnum}'/>">
								<input type="button" value="削除" onclick="return replyDelete()"/>
							</a>
						</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
	
	
	
	
	
	
	


<!-- Modals -->
	<jsp:include page="/WEB-INF/views/include/loginModal.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/include/logoutModal.jsp"></jsp:include>
<!-- Modal end -->


	<!-- Placed at the end of the document so the pages load faster -->
	
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>

</body>
</html>