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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<body>
<div>
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
</div>
<h3 class="text-center" >정책 검색 결과</h3>
<hr>
<div>
<table class="table" style="width: 80%; margin-left: auto; margin-right: auto">
	<tr>
		<c:forEach items="${list2}" var="one" begin="0" end="3" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br>
			<a
			href="/cdb/yPolicy/detailOne?YP_NAME=${one.YP_NAME}"
				style="font-weight: bold; align: right;">이동하기</a>
		</c:forEach>
	</tr>
	<tr class="table-secondary">
		<c:forEach items="${list2}" var="one" begin="4" end="7" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br><a
				href="/cdb/yPolicy/detailOne?YP_NAME=${one.YP_NAME}"
				style="font-weight: bold; align: right;">이동하기</a>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach items="${list2}" var="one" begin="8" end="11" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br><a
				href="/cdb/yPolicy/detailOne?YP_NAME=${one.YP_NAME}"
				style="font-weight: bold; align: right;">이동하기</a>
			</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach items="${list2}" var="one" begin="12" end="15" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br><a
				href="/cdb/yPolicy/detailOne?YP_NAME=${one.YP_NAME}"
				style="font-weight: bold; align: right;">이동하기</a>
			</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach items="${list2}" var="one" begin="15" end="18" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br><a
				href="/cdb/yPolicy/detailOne?YP_NAME=${one.YP_NAME}"
				style="font-weight: bold; align: right;">이동하기</a>
			</td>
		</c:forEach>
	</tr>
</table>
<br>
</div>
<div style="text-align: center;">
<a href = "/cdb/yPolicy/yp_all"><button class="btn btn-outline-primary">청년 정책 페이지</button></a>
</div>
<br>
<br>
<br>
<div>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
</body>
</html>