<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">

<link rel="stylesheet" href="/resources/css/main.css">

<title>Insert title here</title>
<!-- Bootstrap CSS -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
			url : "ypList",
			success : function(result) {
				$('#d3').html(result)
			},
			error : function() {
				alert('실패')
			}
		})
	})
</script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<form id="searchform">
				<div class="search-wrap">
					<input name="filtertext" type="text"> <select name="filter">
						<option value="bbs_contents">게시물내용</option>
						<option value="bbs_title">게시물제목</option>
						<option value="news">뉴스</option>
					</select>
				</div>
			</form>
			<button onclick="go_search()">검색</button>
			<script>
				function go_search() {
					var filtervar = $("select[name='filter'] option:selected")
							.text();
					var url = ""
					console.log(filtervar);
					if (filtervar == "게시물내용" || "게시물제목") {
						url = "bbsfilter"
						console.log('test1');
					} else if (filtervar == "뉴스") {
						url = "newsfilter"
					}
					$("#searchform").attr("action", url).submit();

				}
			</script>
		</div>
		<!-- header -->
		<div id="nav">nav</div>
		<!-- nav -->
		
		<hr>
		<div id="content_bbs">
			<div id="d1"></div>
		</div>
		<!-- 게시물 -->
		
		<div id="content_news">
			<div id="d2"></div>
		</div>
		<!-- 뉴스 -->
		
		<div id="content_YP">
			<div id="d3"></div>
		</div>
		<div id="footer">
		
			배너
		
		</div>
		<!-- 배너 -->
	</div>


</body>


</html>