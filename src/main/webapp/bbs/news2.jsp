<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>
<script type="text/javascript">
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
						title = news.title //person(json).id(key) 하면 value를 추출
						link = news.link //person(json).id(key) 하면 value를 추출
						description = news.description //person(json).id(key) 하면 value를 추출
						pubDate = news.pubDate
						//console.log(index + '>>' + title + " " + link + " " + description)
						
						//내 서버에 받아서 db에 넣어주는 페이지 호출
						//ajax 필요
						//ajax안에 ajax 만들기 가능
						$.ajax({
							url : 'db_create.jsp',
							async : false, // 비동기(순서없이 들어감) 기능 끔
							data : {
								title : title,
								link : link,
								description : description,
								pubDate : pubDate
							},
							success : function() {
								console.log('db에 넣기 성공')
								
								
							}//success2
						})//ajax2
					}) //each
				} // success	
			}) //ajax
		}) //b1
	})
$(function() {
		$('#b2').click(function() {
			$('div').empty()
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
												
						$('div').append(title + " " + link + " " + description +" "+ pubDate + "<br>")
					}
				} //success
			}) //ajax
		}) //b2
		
	}) //$
</script>
</head>
<body>
	
	
	<button id = 'b1'>db넣기</button>
	<button id = 'b2'>데이터 보기</button>
	<div id = "result"></div>
</body>
</html>