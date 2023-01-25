<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청다방 마이페이지</title>
<link rel="stylesheet" href="../resources/css/header.css">
<link rel="stylesheet" href="../resources/css/footer.css">
<link rel="stylesheet" href="../resources/css/cdbmypage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
//jquery start
$(function() {
	// ajax 스크랩 리스트 출력 - 일자리
		$.ajax({
			url : "Scrap_Job",
			success : function(x) {
				if(x.trim().length < 1){
					$('#Job').append("<br>스크랩 한 일자리가 없습니다")
				}else{
					$('#Job').html(x)
				}
			}
		})//ajax
	// ajax 스크랩 리스트 출력 - 정책
		$.ajax({
			url : "Scrap_YPolicy",
			success : function(x) {
				if(x.trim().length < 1){
					$('#YPolicy').append("<br>스크랩 한 청년 정책이 없습니다")
				}else{
					$('#YPolicy').html(x)
				}
			}
		})//ajax
	// ajax 스크랩 리스트 출력 - 주택
		$.ajax({
			url : "Scrap_Home",
			success : function(x) {
				if(x.trim().length < 1){
					$('#Home').append("<br>스크랩 한 주택 정책이 없습니다")
				}else{
					$('#Home').html(x)
				}
			}
		})//ajax
	// ajax 커뮤니티 글 확인
		$.ajax({
			url : "MyBbs",
			success : function(x) {
				if(x.trim().length < 1){
					$('#ComB').append("<br>작성하신 글이 없습니다")
				}else{
					$('#ComB').html(x)	
				}
			}
		})//ajax
	// ajax 커뮤니티 댓글 확인
		$.ajax({
			url : "MyBbsReply",
			success : function(x) {
				if(x.trim().length < 1){
					$('#ComR').append("<br>작성한 댓글이 없습니다")
				}else{
					$('#ComR').html(x)	
				}
			}
		})//ajax
})//function
//jquery end
</script>
</head>
<body>
<%@ include file="../WEB-INF/views/includes/header.jsp" %>
<h1 align="center">청다방 마이페이지</h1>
<div class="head"><a href="MyInfoEdit.jsp"><button type="button" style="">내 정보 수정하기</button></a>&nbsp;<a href="logout">로그아웃</a><br></div>
<br>
<h3 align="center">내 스크랩 모아보기(최신순 10개)</h3><br>
<div class="MyPageMain">
	<div class="mylist" id="YPolicy">청년정책</div>
	<div class="mylist" id="Home">임대주택</div>
	<div class="mylist" id="Job">일자리</div>
	<div class="mylist" id="ComB">커뮤니티에 작성하신 글</div>
	<div class="mylist" id="ComR">커뮤니티에 작성하신 댓글</div>
</div>
<%@ include file="../WEB-INF/views/includes/footer.jsp" %>
</body>
</html>