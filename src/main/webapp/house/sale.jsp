<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청 다 방</title>

<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script src="https://kit.fontawesome.com/4e0c810bcc.js" crossorigin="anonymous"></script>

<script>
	
	$(document).ready(function(){
		$.ajax({
			method: 'GET',
			url: 'sale_all',
			dataType: 'json',
			success: function(data) {
				$('#tbody').empty()
				
				$.each(data, function(index, value) {
					var insertTr= "";
					const brtc = value.by_brtc;
					insertTr += "<tr>";
					insertTr += "<td>" + value.by_housetype + "</td>";
					insertTr += "<td>" + value.by_brtc + "</td>";
					insertTr += "<td><a href=sale_view?by_pbid=" + value.by_pbid + "&by_brtc=" + value.by_brtc + ">"+ value.by_pbname + "</a></td>";
					insertTr += "<td>" + moment(value.by_recrude).format("YYYY-MM-DD") + "</td>";
					insertTr += "<td>" + moment(value.by_winannde).format("YYYY-MM-DD") + "</td>";
					insertTr += "<td>" + value.by_suplyint + "</td>";
					insertTr += "</tr>";
					$("#tbody").append(insertTr);
					
				})
				
			} //success
		}) //ajax
	}) //document.ready
	

	$(function() {
		$('#btn').click(function() {
			$.ajax({
				url : 'sale_all',
				type : "GET",
				data: {},
				success : function(data) {
					$('#tbody').empty()
					
					$.each(data,function(index,value) {
						var insertTr = "";
						const brtc = value.by_brtc;
						insertTr += "<tr>";
						insertTr += "<td>" + value.by_housetype + "</td>";
						insertTr += "<td>" + value.by_brtc + "</td>";
						insertTr += "<td><a href=sale_view?by_pbid=" + value.by_pbid + "&by_brtc=" + value.by_brtc + ">"+ value.by_pbname + "</a></td>";
						insertTr += "<td>" + moment(value.by_recrude).format("YYYY-MM-DD") + "</td>";
						insertTr += "<td>" + moment(value.by_winannde).format("YYYY-MM-DD") + "</td>";
						insertTr += "<td>" + value.by_suplyint + "</td>";
						insertTr += "</tr>";
						$("#tbody").append(insertTr);
					}) //each
				} // success
			}) // ajax
		}) //click

	}) // function
	

	// 광역시도별 검색 (지도 클릭시 구현)
	$(function() {
		const obj = {
				1: '서울특별시',
				2: '인천광역시',
				3: '강원도',
				4: '경기도',
				5: '충청북도',
				6: '충청남도',
				7: '세종특별자치시',
				8: '대전광역시',
				9: '전라북도',
				10: '전라남도',
				11: '광주광역시',
				12: '경상남도',
				13: '경상북도',
				14: '대구광역시',
				15: '울산광역시',
				16: '부산광역시'
		}
		
		$("area").click(function() {
			var id = $(this).attr('id');
			$("#tbody").empty()	
			$.ajax({
				url : 'sale_city?by_brtc=' + obj[id],
				type : "GET",
				data: {},
				success : function(data) {
					$('#tbody').empty()
					
					$.each(data,function(index,value) {
						var insertTr = "";
						const brtc = value.by_brtc;
						insertTr += "<tr>";
						insertTr += "<td>" + value.by_housetype + "</td>";
						insertTr += "<td>" + value.by_brtc + "</td>";
						insertTr += "<td><a href=sale_view?by_pbid=" + value.by_pbid + "&by_brtc=" + value.by_brtc + ">"+ value.by_pbname + "</a></td>";
						insertTr += "<td>" + moment(value.by_recrude).format("YYYY-MM-DD") + "</td>";
						insertTr += "<td>" + moment(value.by_winannde).format("YYYY-MM-DD") + "</td>";
						insertTr += "<td>" + value.by_suplyint + "</td>";
						insertTr += "</tr>";
						$("#tbody").append(insertTr);
					}) //each
				} // success
			}) // ajax
		}) //area tag click
	}) // function

	
</script>
<style>
a {
	text-decoration: none;
	color: black;
}
a:hover {
	font-weight: bold;	
}

