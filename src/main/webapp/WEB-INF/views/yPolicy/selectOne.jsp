<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../resources/css/yPolicyCss.css" />
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