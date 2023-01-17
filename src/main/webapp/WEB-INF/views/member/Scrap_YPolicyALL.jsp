<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청년 정책 스크랩 전체 리스트</title>
</head>
<body>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>청년 정책</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="scrap_ypolicy">
	<tr class="ttt">
		<td><a href="${scrap_ypolicy.scrap_link}" target="_blank">${scrap_ypolicy.scrap_title}</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>