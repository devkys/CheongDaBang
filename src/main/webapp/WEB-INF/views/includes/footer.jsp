<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<footer>
	<div class="foo_div">

		<div class="intro">
			<ul>
				<li><a href="#" style="color: #3C79F5">청다방은?</a></li>
				<li><a href="#" style="color: #F0ECCF;">개인 정보 처리 방침</a></li>
				<li><a href="#" style="color: #A3BB98">홈페이지 이용약관</a></li>
				<li><a href="#" style="color: red;">오류 신고</a></li>
			</ul>
		</div>

		<div class="us">
			<h2>CONTACT US</h2>

			<div class="foo_git">
				<a href="https://github.com/devkys/CheongDaBang"><i
					class="fa-brands fa-github" style="color: #F2DEBA;"> 청다방 </i></a> <br>
			</div>

			<div class="foo__mail">
				<i class="fa-solid fa-envelope"></i> 경서 keongseo1234@gmail.com<br>
				<i class="fa-solid fa-envelope"></i> 혜지 heaji0320@gmail.com<br>
				<i class="fa-solid fa-envelope"></i> 성현 a91078933@gmail.com <br>
				<i class="fa-solid fa-envelope"></i> 서유 <br> <i
					class="fa-solid fa-envelope"></i> 동욱 revorution100@gmail.com<br> <i
					class="fa-solid fa-envelope"></i> 명재 tandk97@gmail.com<br>
			</div>
		</div>

		<div class="site">
			<div class="site-title">
				<i class="fa-solid fa-sitemap"></i>
				<h2>관련 사이트</h2>
			</div>
			<select onchange="window.open(this.value);" class="drop_down">
				<option value="https://www.youthcenter.go.kr/opi/openApiIntro.do">온라인
					청년 오픈 API</option>
				<option value="https://www.data.go.kr/">공공 데이터 포털 오픈 API</option>
				<option value="https://apply.lh.or.kr/index.html#">LH 청약 센터</option>
				<option value="https://openapi.work.go.kr/opiMain.do">워크넷
					오픈 API</option>
				<option value="https://www.mk.co.kr/rss">RSS 신문 기사</option>
			</select>
		</div>

	</div>
</footer>
