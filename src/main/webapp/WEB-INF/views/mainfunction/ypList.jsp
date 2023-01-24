<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <link rel="stylesheet" href="resources/css/ypListStyle.css"> -->

<table class="table table-striped table-hover" style='width:1400px; height : 300px; table-layout:fixed;word-break:break-all;height:auto margin-left:auto; 
    margin-right:auto;'>
    <tr>
    	<td><h4>인기정책</h4></td>
    </tr>
	<tr class="table-secondary">
		<c:forEach items="${list}" var="one" begin="0" end="3" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br>
			<a
				href="정책 변경값?YP_URL=${one.YP_URL}">이동하기</a>
			</td>
		</c:forEach>
	</tr>
	<tr class="table-secondary">
		<c:forEach items="${list}" var="one" begin="4" end="7" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br><a
				href="정책 변경값?YP_URL=${one.YP_URL}">이동하기</a>
			</td>
		</c:forEach>
	</tr>
	<tr class="table-secondary">
		<c:forEach items="${list}" var="one" begin="8" end="11" step="1"
			varStatus="status">
			<td>${one.YP_NAME} <br>조회 : ${one.YP_VIEW}<br><a
				href="정책 변경값?YP_URL=${one.YP_URL}"
				style="font-weight: bold; align: right;">이동하기</a>
			</td>
		</c:forEach>
	</tr>
</table>
