<%@page import="com.multi.cdb.scrap.ScrapVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% @SuppressWarnings("unchecked")
List<ScrapVO> list = (List<ScrapVO>)request.getAttribute("list");
int size = list.size();
if(size > 1){
%>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>일자리</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="scrap_job">
	<tr class="ttt">
		<td><a href="${scrap_job.scrap_link}" target="_blank">${scrap_job.scrap_title}</a></td>
	</tr>
	</c:forEach>
	<tfoot>
		<tr align="center">
			<td><a href="Scrap_JobALL" target="_blank"><button><strong>more+</strong></button></a></td>
		</tr>
	</tfoot>
</table>
<% } %>