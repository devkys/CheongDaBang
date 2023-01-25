<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청 다 방</title>
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script type="text/javascript" src="../resources/js/jquery-3.6.1.js"></script>
<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>
<style>
.one {
	text-align: center;
}

.one h2 {
	color: #3981E5;
}

</style>
</head>
<body>
<%@include file="../includes/header.jsp" %>

<div style="height: auto; min-height: 100%; padding-bottom:50px;">

<div class='one'>
<h2>${list[0].YP_NAME} 정책 한줄 후기</h2>
<h3>${list[0].YP_NAME} 정책 점수: <span style="color: red;">${jumsu}</span></h3>
정책 한줄 후기는 작성자의 <b>감정을 분석</b>후 정책 점수에 반영됩니다.
<p>
정책 한줄 후기는 익명성을 보장하여 일회성 닉네임을 사용합니다. <br>
후기 등록시 수정 및 삭제가 불가하니 유의하여 작성해주세요. <br></p>
</div>


<form action='review_input' style="margin:10px 10px 10px 10px;">
<div class="mb-3">
	<input name="yp_title" value="${list[0].YP_ID}" type="hidden">
  <label for="exampleFormControlInput1" class="form-label">닉네임</label>
  <input class="form-control" id="exampleFormControlInput1" placeholder="뿡뿡" name="user">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">정책의 한줄 후기</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="reply"></textarea>
</div>
<button class="btn btn-outline-primary">submit</button> <br><br>
</form>


<b style="margin-top: 20px; padding: 20px 20px 20px 20px;">사용자 댓글 </b>
<div class="show">

</div>
</div>
<%@include file="../includes/footer.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	$('#card').empty();
	$.ajax({
		method: 'GET',
		url: 'show_review?yp_id='+"${list[0].YP_ID}",
		dataType:'json',
		success: function(data){
			$.each(data, function(idx, val){
				html = '';
				html+='<div class="card" style="margin: 10px 10px 10px 10px;">';
				html+='<div class="card-header">' + val.user + '</div>';
				html+='<div class="card-body">' + val.reply + '</div>';
				html+='</div>';
				
				$('.show').append(html);
				
			})	
		}
	})
})
</script>
</body>
</html>