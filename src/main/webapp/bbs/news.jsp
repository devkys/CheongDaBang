<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
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
						
						t = list[i].title
						l = list[i].link
						c = list[i].categories
						a = list[i].author
						p = list[i].pubDate
						d = list[i].description
												
						$('div').append(t + " " + l + " " + c +" " + a + " " + p +" "+ d + "<br>")
					}
				} //success
			}) //ajax
		}) //b1
		
	}) //$
</script></head>
<body>
<!-- <form action="rnews_insert.do"> -->
	신문뉴스 데이터 받아오기(ajax로) <br>
	<button style='color: blue; background: pink' id='b1'>매일경제</button>
	<hr color="red">
	<div id="result"></div>
<!-- </form> -->

	
</body>
</html>