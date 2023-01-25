<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/menuCss.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

</head>

<body>
<div>
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
</div>
<div>
	<div id="d1" style="width: 80%; margin-left: auto; margin-right: auto; ">

	<table class="table">
		<tr class="table-dark">
			<td class="table-dark">제목 : ${vo.bbs_title}</td>
		</tr class="table-dark">

		<tr class="table-dark">
			<td>작성자 :${vo.member_id}</td>
		</tr>

		<tr>
			<td><img src="../resources/upload/${vo.bbs_img}"width="300" height="450"></td>
		</tr>
		<tr>
			<td>${vo.bbs_contents}</td>
		</tr>

	</table>
	</div>
	<div style="width: 80%; margin-left: auto; margin-right: auto; ">
		<!-- 좋아요 -->
		<form action="bbs_recommend">
			<input type="hidden" class="form-control input-sm" name="bbs_Id"
				value="${vo.bbs_Id}"><br> <span
				class="input-group-text">member_id</span> <input type="text"
				class="form-control input-sm" name="member_id"><br>
			<button class="btn btn-outline-primary" >좋아요 ${count} </button>
		</form>
		
	</div>
	
	
			
	
	<div id="d2" style="width: 80%; margin-left: auto; margin-right: auto; ">
		<h2>댓글</h2>

		<form action="reply_insert">

			<span class="input-group-text">작성자</span> <input type="text"
				class="form-control input-sm" name="member_id"><br> <span
				class="input-group-text">내용</span> <input type="text"
				class="form-control" name="reply_contents" style="height: 80px"><br> <input
				type="hidden" class="form-control" name="bbs_Id"
				value="${vo.bbs_Id}"><br>

			<button type="submit" class="btn btn-secondary">댓글 작성</button>
		</form>
	</div>
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
		<table class="table">
			<tr class="table-dark">
				<td>작성자</td>
				<td>내용</td>
				<td></td>
				
			</tr>
			<c:forEach items="${list}" var="vo2">
				<tr>
					<td>${vo2.member_id}</td>
					<td>${vo2.reply_contents}</td>
					<td><a
						href="${path}/bbs/reply_del?reply_id=${vo2.reply_id}"><button type="button" class="btn btn-outline-danger">삭제</button></a></td>
				</tr>
			</c:forEach>
		</table>

	</div>
	<br>
	<div style=" text-align: center;">
	<a href="/cdb/bbs/bbs_main.jsp"><button type="button" class="btn btn-outline-primary" >목록으로</button></a>
	</div>
	<div>
	<br>
	<br>
	<br>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
	</div>
</body>
</html>