<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h4>인기게시물</h4>
<table class="table table-striped table-hover">
	<tr>
		<td>순위</td>
		<td>제목</td>
		<td>사용자</td>
		<td>추천수</td>
	</tr>
	<c:forEach items="${list}" var="one">
		<c:set var="i" value="${i+1}" />
		<tr>
			<td width="70">${i}</td>
			<td><a href="/cdb/bbs/bbs_contents?bbs_Id=${one.bbs_Id}">${one.bbs_title}</a></td>
			<td width="100">${one.member_id}</td>
			<td width="100">${one.c}</td>
		</tr>
	</c:forEach>
</table>
