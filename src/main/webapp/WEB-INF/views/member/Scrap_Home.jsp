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
			<th><strong>주택</strong></th>
		</tr>
	</thead>
	<c:forEach items="${list}" var="scrap_home" >
	<tr >
		<td><a href="${scrap_home.scrap_link}" target="_blank">${scrap_home.scrap_title}</a>
<%-- 		&nbsp;&nbsp;&nbsp;
		<input type="hidden" value="${scrap_home.scrap_num}" name="${scrap_home.scrap_num}">
		<a href="scrap_delete${scrap_home.scrap_num}"></a>
		<button class="ttt"><small style="color: red;">삭제</small></button> --%></td>
	</tr>
	</c:forEach>
	<tfoot>
		<tr align="center">
			<td><a href="Scrap_HomeALL" target="_blank"><button><strong>more+</strong></button></a></td>
		</tr>
	</tfoot>
</table>
<% } %>