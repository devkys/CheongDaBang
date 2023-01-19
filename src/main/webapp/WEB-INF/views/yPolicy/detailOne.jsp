<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script>
	$('#scrap').click(function() {
		$.ajax({
			url : "policy_scrap",
			type : "POST",
			dataType: "json",
			contentType : "application/json",
			data : {
				scrap_title: $('#YP_NAME').val(),
				scrap_link: 'detailOne?YP_NAME=${vo.YP_NAME}&YP_VIEW=${vo.YP_VIEW}',
				scrap_type: "Policy",
				scrap_member : "member"
			},
			success : function(JSON.stringify(data)) {
				console.log(data);
				if (data == 0) {
					alert("스크랩 완료");
					location.reload();
				} else {
					alert("스크랩 취소");
					location.reload();
				}
			} // success
		}) // ajax
	}) // scrap
</script>

<table class="table">
	<c:forEach items="${list}" var="vo">
		<tr>
			<td>정책아이디</td>
			<td>${vo.YP_ID}</td>
		</tr>
		<tr>
			<td>정책명</td>
			<td>${vo.YP_NAME}</td>
			<td><button id="scrap">스크랩</button></td>
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