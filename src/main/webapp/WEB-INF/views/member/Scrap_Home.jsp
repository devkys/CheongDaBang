<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>주택</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="scrap_home">
	<tr class="ttt">
		<td><a href="${scrap_home.scrap_link}" target="_blank">${scrap_home.scrap_title}</a></td>
	</tr>
	</c:forEach>
	<tfoot>
		<tr align="center">
			<td><a href="Scrap_HomeALL" target="_blank"><button><strong>more+</strong></button></a></td>
		</tr>
	</tfoot>
</table>