area:hover {
	cursor: pointer;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
	<div class='total' style="height: auto; min-height: 100%; padding-bottom:50px;">
	<h2 style="text-align: center;">공공 <b>분양</b> 주택 찾기</h2>
	
	<div class='map-img' style="margin-bottom: 30px; text-align: center;">
	<img src="../resources/img/t_map.png" usemap='#brt_map' id="brt_map">
	</div>	
	
	<button id='btn' type="button" class="btn btn-outline-secondary" style="display: block; margin: auto; margin-bottom: 30px;">전국 검색</button>
	
	<map name="brt_map">
	<!--  coords= x1, y1, x2, y2 -->
		<area id="1" shape="poly" coords="110,122,139,111,173,129,172,146,146,149,118,144" alt='Seoul' title="서울특별시" onclick="brt_map.src='../resources/img/seoul.png'">
		<area id="2" shape="poly" coords="73,86,87,94,85,110,91,128,109,125,118,145,101,152,78,149,51,109" alt='Incheon' title="인천광역시" onclick="brt_map.src='../resources/img/incheon.png'">	
		<area id="3" shape="poly" coords="300,4,406,166,389,190,317,192,281,172,237,186,224,179,231,129,209,121,206,92,170,61,162,35,206,36,257,33,266,18,287,15" alt='Gangwondo' title="강원도" onclick="brt_map.src='../resources/img/gangwon.png'">
		<area id="4" shape="poly" coords="104,76,162,31,168,59,206,87,207,121,234,130,224,180,180,208,129,213,109,201,110,189,96,177,103,151,120,140,138,148,170,142,174,131,137,113,105,123,94,126,84,113,87,96,107,89" alt='Gyeonggido' title="경기도" onclick="brt_map.src='../resources/img/gyeongido.png'">
		<area id="5" shape="poly" coords="224,176,236,184,282,169,311,191,302,224,288,221,242,253,238,290,256,304,238,332,216,336,208,282,188,269,177,240,188,231,178,209" alt='Chung-cheongBdo' title="충청북도" onclick="brt_map.src='../resources/img/chungcheongbdo.png'" >	
		<area id="6" shape="poly" coords="69,195,103,199,126,213,178,210,188,232,179,241,156,221,144,242,162,255,154,276,187,310,187,321,174,320,159,329,131,329,108,336,86,325,79,317,92,294,60,283,58,255,42,250,41,221" alt='Chung-cheongNdo' title="충청남도" onclick="brt_map.src='../resources/img/chungcheongndo.png'">	
		<area id="7" shape="poly" coords="152,223,177,237,184,264,174,290,156,275,163,254,143,244" alt='Sejong' title="세종특별자치시" onclick="brt_map.src='../resources/img/saejong.png'">	
		<area id="8" shape="poly" coords="185,268,207,281,210,302,189,305,174,287" alt='Daejeon' title="대전광역시" onclick="brt_map.src='../resources/img/daejeon.png'">	
		<area id="9" shape="poly" coords="80,323,84,334,102,353,78,371,72,402,93,421,122,402,155,421,205,420,218,405,210,383,239,350,239,334,192,338,186,321,169,319,153,333,128,324,107,335" alt='JeollaBdo' title="전라북도" onclick="brt_map.src='../resources/img/jeonlabdo.png'">	
		<area id="10" shape="poly" coords="71,398,56,425,61,437,30,444,35,457,22,460,10,513,29,519,6,552,17,570,44,569,47,552,62,543,159,557,161,542,177,535,191,542,199,539,202,512,242,498,214,419,176,429,119,465,85,440,125,402,94,417" alt='JeollaNdo' title="전라남도" onclick="brt_map.src='../resources/img/jeonlando.png'">
		<area id="11" shape="poly" coords="98,433,129,432,143,445,117,462,92,442" alt='Gwangju' title="광주광역시" onclick="brt_map.src='../resources/img/gwangju.png'">	
		<area id="12" shape="poly" coords="241,349,263,355,282,380,352,387,369,377,372,391,389,399,391,412,353,430,351,446,310,455,316,468,344,462,347,471,327,507,306,500,295,487,271,489,262,510,243,499,212,420,221,402,213,385" alt='GyeongsangNdo' title="경상남도" onclick="brt_map.src='../resources/img/gyeongsangndo.png'" >	
		<area id="13" shape="poly" coords="311,193,389,188,406,170,412,208,424,225,418,323,427,318,435,348,429,377,390,370,351,387,324,384,342,355,327,338,296,348,302,365,293,382,280,381,266,360,245,351,237,333,255,302,240,291,242,260,285,216,302,225" alt='GyeongsangBdo' title="경상북도" onclick="brt_map.src='../resources/img/gyeongsanbdo.png'">
		<area id="14" shape="poly" coords="304,367,295,382,319,384,342,358,326,336,296,353" alt='Daegu' title="대구광역시" onclick="brt_map.src='../resources/img/daegu.png'">	
		<area id="15" shape="poly" coords="389,370,425,379,417,415,406,431,397,418,397,405,374,393,374,379" alt='Ulsan' title="울산광역시" onclick="brt_map.src='../resources/img/ulsan.png'" >	
		<area id="16" shape="poly" coords="395,415,405,426,349,468,347,458,323,468,311,456,350,445,352,436" alt='Busan' title="부산광역시" onclick="brt_map.src='../resources/img/busan.png'">	
 		<area id="17" shape="poly" coords="93,593,143,605,132,625,57,648,35,617"  alt="Jeju" title="제주특별자치도" onclick="brt_map.src='../resources/img/jaeju.png'">
	</map>
	<br>
	<div class="tb">
		<table class="table table-hover table-fixed">
			<thead style="background-color: lightgray;">
				<tr>
					<th scope="col">주택유형</th>
					<th scope="col">광역시명</th>
					<th scope="col">공고명</th>
					<th scope="col">공고일자</th>
					<th scope="col">당첨자 발표 일자</th>
					<th scope="col">공급 기관</th>
				</tr>
			</thead>
			<tbody id='tbody'>

			</tbody>
		</table>
	</div>
	</div>
	<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</body>
</html>