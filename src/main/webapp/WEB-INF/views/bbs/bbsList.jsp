<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table" style="width: 80%; margin-left: auto; margin-right: auto">
	<tr>

		<td>이미지</td>
		<td>제목</td>
		<td>작성자</td>
	</tr>
	<c:forEach items="${list}" var="vo">
	<tr onclick="location. href='${path}/cdb/bbs/bbs_contents?bbs_Id=${vo.bbs_Id}'" style="cursor:pointer;">
		<td><img src="../resources/upload/${vo.bbs_img}" width="100" height="100"></td>
		<td>${vo.bbs_title}</td>
		<td>${vo.member_id}</td>
	</tr>
	</c:forEach>
</table>
