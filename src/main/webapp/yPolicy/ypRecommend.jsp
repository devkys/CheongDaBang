<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	
	$(function() {
		$('#b').on("click", function() {
			$.ajax({
				url : "ypRecommend",
				data : {
					YP_RQMFIELD : $('input[name="YP_RQMFIELD"]:checked').val(),
					YP_RQMFIELD : "제한없음",
					YP_REGION : $('#YP_REGION').val(),
					YP_RQMJOB : $('input[name="YP_RQMJOB"]:checked').val(),
					YP_CATEGORY : $('input[name="YP_CATEGORY"]:checked').val()
				},
				type : "GET",
				success : function(table) {
					$("#recommend").empty();
					$("#result").html(table);
				} // success
			}); // ajax
		})
	})
</script>
<style type="text/css">
h2 {
	color: #3981E5;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>
	<div id="recommendDiv"style="height: auto; min-height:100%; padding-bottom:50px;">
	<h2 style="color: #3981E5; font-weight: bold;">나에게 맞는 정책 찾기</h2>
	<hr>
		<div id="recommend">
		<br>
			<h2>1. 당신의 성별은?</h2>
			<input type='radio' class="form-check-input"
				name='YP_RQMFIELD' value='여성'>여성 <br> <input
				type='radio' class="form-check-input" name='YP_RQMFIELD' value='군인'>남성(군인)
			<br> <input type='radio' class="form-check-input"
				name='YP_RQMFIELD' value='남성'>남성 <br> <input
				type='radio' class="form-check-input" name='YP_RQMFIELD' value='제한'>선택안함
			<br>
			<hr>
			<h2>2. 지역</h2>
			<select class="form-select" id="YP_REGION" name="YP_REGION">
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
			<hr>
			<h2>3. 취업상태</h2>
			<input type='radio' class="form-check-input" name='YP_RQMJOB'
				value='미취업'>구직자 <br> <input type='radio'
				class="form-check-input" name='YP_RQMJOB' value='재직'>재직자 <br>
			<input type='radio' class="form-check-input" name='YP_RQMJOB'
				value='창업'>창업자 <br> <input type='radio'
				class="form-check-input" name='YP_RQMJOB' value='학생'>대학생 <br>
			<input type='radio' class="form-check-input" name='YP_RQMJOB'
				value='군인'>군인 <br> <input type='radio'
				class="form-check-input" name='YP_RQMJOB' value='농업'>농업 <br>
			<input type='radio' class="form-check-input" name='YP_RQMJOB'
				value='제한없음'>기타 <br>
				<hr> 
				<h2>4. 관심 분야</h2> 
				<input type='radio' class="form-check-input" name='YP_CATEGORY'
				value='생활·복지'>생활·복지 <br> <input type='radio'
				class="form-check-input" name='YP_CATEGORY' value='정책참여'>정책참여
			<br> <input type='radio' class="form-check-input"
				name='YP_CATEGORY' value='주거·금융'>주거·금융 <br> <input
				type='radio' class="form-check-input" name='YP_CATEGORY'
				value='창업지원'>창업지원 <br> <input type='radio'
				class="form-check-input" name='YP_CATEGORY' value='취업지원'>취업지원
			<br> <input type='radio' class="form-check-input"
				name='YP_CATEGORY' value='코로나19'>코로나19 <br>
				<br>
			<button id="b" class="recommendBtn">결과보기</button>
		</div>
		<div id="result"></div>
	</div>
	<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</body>
</html>