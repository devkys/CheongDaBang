<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table">
<!-- bbs검색 페이지 연결  -->
	<tr>
		<td>id</td>
	</tr>
	<c:forEach items="${list2}" var="one">
	<tr>
		<td>${one.title} </td>

	</tr>
	</c:forEach>
</table>
