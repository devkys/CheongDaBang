<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css">
a {
	text-decoration: none;
	color: #444;
}
</style>
</head>
<body>

	<!--	 제목부분	 -->
	<div style="margin: 3%">
		<c:forEach var="vo" items='${list}'>
			구인인증번호: ${vo.job_wantedAuthNo}
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>

			<div align="center">
				<h1>채용제목:${vo.job_title}</h1>
				회사명: ${ vo.job_company } <br> <br> <br> <br>
			</div>

			<hr style="color: #dbdcdd">

			<!--	 채용공고 상세정보	 -->
			<div align="center">
			<table class="table table-borderless" style="width: 800px">
				<tr>
					<td>채용제목</td>
					<td>${vo.job_title}</td>			
				</tr>
				<tr>
					<td>회사명</td>
					<td>${ vo.job_company }</td>			
				</tr>
				<tr>
					<td>근무형태</td>
					<td> ${ vo.job_holidayTpNm }</td>			
				</tr>
				<tr>
					<td>임금형태</td>
					<td>${ vo.job_salTpNm }</td>			
				</tr>
				<tr>
					<td>급여</td>
					<td>${ vo.job_sal }</td>			
				</tr>
				<tr>
					<td>최소임금액</td>
					<td>${ vo.job_minSal }</td>			
				</tr>
				<tr>
					<td>최대임금액</td>
					<td>${ vo.job_maxSal }</td>			
				</tr>
				<tr>
					<td>근무지역</td>
					<td>${ vo.job_region }</td>			
				</tr>
				<tr>
					<td colspan="2"><hr style="color: gray;"></td>		
				</tr>
				<tr>
					<td>경력</td>
					<td>${ vo.job_career }</td>			
				</tr>
				<tr>
					<td>우대조건</td>
					<td>${ vo.job_prefCd }</td>			
				</tr>
				<tr>
					<td>최소학력</td>
					<td>${ vo.job_minEdubg }</td>			
				</tr>
				<tr>
					<td>등록일자</td>
					<td>${ vo.job_regDt }</td>			
				</tr>
				<tr>
					<td>마감일자</td>
					<td>${ vo.job_closeDt }</td>			
				</tr>
				<tr>
					<td>근무지 우편번호</td>
					<td>${ vo.job_zipCd }</td>			
				</tr>
				<tr>
					<td>근무지 도로명주소</td>
					<td>${ vo.job_strtnmCd }</td>			
				</tr>
				<tr>
					<td>근무지 기본주소</td>
					<td>${ vo.job_basicAddr }</td>			
				</tr>
				
			</table>
				
				<br> <br> <br><br><br>
				<!-- 	워크넷 링크	 	-->
				<div align="right">
					<button>
						<a href="${ vo.job_wantedInfoUrl }">채용정보 제공 사이트로 이동</a>
					</button>
					<button style="margin-bottom: 10px">
						<a href="${ vo.job_wantedMobileInfoUrl }">채용정보 제공 모바일사이트로 이동</a>
					</button>
				</div>
		</c:forEach>

	</div>

	<hr style="color: gray;">
	<br>
	<br>
	<br><br>

	<!-- 목록으로 돌아가는 버튼과 스크랩버튼 -->
	<div align="center" style="height: 50px;">
		<button
			onclick="history.back()"
				style="width: 150px; height: 50px; margin-right: 15px; background: #40c1c9; border-color: #40c1c9; border-radius: 12px; vertical-align: top; font-size: 25px; color: white;">
			게시글 목록</button>
		<button class="scrap"
			style="height: 50px; border-color: #40c1c9; background: #fff; border-radius: 12px; font-size: 25px; color: #40c1c9;">
			<img
				src="${pageContext.request.contextPath}/resources/img/yellowStar.png"
				width="35px" height="35px" style="vertical-align: bottom;">스크랩
		</button>
	</div>

<!--	스크랩  ajax	  -->
		<script>
		var req = {
				"scrap_title": "${list[0].job_title}",
				"scrap_link" : '/cdb/job/one?job_wantedAuthNo=${vo.job_wantedAuthNo}',
				"scrap_type" : "Job",
				"scrap_member": "${member_id}"
			};
		
		// 스크랩 관련 ajax
		$(function(){
			$('.scr').click(
				function(){
					//var title = $('.title').text();
					if(req.scrap_member === '') {
						alert("로그인이 필요합니다.");
					} else {
						$.ajax({
							url: "/cdb/scrap/rent_scrap",
							type: "POST",
							dataType: "json",
							contentType : 'application/json',
							data: JSON.stringify(req),
							success: function(data) {
								console.log(data);
								
								if(data == 0) {
									alert("스크랩 완료");
									location.reload();
								} else {
									alert("스크랩 취소");
									location.reload();
								}
							} //success
							
						}) //ajax
					} //else
				} //function
			) // click
		}) // root function
		
		</script>

</body>
</html>