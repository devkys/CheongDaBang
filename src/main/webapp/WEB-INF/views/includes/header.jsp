<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	<div class="total">


		<div class="top">
			<div class="logo">
				<h2>청다방</h2>
			</div>

			<div class="search">
				<input type="text" placeholder="검색어 입력">
				<button id="search_btn">
					<img src="${path}/resources/img/search_img.svg" alt="search_icon">
				</button>
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
					<a href="/cdb/member/MyPage.jsp"><i class="fa-solid fa-user fa-xl"></i></a> <span>마이페이지</span>
				</div>
			</div>
		</div>


		<div class="navbar">
			<div class="nav_menu">
				<ul>

					<li><a href="#">청년 정책</a>
						<ul>
							<li><a href="#">전체 청년 정책</a></li>
							<li><a href="#">맞춤 청년 정책</a></li>
						</ul></li>

					<li><a href="#">공공 주택 찾기</a>
						<ul>
							<li><a href="#">공공 임대 주택 찾기</a></li>
							<li><a href="#">공공 분양 주택 찾기</a></li>
						</ul></li>

					<li><a href="#">일자리</a>
						<ul>
							<li><a href="#">채용정보</a></li>
							<li><a href="#">급여 정산 계산기</a></li>
						</ul></li>

					<li><a href="#">커뮤니티</a>
						<ul>
							<li><a href="#">컨텐츠 게시판</a></li>
							<li><a href="#">정보 공유 게시판</a></li>
							<li><a href="#">자유 게시판</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</header>