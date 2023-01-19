<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 작성 댓글 전체 목록</title>
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
<div>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>커뮤니티 작성 댓글</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="MyBbsReply">
	<tr class="ttt">
		<td><a href="../bbs/bbs_contents?bbs_Id=${MyBbs.bbs_Id}" target="_blank">${MyBbsReply.reply_contents}</a></td>
	</tr>
	</c:forEach>
</table>
</div>
</body>
</html>