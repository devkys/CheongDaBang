<%@page import="com.multi.cdb.yPolicy.YPolicyServiceImpl"%>
<%@page import="com.multi.cdb.yPolicy.YPolicyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/yPolicyCss.css" />
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script src="https://kit.fontawesome.com/4e0c810bcc.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	
	req = {
		scrap_title : "${list[0].YP_NAME}",
		scrap_link : '/cdb/yPolicy/detailOne?YP_NAME=${list[0].YP_NAME}&YP_VIEW=0',
		scrap_type : "Policy",
		scrap_member : "${member_id}"
	};
	// 스크랩 관련 ajax
	$(function() {
		$('#scrap').click(function() {
			if (req.scrap_member === '') {
				alert("로그인이 필요한 서비스입니다. 로그인 페이지로 넘어갑니다.");
				location.href = "/cdb/member/CdbLogin.jsp";
			} else {
				$.ajax({
					url : "/cdb/scrap/policy_scrap",
					type : "POST",
					dataType : "json",
					contentType : 'application/json',

					data : JSON.stringify(req),
					success : function(data) {
						console.log(data);

						if (data == 0) {
							alert("스크랩 완료");
							location.reload();
						} else {
							alert("스크랩 취소");
							location.reload();
						}
					} //success

				}) //ajax
			} // else
		} //function
		) // click
	}) // root function
	
	function review(){
		var yp_id = "${list[0].YP_ID}";
		var yp_name = "${list[0].YP_NAME}";
		location.href='/cdb/emotion/review?yp_name=' + yp_name + '&yp_id='  + yp_id;
	}
</script>
<style>
.detailTitle {
	color: #6a6a6a;
	font-weight: bold;
	text-align: center;
}

#scrap {
	margin-left: 100px;
}

#back {
	margin: 0px 0px 50px 100px;
}

table {
	margin-left: auto;
	margin-right: auto;
}

#review {
	margin: 0px 0px 50px 100px;
}
</style>
<%@include file="../includes/header.jsp"%>
<br>
<table class="table" style="table-layout: fixed">
	<c:forEach items="${list}" var="vo">
		<h3>${vo.YP_NAME}</h3>

		<tr>
			<td width="10%" class="detailTitle">정책아이디</td>
			<td width="50%">${vo.YP_ID}<button id="scrap"
					class="btn btn-outline-primary">스크랩</button></td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">조회수</td>
			<td>${vo.YP_VIEW}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">기관구분</td>
			<td>${vo.YP_PI}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">지역</td>
			<td>${vo.YP_REGION}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">정책유형</td>
			<td>${vo.YP_CATEGORY}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">정책소개</td>
			<td>${vo.YP_CONTENT}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">지원규모</td>
			<td>${vo.YP_SSIZE}</td>
		</tr>
		<tr>
			<td rowspan="6" width="10%" class="detailTitle">참여요건</td>
		</tr>
		<tr>
			<td>연령제한: ${vo.YP_RQMAGE}</td>
		</tr>
		<tr>
			<td>취업상태: ${vo.YP_RQMJOB}</td>
		</tr>
		<tr>
			<td>학력: ${vo.YP_RQMEDU}</td>
		</tr>
		<tr>
			<td>전공: ${vo.YP_RQMMAJR}</td>
		</tr>
		<tr>
			<td>특화분야: ${vo.YP_RQMFIELD}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">신청기관</td>
			<td>${vo.YP_AI}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">신청기간</td>
			<td>${vo.YP_PERIOD}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">신청절차</td>
			<td>${vo.YP_PROCEDURE}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">심사발표</td>
			<td>${vo.YP_ANM}</td>
		</tr>
		<tr>
			<td width="10%" class="detailTitle">사이트 링크</td>
			<td>${vo.YP_URL}</td>
		</tr>
	</c:forEach>
</table>

<button onclick="history.back()" class="btn btn-outline-secondary"
	id="back">Back</button>

<button class="btn btn-outline-info" id="review" onclick={review()}>Review</button>


<%@include file="../includes/footer.jsp"%>