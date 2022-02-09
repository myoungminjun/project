<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.board.example.dto.*"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<% 
	MemberDTO member = (MemberDTO) session.getAttribute("member");
%>
<meta charset="UTF-8" />
<!-- 뷰포트 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 파비콘 설정 -->
<link rel="shortcut icon" href="${path}/include/source/favicon.ico">
<!-- 메타포 설정 -->
<meta name="title" content="세종 행복나들이 홈페이지">
<meta name="keywords" content="세종 행복나들이, 행복나들이, 세종시 여행정보">
<meta name="description" content="세종 행복나들이 홈페이지">
<!-- 오픈그래프 설정 -->
<meta property="og:title" content="세종 행복나들이 홈페이지">
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.sejong.go.kr/tour.do">
<meta property="og:description" content="세종 행복나들이, 행복여행, 세종대표명소">
<meta property="og:image" content="${path}/include/source/mv_1_1.jpg" />
<!-- 폰트 로딩 -->
<link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${path}/include/css/fonts.css">
<!-- 필수 API 로딩 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- 외부 스타일 연결 -->
<link rel="stylesheet" href="${path}/include/css/common.css">
<link rel="stylesheet" href="${path}/include/css/grid.css">
<link rel="stylesheet" href="${path}/include/css/slick.css">
<link rel="stylesheet" href="${path}/include/js/datatables.min.css">
<link rel="stylesheet" href="${path}/include/css/slick-theme.css">
<script src="${path}/include/js/slick.js"></script>
<script src="${path}/include/js/datatables.min.js"></script>
