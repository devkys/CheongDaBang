<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>작성자 검색 결과</h3>
<hr>
<table class="table">
	<tr>
		<td>bbs_no</td>
		<td>제목</td>
		<td>작성자</td>
		<td>내용</td>
		<td>이미지</td>
	</tr>
	<c:forEach items="${list}" var="na">
	<tr>
		<td>${na.bbs_Id}</td>
		<td>${na.bbs_title}</td>
		<td>${na.member_id}</td>
		<td>${na.bbs_contents}</td>
		<td>${na.bbs_img}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>