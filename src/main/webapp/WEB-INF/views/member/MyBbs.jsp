<%@page import="com.multi.cdb.bbs.BbsVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% @SuppressWarnings("unchecked")
List<BbsVO> list = (List<BbsVO>)request.getAttribute("list");
int size = list.size();
if(size > 1){
%>
<table border="1">
	<thead>
		<tr align="center">
			<td><strong>작성한 글</strong></td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="MyBbs">
	<tr class="ttt">
		<td><a href="${MyBbs.scrap_link}" target="_blank">${MyBbs.bbs_title}</a></td>
	</tr>
	</c:forEach>
	<tfoot>
		<tr align="center">
			<td><a href="MyBbsALL" target="_blank"><button><strong>more+</strong></button></a></td>
		</tr>
	</tfoot>
</table>
<% } %>