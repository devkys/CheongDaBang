<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청년 정책 스크랩 전체 리스트</title>
<style type="text/css">
div{
display: grid;
place-items: center;
}
table {
	width: 333px;
}
</style>
</head>
<body>
<h1 align="center">회원님의 전체 청년 정책 스크랩 리스트</h1>
<div>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>청년 정책</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="scrap_ypolicy">
	<tr class="ttt">
		<td><a href="${scrap_ypolicy.scrap_link}" target="_blank">${scrap_ypolicy.scrap_title}</a>
		<!-- &nbsp;&nbsp;&nbsp;<a href="scrap_delete"><small style="color: red;">삭제</small></a> --></td>
	</tr>
	</c:forEach>
</table>
</div>
</body>
</html>