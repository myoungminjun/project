<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="hd fix">
	<div class="hd_wrap">
		<a href="${path}/home.do" class="logo"> 
		<img src="${path}/include/source/logo.png" alt="로고">
		<h2 class="logo_tit">행복나들이</h2>
		</a>
		<nav class="tnb">
			<ul>
				<!-- 로그인하지 않았거나 비회원일 경우 -->
				<c:if test="${member == null }">
					<li><a href="${path}/board/list.do">게시판</a></li>
					<li><a href="${path}/member/join.do">회원가입</a></li>
					<li><a href="${path}/member/login.do">로그인</a></li>
				</c:if>

				<c:if test="${member != null }">
					<li><a href="${path}/board/list.do">게시판</a></li>
					<li><a href="${path}/member/mypage.do?userid=${member.getUserid()}">마이페이지</a></li>
					<li><a href="${path}/member/logout.do">로그아웃</a></li>
				</c:if>

				<!-- 관리자일 경우 -->
				<c:if test="${member.userid == 'admin'}">
					<li><a href="${path}/member/list.do">회원관리</a></li>
				</c:if>
			</ul>
		</nav>
		<nav class="gnb">
			<ul>
				<li><a href="${path}/sub1.do" class="dp1">한눈에 세종</a>
					<ul class="sub">
						<li><a href="${path}/sub1.do">세종 대표명소</a> <!-- 하위메뉴 --></li>
						<li><a href="${path}/sub1.do">체험관광</a> <!-- 하위메뉴 --></li>
						<li><a href="${path}/sub1.do">캠핑여행</a> <!-- 하위메뉴 --></li>
					</ul></li>
				<li><a href="" class="dp1">세종여행</a>
					<ul class="sub">
						<li><a href="">대표축제</a></li>
						<li><a href="">여행테마</a></li>
						<li><a href="">음식</a></li>
						<li><a href="">숙박</a></li>
					</ul></li>
				<li><a href="" class="dp1">즐거운 축제</a>
					<ul class="sub">
						<li><a href="">세종 축제</a></li>
						<li><a href="">복숭아 축제</a></li>
					</ul></li>
				<li><a href="" class="dp1">역사/문화</a>
					<ul class="sub">
						<li><a href="">역사여행</a></li>
						<li><a href="">문화여행</a></li>
						<li><a href="">문화재여행</a></li>
					</ul></li>
				<li><a href="" class="dp1">커뮤니티</a>
					<ul class="sub">
						<li><a href="">묻고 답하기</a></li>
						<li><a href="${path}/board/list.do">게시판</a></li>
						<li><a href="">포토 갤러리</a></li>
						<li><a href="">이용 후기</a></li>
						<li><a href="">인증샷 갤러리</a></li>
					</ul></li>
			</ul>
		</nav>
	</div>
</header>