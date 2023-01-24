<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(document).ready(function() {
		if ("${member_id}" === '') {
			$(".sign-in").css("visibility", "visible");
			$(".sign-up").css("visibility", "visible");
			$(".sign-out").css("visibility", "hidden");
			$(".mypage").css("visibility", "hidden");
		} else {
			$(".sign-in").css("visibility", "hidden");
			$(".sign-up").css("visibility", "hidden");
			$("sign-out").css("visibility", "visible");
			$("mypage").css("visibility", "visible");
		}
	})
</script>

<header>
	<div class="total" style="position: relative; z-index: 999;">

		<div class="top">
			<div class="logo">
				<a href="/cdb/mainfunction/main.jsp"><img
					src="${path}/resources/img/cdbLogo2.png" alt="cdblogo"></a>
			</div>

			<div class="search">
				<div id="header">
					<form id="searchform">
						<div class="search-wrap">
							<select name="filter">
								<option value="bbs_contents">게시물내용</option>
								<option value="bbs_title">게시물제목</option>
								<option value="news">뉴스</option>
							</select> 
							<input name="filtertext" type="text">
							<button id="search_btn" onclick="go_search()">
								<img src="${path}/resources/img/search_img.svg"
									alt="search_icon">
							</button>
						</div>
					</form>
					<script>
						function go_search() {
							var filtervar = $(
									"select[name='filter'] option:selected")
									.text();
							var url = ""
							if (filtervar == "게시물내용") {
								url = "bbsfilter"
								console.log('test0');
							}
							if (filtervar == "게시물제목") {
								url = "bbsfilter"
								console.log('test1');
							} else if (filtervar == "뉴스") {
								url = "newsfilter"
								console.log('test2')
							}
							$("#searchform").attr("action", url).submit();
						}
					</script>
				</div>
			</div>
			<div class="user-info">
				<div class="sign-in">
					<a href="/cdb/member/CdbLogin.jsp"><i
						class="fa-solid fa-right-to-bracket fa-2xl"></i></a> <span>로그인</span>
				</div>

				<div class="sign-up">
					<a href="/cdb/member/MemberJoin.jsp"><i
						class="fa-solid fa-user-plus fa-xl"></i></a> <span>회원가입</span>
				</div>

				<div class="sign-out">
					<a href="/cdb/member/logout"><i
						class="fa-solid fa-right-from-bracket fa-2xl"></i></a> <span>로그아웃</span>
				</div>

				<div class="mypage">
					<a href="/cdb/member/MyPage.jsp"><i
						class="fa-solid fa-user fa-xl"></i></a> <span>마이페이지</span>
				</div>
			</div>
		</div>

		<!--가로형 3단 드롭다운 메뉴-->
		<div id="menu" style="margin-bottom: 70px;">
			<ul class="main1">
				<li><a href="/cdb/yPolicy/yp_all">청년 정책</a>
					<ul class="main2">
						<li><a href="/cdb/yPolicy/yp_all">전체 청년 정책</a></li>
						<li><a href="#">맞춤 청년 정책</a></li>
					</ul></li>
				<li><a href="/cdb/house/rent.jsp">공공 주택 찾기</a>
					<ul class="main2">
						<li><a href="/cdb/house/rent.jsp">공공 임대 주택 찾기</a></li>
						<li><a href="/cdb/house/sale.jsp">공공 분양 주택 찾기</a></li>
					</ul></li>
				<li><a href="/cdb/job/recruitList">일자리 채용 정보</a>
					<ul class="main2">
						<li><a href="/cdb/job/recruitList">채용 정보</a></li>
						<li><a href="#">급여 정산 계산기</a></li>
					</ul></li>
				<li><a href="#">커뮤니티</a>
					<ul class="main2">
						<li><a href="/cdb/bbs/bbs_all">정보공유 게시판</a></li>
						<li><a href="#">청년 뉴스</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</header>