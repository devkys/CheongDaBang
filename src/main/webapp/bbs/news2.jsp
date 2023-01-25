<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="${path}/resources/css/header.css">
<link rel="stylesheet" href="${path}/resources/css/footer.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
/* 
	$(function () {
		$('#b1').click(function () {
			//서버에 있는 json 호출
			//원할 때 순서상관없이 다른 서버의 자원을 호출하거나, 내서버의 다른 자원을 호출하고자 하는 경우
			//ajax를 사용
			$.ajax({
				url : 'https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.mk.co.kr%2Frss%2F40300001%2F&api_key=zmwuo9o4tazwlnghf1r2jqanf56v1euesyrc9z21',
				data : {
					url :"https://www.mk.co.kr/rss/40300001/",
					api_key : "zmwuo9o4tazwlnghf1r2jqanf56v1euesyrc9z21",
					count : 20
				},	
				success : function (doc) {
					//alert('받은 데이터는 ' + doc)
					// for + for-each 문을 합해놓은 each문
					// function(x,y) x : index , y : one(json)
					$(doc).each(function (index, news) {
						//console.log(index + '>>' + person)
						title1 = news.title //person(json).id(key) 하면 value를 추출
						link1 = news.link //person(json).id(key) 하면 value를 추출
						description1 = news.description //person(json).id(key) 하면 value를 추출
						pubDate1 = news.pubDate
						console.log(index + '>>' + title1 + " " + link1 + " " + description1 + " " + pubDate1)
						
						//내 서버에 받아서 db에 넣어주는 페이지 호출
						//ajax 필요
						//ajax안에 ajax 만들기 가능
						$.ajax({
							url : 'r_news_insert',
							async : false, // 비동기(순서없이 들어감) 기능 끔
							data : {
								title : title1,
								link : link1,
								description : description1,
								pubDate : pubDate1
							},
							success : function() {
								console.log('db에 넣기 성공')
								
								
							}//success2
						})//ajax2
					}) //each
				} // success	
			}) //ajax
		}) //b1
	}) */
$(function() {
	/* 	$('#b2').click(function() { */
			$('.result').empty()
			$.ajax({
				url : 'https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.mk.co.kr%2Frss%2F40300001%2F&api_key=zmwuo9o4tazwlnghf1r2jqanf56v1euesyrc9z21',
				data : {
					url :"https://www.mk.co.kr/rss/40300001/",
					api_key : "zmwuo9o4tazwlnghf1r2jqanf56v1euesyrc9z21",
					count : 20
				},						
				success : function(x) { 
					//alert('응답받은 내용: ' + x)
					//items키를 주고, 값인 []리스트를 가지고 오자.
					list = x.items
					//alert(list.length)
					for (var i = 0; i < list.length; i++) {
						
						title = list[i].title
						link = list[i].link
						description = list[i].description
						pubDate = list[i].pubDate
						
						var tableTd = '<tr> '  ;
						tableTd += '<td><a href = "' + link + '">' + title + '</a></td>' + '<td>' + description + '</td>' +'<td>' + pubDate + '</td>'  ;
						tableTd += '</tr>';
												
						//$('div').append(title + " " + link + " " + description +" "+ pubDate + "<br>")
						$('#tableBody').append(tableTd + "<br>")
					}
				} //success
			}) //ajax
		/* }) //b2 */
		
	}) //$
</script>

</head>
<body>
 <div>
<%@include file="/WEB-INF/views/includes/header.jsp" %> 
</div>
<!-- 	<button id = 'b1'>db넣기</button>	
	<button id = 'b2'>데이터 보기</button> -->

<div id = "result">
<table class="table" style="width: 80%; margin-left: auto; margin-right: auto">
    <thead>
        <tr class="table-dark" >
            <th>제목</th>
            <th>내용</th>
            <th>작성일</th>
        </tr>
    </thead>
    <tbody id="tableBody">
        <!-- 동적 데이터 생성 -->
    </tbody>
</table></div>
<br>
<br>
<br>
<div>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
</body>
</html>