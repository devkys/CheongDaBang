<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../resources/css/yPolicyCss.css" />
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script>
	/* 로그인 여부 */
	$(document).ready(function() {
		if ("${member_id}" === '') {
			$(".sign-in").css("visibility", "visible");
			$(".sign-up").css("visibility", "visible");
			$(".sign-out").css("visibility", "hidden");
			$(".mypage").css("visibility", "hidden");
		} else {
			$(".sign-in").css("visibility", "hidden");
			$(".sign-up").css("visibility", "hidden");
			$("sign-out").css("visibility", "visible");
			$("mypage").css("visibility", "visible");
		}
	})
</script>
<style>
#d1 {
	width: 100%;
	text-align: center;
	display: inline-block;
}

h1 {
	color: #3981E5;
	font-weight: bold;
}
</style>
<div id="d1">
	<c:if test="${empty list}">
		<h1>결과가 없습니다</h1>
	</c:if>
	<c:forEach items="${list}" var="vo">
		<div class="policyCardList">
			<div class="policyCardList-body">
				<h1>${vo.YP_CATEGORY}</h1>
				<p>
					<a href="detailOne?YP_NAME=${vo.YP_NAME}&YP_VIEW=${vo.YP_VIEW}">${vo.YP_NAME}</a>
				</p>
				<p>${vo.YP_PI}</p>
			</div>
		</div>
	</c:forEach>
</div>