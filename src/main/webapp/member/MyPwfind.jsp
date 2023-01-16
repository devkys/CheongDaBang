<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="../resources/css/cdbfind.css">
</head>
<body>
	<form action="Pwfind">
		<div class="header">
			<h3>비밀번호 찾기</h3>
		</div>
		<div class="main">
			<table>
				<tr>
					<td>아이디</td>
					<td>: <input type="text" name="member_id"></td>
				</tr>
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
			<button class="button_CRUD">비밀번호 찾기</button>
		</div>
	</form>
</body>
</html>