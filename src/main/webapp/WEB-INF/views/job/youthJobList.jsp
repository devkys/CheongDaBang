<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이징 된 리스트 불러올 jsp파일</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	/* 	$(function() {
	 $.ajax({
	 url : "jobList",
	 data : {
	 pageNum : 2
	 },
	 success : function(result) {
	 $('#d1').html(result)
	 }

	 })

	 }) */
</script>

<!-- 스타일  -->
<style type="text/css">
/* 클래스 jArea는 버튼 테두리 제거. */
.kArea {
	margin: 5px;
	width: 55px;
	height: 40px;
	background: #40c1c9;
	border-color: #40c1c9;
	border-radius: 12px;
	color: white;
	border-radius: 12px;
}
</style>
</head>

<body>
	<div style="margin: 3%"><br> <br> <br>
	<div align="center" style="font-size: 45px; color:#40c1c9;">
	<strong>ㅡ 채용 정보 ㅡ</strong>
	</div>
		<br> <br>
		<!-- 전체검색  -->
		<form action="/cdb/job/youthJobList" method="get">
			<div align="center">
				<select name="searchType" class="form-select"
					aria-label="Default select example"
					style="width: 140px; height: 55px; display: inline;">
					<option ${ pageMaker.cri.searchType eq '' ? 'selected' : '' }
						value="job_titleORjob_company">전체</option>
					<option
						${ pageMaker.cri.searchType eq 'job_title' ? 'selected' : '' }
						value="job_title">공고제목</option>
					<option
						${ pageMaker.cri.searchType eq 'job_company' ? 'selected' : '' }
						value="job_company">기업명</option>
				</select> <input type="text"
					style="width: 430px; height: 55px; border-radius: 6px;" type="text"
					name="keyword" value='${pageMaker.cri.keyword }'>
				<!-- 	검색 버튼		 -->
				<button type="submit"
					style="padding-top: 3px; width: 100px; height: 55px; background: #40c1c9; border-color: #40c1c9; color: white; border-radius: 6px;"
					id="serch">
					<img
						src="${pageContext.request.contextPath}/resources/img/searchIconWhite.png"
						alt="" width="25px" height="23px" style="margin-bottom: 2px"><span
						style="vertical-align: bottom; font-size: 18px;">검색</span>
				</button>
			</div>
			<!-- 상세검색 -->

						<div class="accordion accordion-flush" id="accordionFlushExample">
				<div class="accordion-item">
					<div style="border: 3px solid #40c1c9; width: 185px">
						<!-- 					<div style="border: 3px solid #8d84c6; width: 185px"> -->
						<h2 class="accordion-header" id="flush-headingOne">
							<button class="accordion-button collapsed" type="button"
								style="width: 180px; background: white;"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
								aria-expanded="false" aria-controls="flush-collapseOne">상세검색</button>
						</h2>
					</div>
					<!-- 상세검색버튼 끝 -->
					<!-- 지역검색  -->
					<div id="flush-collapseOne" class="accordion-collapse collapse"
						aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<br>
							<div class="form-check"
								style="float: left; margin-left: 60px; border-right: thick solid #dbdcdd; width: 140px;">
								<strong><h5>지역검색</h5></strong>
							</div>
							<!-- 시군구  -->
							<div class="tab"
								style="float: left; width: 600px; margin-left: 30px;">
								<button class="kArea">전체</button>
								<br>
								<button class="kArea" name="kArea" value="seoul">서울</button>
								<button class="kArea" name="kArea" value="busan">부산</button>

								<button class="kArea" name="kArea" value="gangwon">강원</button>
								<button class="kArea" name="kArea" value="gyeonggi">경기</button>

								<button class="kArea" name="kArea" value="gyeongNam">경남</button>
								<button class="kArea" name="kArea" value="gyeongBuk">경북</button>
								<br>
								<button class="kArea" name="kArea" value="gwangju">광주</button>
								<button class="kArea" name="kArea" value="daegu">대구</button>

								<button class="kArea" name="kArea" value="daejeon">대전</button>
								<button class="kArea" name="kArea" value="sejong">세종</button>

								<button class="kArea" name="kArea" value="ulsan">울산</button>
								<button class="kArea" name="kArea" value="incheon">인천</button>
								<br>
								<button class="kArea" name="kArea" value="jeonNam">전남</button>
								<button class="kArea" name="kArea" value="jeonBbuk">전북</button>

								<button class="kArea" name="kArea" value="jeju">제주</button>
								<button class="kArea" name="kArea" value="chungNam">충남</button>

								<button class="kArea" name="kArea" value="chungBuk">충북</button>
							</div>
							<div style="clear: both;"></div>
							<!-- 시군구 끝 -->
							<br>
							<div class="form-check"
									style="float: left; margin-left: 60px; border-right: thick solid #dbdcdd; width: 140px;">
									<strong><h5>연봉</h5></strong>
								</div>
								<div style="float: left;">

									<select name="sal" class="form-select"
										aria-label="Default select example"
										style="width: 120px; display: inline; margin-left: 30px;">

										<option value=0>전체</option>
										<option value=2800>2800</option>
										<option value=3000>3000</option>
										<option value=3200>3200</option>
										<option value=3400>3400</option>
										<option value=3600>3600</option>
										<option value=3800>3800</option>
										<option value=4000>4000</option>
										<option value=4500>4500</option>
										<option value=5000>5000</option>
										<option value=5500>5500</option>
										<option value=6000>6000</option>
										<option value=6500>6500</option>
									</select><a style="font-size: 20px; font-style:;">&nbsp;이상</a>
								</div>
								<div align="right" style="clear: both;">
									<!-- 	검색 버튼		 -->
									<button type="submit"
										style="padding-top: 3px; width: 100px; height: 55px; background: #40c1c9; border-color: #40c1c9; color: white; border-radius: 6px;"
										onclick="search2">
