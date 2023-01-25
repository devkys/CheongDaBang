<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/menuCss.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

</head>
<body>
 <div>
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
</div>
		<div id="center" style="width: 80%; margin-left: auto; margin-right: auto">
			<h3 style="text-align: center;">게시글 작성</h3>
			<hr color="grey">
			<form 	action="bbs_insert" 
					method="post"
					enctype="multipart/form-data">
				<span class="input-group-text">제목</span> <input type="text"
					class="form-control input-sm" name="bbs_title" placeholder="title"><br>
				<span class="input-group-text">작성자</span> <input type="text"
					class="form-control" name="member_id" placeholder="id"><br>
				<span class="input-group-text">내용</span> <input type="text"
					class="form-control" name="bbs_contents" placeholder="bbs_contents" style="height: 360px;" ><br>
				<span class="input-group-text">IMG</span> 파일 선택: <input type="file"
					name="file" id="file"><br>
				<button type="submit" class="btn btn-secondary">등록</button>
			</form>
		</div>

	<div>
	<br>
	<br>
	<br>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
</body>
</html>