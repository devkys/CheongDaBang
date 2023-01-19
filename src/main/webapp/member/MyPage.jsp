<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청다방 마이페이지</title>
<link rel="stylesheet" href="../resources/css/header.css">
<link rel="stylesheet" href="../resources/css/footer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
//jquery start
$(function() {
	// ajax 스크랩 리스트 출력 - 일자리
		$.ajax({
			url : "Scrap_Job",
			success : function(x) {
				if(x.trim().length < 1){
					$('#Job').html("스크랩 한 내용이 없습니다")
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
					$('#YPolicy').html("스크랩 한 내용이 없습니다")
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
					$('#Home').html("스크랩 한 내용이 없습니다")
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
					$('#Comb').html("작성하신 글이 없습니다")
				}else{
					$('#Comb').html(x)	
				}
			}
		})//ajax
	// ajax 커뮤니티 댓글 확인
		$.ajax({
			url : "MyBbsReply",
			success : function(x) {
				if(x.trim().length < 1){
					$('#ComR').html("작성한 댓글이 없습니다")
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
<input type="hidden" name="member_id" value="${member_id}">
마이페이지 버튼 누르면 여기로 옴 여기가 마이페이지 메인화면 <br>
<a href="logout">로그아웃</a><br>
<a href="MyInfoEdit.jsp"><button>내 정보 수정하기</button></a><br>
커뮤니티 작성 글 댓글 모아보기<br>
<!-- 최신 10개 정도 출력 후 more 버튼 누르면 더 많이 보여주는 다른 창으로 이동 -->
내가 쓴 글<br>
내가 쓴 댓글<br>
<br>
스크랩 모아보기<br>
청년정책<br>
<div id="YPolicy"></div>
<br>
임대주택<br>
<div id="Home"></div>
<br>
일자리<br>
<div id="Job"></div>
<br>
커뮤니티에 작성하신 글<br>
<div id="ComB"></div>
<br>
커뮤니티에 작성하신 댓글<br>
<div id="ComR"></div>

<%@ include file="../WEB-INF/views/includes/footer.jsp" %>
</body>
</html>