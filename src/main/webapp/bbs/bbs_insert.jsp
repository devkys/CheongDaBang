<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="#">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

</head>
<body>
	<div id="total">
		<div id="center">
			<h3 style="text-align: center;">글쓰기</h3>
			<hr color="red">
			<form 	action="bbs_insert" 
					>
				
				<span class="input-group-text">제목</span> 
				<input type="text" class="form-control input-sm" name="bbs_title"><br>
				 
				<span class="input-group-text">작성자</span>
				<input type="text" class="form-control" name="member_id"><br>
				
				<span class="input-group-text">내용</span> 
				<input type="text" class="form-control" name="bbs_contents"><br> 
				
				<span class="input-group-text">이미지</span> 
				파일 선택: <input type="file" name="bbs_img"><br>
				 
				<button type="submit" class="btn btn-secondary">글쓰기 등록</button>
			</form>
		</div>
	</div>
</body>
</html>