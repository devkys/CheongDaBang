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
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>

<title>Insert title here</title>
<!-- Bootstrap CSS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
	<div id="wrap" style="height: auto; min-height: 100%; padding-bottom: 50px;">
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
					if (filtervar == "게시물내용") {
						url = "bbsfilter"
						console.log('test0');
						
					}if (filtervar == "게시물제목") {
						url = "bbsfilter"
							console.log('test1');
						}  
					else if (filtervar == "뉴스") {
						url = "newsfilter"
							console.log('test2')
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


<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</body>


</html>