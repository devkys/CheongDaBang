<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="bbs_recommend">

		<span class="input-group-text">bbs_Id</span> 
		<input type="text" class="form-control input-sm" name="bbs_Id"><br> 
		<span class="input-group-text">member_id</span> 
		<input type="text" class="form-control input-sm" name="member_id"><br> 

		<button type="submit" class="btn btn-secondary">좋아요 누르기</button>
	</form>
	<form action="bbs_recommend_count"> 
		<span class="input-group-text">게시글 번호</span> 
		<input type="text" class="form-control input-sm" name="bbs_Id"><br>
		<button type="submit" class="btn btn-secondary">좋아요 수</button>
	</form>

</body>
</html>