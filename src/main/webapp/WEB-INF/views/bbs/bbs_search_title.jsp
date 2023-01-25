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
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<body>
<div>
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
</div>
<h3 class="text-center" >제목 검색 결과</h3>
<hr>
<div>
<table class="table" style="width: 80%; margin-left: auto; margin-right: auto">
	<tr class="table-dark">
		<td>이미지</td>
		<td>제목</td>
		<td>작성자</td>
	</tr>
	<c:forEach items="${list}" var="vo">
	<tr onclick="location. href='${path}/cdb/bbs/bbs_contents?bbs_Id=${vo.bbs_Id}'" style="cursor:pointer;">
		<td><img src="../resources/upload/${vo.bbs_img}" width="100" height="100"></td>
		<td>${vo.bbs_title}</td>
		<td>${vo.member_id}</td>
	</tr>
	</c:forEach>
</table>
<br>
</div>
<div style="text-align: center;">
<a href = "/cdb/bbs/bbs_main.jsp"><button class="btn btn-outline-primary">목록으로</button></a>
</div>
<br>
<br>
<br>
<div>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
</body>
</html>