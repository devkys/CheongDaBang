<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h4>최근 채용정보</h4>
<table class="table table-striped table-hover">
	<tr>
		<td>회사명</td>
		<td>채용제목</td>
		<td>근무지역</td>
		<td>급여</td>
		<td>등록일자</td>
		<td>마감일자</td>
	</tr>
	<c:forEach items="${list}" var="one">
		<tr>
			<td width="80">${one.job_company}</td>
			<td width="150">${one.job_title}</td>
			<td width="80">${one.job_region}</td>
			<td width="80">${one.job_sal}</td>
			<td width="80">${one.job_regDt}</td>
			<td width="80">${one.job_closeDt}</td>
		</tr>
	</c:forEach>
</table>
