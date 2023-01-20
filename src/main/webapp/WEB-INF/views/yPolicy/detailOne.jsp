<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script>
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
	req = {
			scrap_title: "${list[0].YP_NAME}",
			scrap_link: 'detailOne?YP_NAME=${list[0].YP_NAME}&YP_VIEW=0',
			scrap_type: "Policy",
			scrap_member : "${member_id}"
	};
	// 스크랩 관련 ajax
	$(function(){
		$('#scrap').click(
			function(){
				//var title = $('.title').text();
					$.ajax({
						url: "/cdb/scrap/policy_scrap",
						type: "POST",
						dataType: "json",
						contentType : 'application/json',
						
						data: JSON.stringify(req),
						success: function(data) {
							console.log(data);
							
							if(data == 0) {
								alert("스크랩 완료");
								location.reload();
							} else {
								alert("스크랩 취소");
								location.reload();
							}
						} //success
						
					}) //ajax
			
			} //function
		) // click
	}) // root function
	
</script>
<body>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
<table class="table">
	<c:forEach items="${list}" var="vo">
		<tr>
			<td>정책아이디</td>
			<td>${vo.YP_ID}</td>
		</tr>
		<tr>
			<td>정책명</td>
			<td>${vo.YP_NAME}</td>
			<td><button id="scrap" value="${vo.YP_NAME}">스크랩</button></td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${vo.YP_VIEW}</td>
		</tr>
		<tr>
			<td>기관구분</td>
			<td>${vo.YP_PI}</td>
		</tr>
		<tr>
			<td>지역</td>
			<td>${vo.YP_REGION}</td>
		</tr>
		<tr>
			<td>정책유형</td>
			<td>${vo.YP_CATEGORY}</td>
		</tr>
		<tr>
			<td>정책소개</td>
			<td>${vo.YP_CONTENT}</td>
		</tr>
		<tr>
			<td>지원규모</td>
			<td>${vo.YP_SSIZE}</td>
		</tr>
		<tr>
			<td rowspan="6">참여요건</td>
		</tr>
		<tr>
			<td>${vo.YP_RQMAGE}</td>
		</tr>
		<tr>
			<td>${vo.YP_RQMJOB}</td>
		</tr>
		<tr>
			<td>${vo.YP_RQMEDU}</td>
		</tr>
		<tr>
			<td>${vo.YP_RQMMAJR}</td>
		</tr>
		<tr>
			<td>${vo.YP_RQMFIELD}</td>
		</tr>
		<tr>
			<td>신청기관</td>
			<td>${vo.YP_AI}</td>
		</tr>
		<tr>
			<td>신청기간</td>
			<td>${vo.YP_PERIOD}</td>
		</tr>
		<tr>
			<td>신청절차</td>
			<td>${vo.YP_PROCEDURE}</td>
		</tr>
		<tr>
			<td>심사발표</td>
			<td>${vo.YP_ANM}</td>
		</tr>
		<tr>
			<td>사이트 링크</td>
			<td>${vo.YP_URL}</td>
		</tr>
	</c:forEach>
</table>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</body>