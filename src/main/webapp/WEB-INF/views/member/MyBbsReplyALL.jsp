<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 작성 댓글 전체 목록</title>
</head>
<body>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>커뮤니티 작성 글</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="MyBbsReply">
	<tr class="ttt">
		<td><a href="${MyBbsReply.scrap_link}" target="_blank">${MyBbsReply.bbs_title}</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>