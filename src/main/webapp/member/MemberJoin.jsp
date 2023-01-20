<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청다방 회원가입</title>
<link rel="stylesheet" href="../resources/css/cdbjoin.css">
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>
<script src="../resources/js/cdbjoinjoin.js"></script>
<script src="https://ajax.googlyyeapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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


// jquery start
$(function() {
	// ajax 아이디 중복 확인 기능
	$('#b0').click(function() {
		idValue = $('#id').val()
		$.ajax({
			url : 'idCheck',
			data : {
				member_id : idValue
			},
			success : function(x) {
				$('#idinput').html(" " + x + " ")
				if(x == "아이디 사용 가능"){
					idd = 1; // 아이디가 사용 가능하면 가능하다고 리턴
				} else{
					idd = 0;
				}
			} //success
		}) //ajax
	}) //b0
}) // function
// jquery end
</script>
</head>
<body>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
<form id="memjoin" action="memjoin">
	<div class="join">
		<div class="input">
			<div class="header">
				<a href="http://www.google.com"><img src="../resources/img/chdabang.png"></a>
				<h1>청다방 회원 가입 하기</h1>
			</div>
			<table>
				<tr>
					<td colspan="2">아이디</td>
				</tr>
				<tr> 
					<td><input type="text" name="member_id" id='id' placeholder="4자 이상의 아이디를 입력하세요" onkeyup="idcheck()" value="hongil"></td>
					<td><button type ="button" id='b0'>아이디 중복 확인</button></td>
				</tr>
				<tr>
					<td colspan="2"><div id="idinput">아이디는 '필수' 입력입니다</div></td>
				</tr>
				<tr>
					<td colspan="2">비밀번호</td>
				</tr>
				<tr> 
					<td colspan="2"><input type="password" name="member_pw" id='pw' placeholder="비밀번호를 입력하세요" onkeyup="pwic()" value="1564"></td>
				</tr>
				<tr>
					<td colspan="2"><div id="pwdinput">비밀번호는 '필수' 입력입니다</div></td>
				</tr>
				<tr>
					<td colspan="2">비밀번호 재확인</td>
				</tr>
				<tr> 
					<td><input type="password" name="pwcheck" id='pwcheck' placeholder="비밀번호를 확인하세요"></td>
					<td><button type ="button" onclick="pwcheck2()">비밀번호 확인</button></td>
				</tr>
				<tr>
					<td colspan="2"><div id="pwdcheck">비밀번호 재확인은 '필수' 입니다</div></td>
				</tr>
				<tr>
					<td colspan="2">이름</td>
				</tr>
				<tr> 
					<td colspan="2"><input type="text" name="member_name" placeholder="이름을 입력하세요" required="required" ></td>
				</tr>
				<tr>
					<td colspan="2">거주지</td>
				</tr>
				<tr> 
					<td colspan="2"><button type ="button" onclick="address()">주소 검색하기</button></td>
				</tr>
				<tr>
					<td><input type="text" id="roadaddr" name="roadaddress" placeholder="도로명 주소(주소 검색)" readonly> </td>
					<td><input type="text" id="detailaddr" name="detailedaddress" placeholder="상세 주소(직접 입력)"></td>
				</tr>
				<tr>
					<td><input type="text" id="home" name="member_home" placeholder="주소 입력 버튼으로 주소를 입력하세요" readonly required="required"><br></td>
					<td><button type ="button" onclick="addrinput()">주소 입력</button></td>
				</tr>
				<tr>
					<td colspan="2">생년월일<br> <input type="date" name="member_birth" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">성별</td>
				</tr>
				<tr>
					<td>
						<select name="member_gen">
							<option value="남자" selected="selected">남자
							<option value="여자">여자
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">전화번호</td>
				</tr>
				<tr>
					<td><input type="tel" name="member_tel" pattern="010-[0-9]{4}-[0-9]{4}" placeholder="전화번호를 입력하세요 - 양식 : 010-####-####" id="phone" value="010-5556-6666" required="required" ><br></td>
				</tr>
			</table>
			<br>
			<div id="joinjoin">
				<button type="button" onclick="joincomplete2()" id="joincomplete">가입하기</button>
			</div>
		</div>
	</div>
</form>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</body>
</html>