<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<div class="container">
<header class="hd">
	<div class="hd_wrap">
		<a href="${path}/home.do" class="logo">
		<img src="../resources/data/logo.png" alt="로고타입">
		</a>
		<div class="search_wrap">
                <form action="" method="">
                    <div class="search_fr">
                        <input type="text" id="keyword" name="keyword" placeholder="검색어 입력">
                        <input type="submit" class="search_btn" value="검색">
                    </div>
                </form>
            </div>
            <div class="lang_link">
                <nav class="tnb">
			<ul>
				<!-- 로그인하지 않았거나 비회원일 경우 -->
				<c:if test="${member == null }">
					<li><a href="${path}/board/list">게시판</a></li>
					<li><a href="${path}/member/reg">회원가입</a></li>
					<li><a href="${path}/member/loginForm">로그인</a></li>
				</c:if>

				<c:if test="${member != null }">
					<li><a href="${path}/board/list.do">게시판</a></li>
					<li><a href="${path}/member/logout.do">로그아웃</a></li>
				</c:if>

				<!-- 관리자일 경우 -->
				<c:if test="${member.userid == 'admin'}">
					<li><a href="${path}/board/list.do">게시판</a></li>
					<li><a href="${path}/member/list.do">회원관리</a></li>
				</c:if>
			</ul>
		</nav>
            </div>
        </div>
        <nav class="gnb">
            <div class="gnb_group nav1">
                <ul class="l_gnb">
                    <li class="item1">
                        <a href="" class="dp1">정보공개</a>
                        <ul class="sub">
                            <li>
                                <a href="" class="dp2">정보공개제도 안내</a>
                                <dl class="dep3">
                                    <dt>정보공개</dt>
                                    <dd><a href="" class="dp3">정보공개제도안내</a></dd>
                                    <dd><a href="" class="dp3">비공개 대상정보 세부기준</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">사전정보공표</a>
                                <dl class="dep3">
                                    <dt>사전정보공표</dt>
                                    <dd><a href="" class="dp3">사전정보공표목록</a></dd>
                                    <dd><a href="" class="dp3">부서별 사전공표정보</a></dd>
                                    <dd><a href="" class="dp3">재정정보</a></dd>
                                    <dd><a href="" class="dp3">국고보조금 정보</a></dd>
                                    <dd><a href="" class="dp3">감사계획 및 결과</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">정보목록</a>
                            </li>
                            <li>
                                <a href="" class="dp2">공공데이터 개방</a>
                                <dl class="dep3">
                                    <dt>공공데이터 개방</dt>
                                    <dd><a href="" class="dp3">공공데이터 개념</a></dd>
                                    <dd><a href="" class="dp3">개방현황</a></dd>
                                    <dd><a href="" class="dp3">활용모델</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">정책실명제</a>
                                <dl class="dep3">
                                    <dt>정책실명제</dt>
                                    <dd><a href="" class="dp3">중점관리 대상사업</a></dd>
                                    <dd><a href="" class="dp3">국민신청실명제</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </li>
                    <li class="item2">
                        <a href="" class="dp1">민원·참여</a>
                        <ul class="sub">
                            <li>
                                <a href="" class="dp2">국민참여</a>
                                <dl class="dep3">
                                    <dt>국민참여</dt>
                                    <dd><a href="" class="dp3">국민정책제안</a></dd>
                                    <dd><a href="" class="dp3">정책토론</a></dd>
                                    <dd><a href="" class="dp3">전자공청회</a></dd>
                                    <dd><a href="" class="dp3">설문조사</a></dd>
                                    <dd><a href="" class="dp3">국민생각함</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">규제개혁</a>
                                <dl class="dep3">
                                    <dt>규제개혁</dt>
                                    <dd><a href="" class="dp3">규제개혁이란?</a></dd>
                                    <dd><a href="" class="dp3">규제혁신과제현황</a></dd>
                                    <dd><a href="" class="dp3">심사중인규제법안</a></dd>
                                    <dd><a href="" class="dp3">규제법령정보</a></dd>
                                    <dd><a href="" class="dp3">규제개혁제안</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">신고센터</a>
                                <dl class="dep3">
                                    <dt>신고센터</dt>
                                    <dd><a href="" class="dp3">공직자 부조리신고</a></dd>
                                    <dd><a href="" class="dp3">비영리법인 부정비리신고</a></dd>
                                    <dd><a href="" class="dp3">청탁금지법 위반신고</a></dd>
                                    <dd><a href="" class="dp3">예산낭비신고센터</a></dd>
                                    <dd><a href="" class="dp3">갑질신고</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">전자민원</a>
                                <dl class="dep3">
                                    <dt>JIS인증</dt>
                                    <dd><a href="" class="dp3">민원신청</a></dd>
                                    <dd><a href="" class="dp3">유사민원조회</a></dd>
                                    <dd><a href="" class="dp3">나의민원</a></dd>
                                    <dd><a href="" class="dp3">민원서식</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="" class="dp1">알림·뉴스</a>
                        <ul class="sub">
                            <li>
                                <a href="" class="dp2">알림</a>
                                <dl class="dep3">
                                    <dt>알림</dt>
                                    <dd><a href="" class="dp3">공지사항</a></dd>
                                    <dd><a href="" class="dp3">입찰</a></dd>
                                    <dd><a href="" class="dp3">인사</a></dd>
                                    <dd><a href="" class="dp3">채용·공모</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">뉴스</a>
                                <dl class="dep3">
                                    <dt>뉴스</dt>
                                    <dd><a href="" class="dp3">보도자료</a></dd>
                                    <dd><a href="" class="dp3">설명자료</a></dd>
                                    <dd><a href="" class="dp3">사진뉴스</a></dd>
                                    <dd><a href="" class="dp3">동영상뉴스</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">일자리 정보</a>
                                <dl class="dep3">
                                    <dt>일자리 정보</dt>
                                    <dd><a href="" class="dp3">일자리검색</a></dd>
                                    <dd><a href="" class="dp3">자격증</a></dd>
                                    <dd><a href="" class="dp3">전문인력양성</a></dd>
                                    <dd><a href="" class="dp3">이색직업소개</a></dd>
                                    <dd><a href="" class="dp3">이달의채용정보</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">해양방사능 정보</a>
                                <dl class="dep3">
                                    <dt>해양방사능 정보</dt>
                                    <dd><a href="" class="dp3">해양방사능 정보</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="" class="dp1">자주찾는 메뉴</a>
                        <ul class="sub1">
                            <li class="menu_thumb1">
                                <a href="" class="menu_thumb_link">주요업무계획</a>
                            </li>
                            <li class="menu_thumb2">
                                <a href="" class="menu_thumb_link">법령정보</a>
                            </li>
                            <li class="menu_thumb3">
                                <a href="" class="menu_thumb_link">적극행정</a>
                            </li>
                            <li class="menu_thumb4">
                                <a href="" class="menu_thumb_link">민원신청</a>
                            </li>
                            <li class="menu_thumb5">
                                <a href="" class="menu_thumb_link">직원검색</a>
                            </li>
                            <li class="menu_thumb6">
                                <a href="" class="menu_thumb_link">통계정보</a>
                            </li>
                            <li class="menu_thumb7">
                                <a href="" class="menu_thumb_link">국제해사동향</a>
                            </li>
                            <li class="menu_thumb8">
                                <a href="" class="menu_thumb_link">사전정보공표</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>  
            <div class="gnb_group nav2">
                <ul class="r_gnb">
                    <li class="item1">
                        <a href="" class="dp1">기관소개</a>
                        <ul class="sub">
                            <li>
                                <a href="" class="dp2">기관소개</a>
                                <dl class="dep3">
                                    <dt>기관소개</dt>
                                    <dd><a href="" class="dp3">장관소개</a></dd>
                                    <dd><a href="" class="dp3">설립목적</a></dd>
                                    <dd><a href="" class="dp3">해양수산부연혁</a></dd>
                                    <dd><a href="" class="dp3">비전 및 목표</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">조직안내</a>
                                <dl class="dep3">
                                    <dt>조직안내</dt>
                                    <dd><a href="" class="dp3">조직현황</a></dd>
                                    <dd><a href="" class="dp3">직원안내</a></dd>
                                    <dd><a href="" class="dp3">담당업무별 연락처</a></dd>
                                </dl>
                            </li>
                            <li>
                                <a href="" class="dp2">찾아오시는 길</a>
                                <dl class="dep3">
                                    <dt>찾아오시는 길</dt>
                                    <dd><a href="" class="dp3">본부</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </li>
                    <li class="item2">
                        <a href="" class="dp1">산하기관</a>
                        <ul class="sub">
                            <li>
                                <a href="" class="dp2">산하기관</a>
                                <dl class="dep3">
                                    <dt>산하기관</dt>
                                    <dd><a href="" class="dp3">한국해양교통안전공단</a></dd>
                                    <dd><a href="" class="dp3">한국해양진흥공사</a></dd>
                                    <dd><a href="" class="dp3">해양수산과학기술진흥원</a></dd>
                                    <dd><a href="" class="dp3">해양환경공단</a></dd>
                                    <dd><a href="" class="dp3">국립해양박물관</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="" class="dp1">고객센터</a>
                        <ul class="sub">
                            <li>
                                <a href="" class="dp2">QA</a>
                            </li>
                            <li>
                                <a href="" class="dp2">민원신청</a>
                            </li>
                            <li>
                                <a href="" class="dp2">FAQ</a>
                            </li>
                            <li>
                                <a href="" class="dp2">개인정보처리방침</a>
                            </li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="" class="dp1">사이트맵</a>
                    </li>
                </ul>
            </div>      
        </nav>  
    </header>
    </div>