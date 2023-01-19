<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/yPolicyCss.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script>
	$(function() { // ram에 body를 dom tree로 다 읽어들이면 통신해서 다 불러오기
		$('#b').click(function() {
			/* 			$.ajax({
			 url : 'YpList',
			 data : {
			 page : 1
			 },
			 success : function(table) {
			 $('#result').html(table)
			 }
			 }) */
			pageNum = $(this).attr('page')
			$.ajax({
				url : 'YpList',
				data : {
					page : pageNum
				},
				success : function(table) {
					$('#result').html(table)
				}
			})
		})
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
					$("#button").empty(); // 페이지 버튼 사라짐
					$("#result").html(table);
				} // success
			}); // ajax
		}) // b2
		$('.tab').on("click", function() {
			category = $(this).text()
			// alert(category)
			$.ajax({
				url : "selectOne",
				data : {
					YP_CATEGORY : category
				},
				type : "GET",
				success : function(table) {
					$("#button").empty(); // 페이지 버튼 사라짐
					$("#result").html(table);
				} // success
			}); // ajax
		})
	})
</script>
</head>
<body>
	<!-- 정책명 -->
	<div class="input-group mb-3">
		<input type="text" class="form-control"
			placeholder="정책 유형과 지역도 선택해주세요." id='YP_NAME'>
		<button class="btn btn-outline-primary" type="submit" id='b2'>검색</button>
	</div>
	<!-- 정책유형 -->
	정책유형:
	<input type='radio' class="form-check-input" name='YP_CATEGORY'
		value='생활·복지'>생활·복지
	<input type='radio' class="form-check-input" name='YP_CATEGORY'
		value='정책참여'>정책참여
	<input type='radio' class="form-check-input" name='YP_CATEGORY'
		value='주거·금융'>주거·금융
	<input type='radio' class="form-check-input" name='YP_CATEGORY'
		value='창업지원'>창업지원
	<input type='radio' class="form-check-input" name='YP_CATEGORY'
		value='취업지원'>취업지원
	<input type='radio' class="form-check-input" name='YP_CATEGORY'
		value='코로나19'>코로나19
	<!-- 지역 -->
	<br> 지역:
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
	<!-- 카테고리별 리스트 불러오기 -->
	<div class="PolicyTabDiv">
		<button class="PolicyTab">생활·복지</button>
		<button class="PolicyTab">정책참여</button>
		<button class="PolicyTab">주거·금융</button>
		<button class="PolicyTab">창업지원</button>
		<button class="PolicyTab">취업지원</button>
		<button class="PolicyTab">코로나19</button>
	</div>
	<hr>
	<div id="result">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>정책유형</th>
					<th>정책명</th>
					<th>기관구분</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.YP_CATEGORY}</td>
						<td><a
							href="detailOne?YP_NAME=${vo.YP_NAME}&YP_VIEW=${vo.YP_VIEW}">${vo.YP_NAME}</a></td>
						<td>${vo.YP_PI}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="button" class="btn-group">
		<%
			int pages = (int) request.getAttribute("pages");
		for (int p = 1; p <= pages; p++) {
		%>
		<button id="b" class="btn btn-primary" page='<%=p%>'><%=p%></button>
		<%
			}
		%>
	</div>
</body>
</html>