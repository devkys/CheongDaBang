<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="../resources/css/cdbfind.css">
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
<div style="height: auto; min-height: 100%; padding-bottom: 50px;">
	<form action="Idfind">
	<div class="header">
		<h3>아이디 찾기</h3>
	</div>
		<div class="main">
			<table>
				<tr>
					<td>이름</td>
					<td>: <input type="text" name="member_name"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>: <input type="date" name="member_birth"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>: <input type="text" name="member_tel"></td>
				</tr>
			</table>
			 <br>
			<button class="button_CRUD">아이디 찾기</button>
		</div>
	</form>
</div>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>

</body>
</html>