<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
// 스크랩 삭제 기능
$('#b0').click(function() {
	numValue = $('#num').val()
	ans = confirm("삭제 하시겠습니까?")
	if(ans){
		$.ajax({
			url : 'loginCheck',
			data : {
				scrap_num : numValue
			},
			success : function(x) {
				if(x == "로그인 성공"){					
					$('#loginCheck').html(" " + x + " ")
					location.href = "login2"
				}else{
					$('#loginCheck').html(" " + x + " ")
				}
			} //success
		}) //ajax
	} else{
		alert("삭제가 취소되었습니다");
		location.reload();
	}
}) //b0
</script>
</body>
</html>