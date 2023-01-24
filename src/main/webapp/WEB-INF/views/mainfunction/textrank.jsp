<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3>검색어 순위</h3>
<table class="table-primary" border="3" >
	<c:forEach items="${list}" var="one">
		<c:set var = "i" value = "${i+1}"/>
		<tr>
			<td width="50">${i}</td>
			<td width="150">${one.filtertext}</td>
		</tr>
	</c:forEach>
</table>
