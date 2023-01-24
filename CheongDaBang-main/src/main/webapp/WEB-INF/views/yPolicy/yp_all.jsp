<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청다방</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/4e0c810bcc.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/yPolicyCss.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
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
	$(function() {
		$('#b2').on("click", function() {
			$.ajax({
				url : "search",
				data : {
					YP_NAME : $('#YP_NAME').val(),
					YP_CATEGORY : $('input[name="YP_CATEGORY"]:checked').val(),
					YP_REGION : $('#YP_REGION').val()
				},
				type : "GET",
				success : function(table) {
					$("#pageButton").empty(); // 페이지 버튼 사라짐
					$("#result").html(table);
				} // success
			}); // ajax
		}) // b2
		$('.PolicyTab').on("click", function() {
			category = $(this).text()
			// alert(category)
			$.ajax({
				url : "selectOne",
				data : {
					YP_CATEGORY : category
				},
				type : "GET",
				success : function(table) {
					$("#pageButton").empty(); // 페이지 버튼 사라짐
					$("#result").html(table);
				} // success
			}); // ajax
		})
	})
</script>
</head>
<body>
	<%@include file="../includes/header.jsp"%>
	<br>
	<div id="searchDiv">
		<h3>정책검색</h3>
		<!-- 정책명 -->
		<div class="input-group mb-3">
			<input type="text" class="form-control"
				placeholder="정책 유형과 지역도 선택해주세요." id='YP_NAME' style="z-index: 1;">
			<button class="btn btn-outline-primary" type="submit" id='b2'>검색</button>
		</div>
		<!-- 정책유형 -->
		<label class="searchLabel">정책유형</label>
		<div style="text-align: center;">
			<input type='radio' class="form-check-input" name='YP_CATEGORY'
				value='생활·복지'>생활·복지 <input type='radio'
				class="form-check-input" name='YP_CATEGORY' value='정책참여'>정책참여
			<input type='radio' class="form-check-input" name='YP_CATEGORY'
				value='주거·금융'>주거·금융 <input type='radio'
				class="form-check-input" name='YP_CATEGORY' value='창업지원'>창업지원
			<input type='radio' class="form-check-input" name='YP_CATEGORY'
				value='취업지원'>취업지원 <input type='radio'
				class="form-check-input" name='YP_CATEGORY' value='코로나19'>코로나19
		</div>
		<!-- 지역 -->
		<label class="searchLabel">지역</label><br> <select
			class="form-select" id="YP_REGION" name="YP_REGION">
			<option value='중앙부처'>중앙부처</option>
			<option value='서울'>서울</option>
			<option value='부산'>부산</option>
			<option value='대구'>대구</option>
			<option value='인천'>인천</option>
			<option value='광주'>광주</option>
			<option value='대전'>대전</option>
			<option value='울산'>울산</option>
			<option value='경기'>경기</option>
			<option value='강원'>강원</option>
			<option value='충북'>충북</option>
			<option value='충남'>충남</option>
			<option value='전북'>전북</option>
			<option value='전남'>전남</option>
			<option value='경북'>경북</option>
			<option value='경남'>경남</option>
			<option value='제주'>제주</option>
			<option value='세종'>세종</option>
		</select>
	</div>
	<hr>
	<!-- 카테고리별 리스트 불러오기 -->
	<div class="PolicyTabDiv">
		<button class="PolicyTab">
			<a href="yp_all?page=1" class="AllPolicyBtn">전체정책</a>
		</button>
		<button class="PolicyTab" value='생활·복지'>생활·복지</button>
		<button class="PolicyTab" value='정책참여'>정책참여</button>
		<button class="PolicyTab" value='주거·금융'>주거·금융</button>
		<button class="PolicyTab" value='창업지원'>창업지원</button>
		<button class="PolicyTab" value='취업지원'>취업지원</button>
		<button class="PolicyTab" value='코로나19'>코로나19</button>
	</div>
	<hr>
	<div id="result">
		<br>
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
	<div id="pageButton" style="text-align: center; display: inline-block;">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<%-- <c:if test="${pageMaker.prev eq true }"> --%>
				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link"
						href="yp_all?pageNum=${ pageMaker.startPage - 1 }">&laquo;</a></li>
				</c:if>

				<c:forEach var="i" begin="${ pageMaker.startPage }"
					end="${pageMaker.endPage}">
					<li class="page-item"><a class="page-link"
						href="yp_all?pageNum=${ i }">${ i }</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<%-- 			<c:if test="${pageMaker.next eq true }"> --%>
					<li class="page-item"><a class="page-link"
						href="yp_all?pageNum=${ pageMaker.endPage + 1 }">&raquo;</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<%@include file="../includes/footer.jsp"%>
</body>
</html>