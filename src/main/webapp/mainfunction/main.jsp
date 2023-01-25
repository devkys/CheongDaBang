<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet" href="/resources/css/main.css"> -->
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="../resources/css/main.css">

<title>Insert title here</title>
<!-- Bootstrap CSS -->

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "bbsList",
			success : function(result) {
				$('#d1').html(result)
			},
			error : function() {
				alert('실패')
			}
		})
		$.ajax({
			url : "newsList",
			success : function(result) {
				$('#d2').html(result)
			},
			error : function() {
				alert('실패')
			}
		})
		$.ajax({
			url : "jobList",
			success : function(result) {
				$('#d3').html(result)
			},
			error : function() {
				alert('실패')
			}
		})
		$.ajax({
			url : "ypList",
			success : function(result) {
				$('#d4').html(result)
			},
			error : function() {
				alert('실패')
			}
		})

		$.ajax({
			url : "textrank",
			success : function(result) {
				$('#d5').html(result)
			},
			error : function() {
				alert('실패')
			}
		})

	})
</script>
</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>
	<div id="wrap"
		style="height: auto; min-height: 100%; padding-bottom: 50px;">

		<!-- header -->
		<hr>
		<div id="content1">
			<div id="content_bbs">
				<div id="d1"></div>
			</div>
			<!-- 게시물 -->

			<div id="content_news">
				<div id="d2"></div>
			</div>
			<!-- 뉴스 -->
		</div>

		<div id="content2">
			<div id="textrank">
				<div id="d5"></div>
			</div>
			<!-- 검색어 랭킹 -->

			<div id="content_job">
				<div id="d3"></div>
			</div>
			<!-- 채용정보 -->
		</div>
		<div id="content3">
			<div id="content_YP">
				<div id="d4"></div>
			</div>
		</div>
		<div id="footer">배너</div>
		<!-- 배너 -->
	</div>

	<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</body>

</html>