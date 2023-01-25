<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="/resources/css/main.css"> -->
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>

<title>Insert title here</title>
<!-- Bootstrap CSS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		//alert('test...')
		$.ajax({
			url : "bbs_all", 
			success : function(result) { 
				$('#d2').html(result)
			},
			error : function() {
				alert('실패.@@@')
			}
		})
		$.ajax({
			url : "bbs_recommend_sort", 
			success : function(result) { 
				$('#d1').html(result)
			},
			error : function() {
				alert('실패.@@@')
			}
		})

	})
</script>
<body>
 <div>
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
</div>

	<div id="d1"></div>
	<div id="d2"></div>
	<br>
	<!-- 제목, 글쓴이 검색 구분 가능할까? -->
	<div style="width: 80%; ">
	<button type="button" class="btn btn-outline-primary" onClick="location.href='bbs_insert.jsp'" style="float: right">글
		쓰기</button>
	</div>
	<br>
	<hr>
	<div style="width: 80%; margin-left: auto; margin-right: auto;" >
	<form action="bbs_search_title">
		<input type="text" class="form-control input-sm" name="bbs_title"
			id="search"   >
		<button id="b1" class="btn btn-outline-primary" style="float: right;">제목 검색</button>
	</form>	
	</div>
	<br>
	<br>
	<hr>
	<div>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</div>

</body>
</html>