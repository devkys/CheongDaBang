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
<script src="https://ajax.googlyyeapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
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

<%@include file="/WEB-INF/views/includes/footer.jsp" %>
<script type="text/javascript">

$(document).ready(function() {
	if("${member_id}" === '') {
		$(".sign-in").css("visibility", "visible");
		$(".sign-up").css("visibility", "visible");
		$(".sign-out").css("visibility", "hidden");
		$(".mypage").css("visibility", "hidden");
	}
	else {
		$(".sign-in").css("visibility", "hidden");
		$(".sign-up").css("visibility", "hidden");
		$("sign-out").css("visibility", "visible");
		$("mypage").css("visibility", "visible");
	}
})	

</script>
</body>
</html>