<%-- 										onclick="location.href='/cdb/job/recruitList?pageNum=${pageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}&kArea=${kArea }&sal=${sal }'"> --%>
										<img
											src="${pageContext.request.contextPath}/resources/img/searchIconWhite.png"
											alt="" width="25px" height="23px" style="margin-bottom: 2px"><span
											style="vertical-align: bottom; font-size: 18px;">검색</span>
									</button>
								</div>
							</div>
							<hr>
						</div> <!-- 아코디언 바디부분 끝 -->
					</div> <!-- 아코디언 헤더와 바디 끝 -->
				</div> <!-- 아코디언 끝 -->
			</form>
		</div> <!-- 조건검색 끝 -->
	<br>
	<br> count: ${pageMaker.totalCount} 개
	<hr>
	<!-- 채용정보 목록 -->
	<div align="right">
		<button
			onclick="location.href='/cdb/job/recruitList?pageNum=1&searchType=${pageMaker.cri.searchType}&keyword=${pageMaker.cri.keyword}'"
			style="padding-top: 3px; background: #40c1c9; border-color: #40c1c9; color: white; border-radius: 3px;">
			모든 채용정보 보기</button>
	</div>
	<br>
	<div id=jobList>

		<table class="table table-hover">
			<thead>
				<tr align="center">
					<th scope="col">기업명</th>
					<th scope="col">제목</th>
					<th scope="col">근무조건</th>
					<th scope="col">등록일 & 마감일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test='${ fn:length(list) gt 0}'>
						<c:forEach var="vo" items='${list}'>
							<tr
								onclick="location.href='/cdb/job/one?job_wantedAuthNo=${vo.job_wantedAuthNo}&pageNum=${ pageMaker.cri.pageNum }&searchType=${pageMaker.cri.searchType}&keyword=${pageMaker.cri.keyword}'">
								<td>${vo.job_company}</td>
								<td>${vo.job_title}<br> 경력: ${vo.job_career} | 최소학력:
									${vo.job_minEdubg }
								</td>
								<td>${vo.job_sal }<br> ${vo.job_region }
								</td>
								<td>${vo.job_regDt }<br> ${vo.job_closeDt }
								</td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>

			</tbody>
		</table>
	</div>
	<!-- 목록 끝 -->

	<!-- 페이지네이션 -->
	<div align="center">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<%-- <c:if test="${pageMaker.prev eq true }"> --%>
				<c:if test="${pageMaker.prev}">
					<li class="page-item disabled"><a class="page-link"
						href="/cdb/job/youthJobList?pageNum=${ pageMaker.startPage - 1 }&searchType=${pageMaker.cri.searchType}&keyword=${pageMaker.cri.keyword}" >&laquo;</a></li>
				</c:if>

				<c:forEach var="i" begin="${ pageMaker.startPage }"
					end="${pageMaker.endPage}">
					<li class="page-item"><a class="page-link"
						href="/cdb/job/youthJobList?pageNum=${ i }&searchType=${pageMaker.cri.searchType}&keyword=${pageMaker.cri.keyword}">${ i }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next}">
					<%-- 			<c:if test="${pageMaker.next eq true }"> --%>
					<li class="page-item"><a class="page-link"
						href="/cdb/job/youthJobList?pageNum=${ pageMaker.endPage + 1 }&searchType=${pageMaker.cri.searchType}&keyword=${pageMaker.cri.keyword}">&raquo;</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<!-- 페이지네이션 끝 -->
	</div>
</body>