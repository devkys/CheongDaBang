<%@page import="com.multi.cdb.bbs.ReplyVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% @SuppressWarnings("unchecked")
List<ReplyVO> list = (List<ReplyVO>)request.getAttribute("list");
int size = list.size();
if(size > 1){
%>
<table border="1">
	<thead>
		<tr align="center">
			<th><strong>작성한 댓글</strong></th>
		</tr>
	</thead>
	<c:forEach items="${list}" var="MyBbsReply">
	<tr class="ttt">
		<td><a href="../bbs/bbs_contents?bbs_Id=${MyBbsReply.bbs_Id}" target="_blank">${MyBbsReply.reply_contents}</a></td>
	</tr>
	</c:forEach>
	<tfoot>
		<tr align="center">
			<td><a href="MyBbsReplyALL" target="_blank"><button><strong>more+</strong></button></a></td>
		</tr>
	</tfoot>
</table>
<% } %>