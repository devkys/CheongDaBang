<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h4>최근뉴스</h4>
<table class="table table-striped table-hover">
	<tr>
		<td>등록순</td>
		<td>제목</td>
		<td>카테고리</td>
		<td>등록일</td>
	</tr>
	<c:forEach items="${list}" var="one">
	<c:set var="i" value="${i+1}" />
		<tr>
			<td width="70">${i}</td>
			<td><a href="newsOne?news=${one.no}">${one.title}</a></td>
			<td width="100">${one.category}</td>
			<td width="100"><fmt:formatDate value="${one.pubdate}" pattern="yyyy-MM-dd" /></td>
			
		</tr>
	</c:forEach>
</table>
