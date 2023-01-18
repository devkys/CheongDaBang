<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div id="d1"></div>
	<div id="d2"></div>
	<!-- 제목, 글쓴이 검색 구분 가능할까? -->
	<button class="navyBtn" onClick="location.href='bbs_insert.jsp'">글
		쓰기</button>

	<form action="bbs_search_title">
		<input type="text" class="form-control input-sm" name="bbs_title"
			id="search"><br>
		<button id="b1">제목 검색</button>
		<div id="d2"></div>
	</form>
</body>
</html>