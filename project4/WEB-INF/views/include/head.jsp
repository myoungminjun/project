<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="kr.co.vo.*"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>해양수산부</title>
    <!--메타포-->
    <meta name="title" content="" comment="해양수산부">
    <meta name="keywords" content="" comment="해양수산부,해양,수산부,해양수산">
    <meta name="description" content="" comment="해양수산부 공식 사이트">
    <!--오픈 그래프-->
    <meta property="og:type" content="website">
    <meta property="og:title" content="해양수산부">
    <meta property="og:description" content="해양수산부,해양,수산부,해양수산">
    <meta property="og:image" content="website">
    <meta property="og:url" content="https://www.mof.go.kr/">
    <!--파비콘-->
    <link rel="stylesheet" href="../resources/data/favicon.ico" comment="파비콘">
    <!--필요한 라이브러리-->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <!-- 구글 애널리틱스 연결 : 방문자 통계 및 로그분석-->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-216631800-1"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-216631800-1');
    </script>

    <!-- 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 
    font-family: 'Nanum Gothic', sans-serif;
    font-family: 'Noto Sans KR', sans-serif;
    -->
    <!-- 필수 API 로딩 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 사용자 외부 스타일 연결 -->
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/grid.css">
<link rel="stylesheet" href="../resources/css/slick.css">
<link rel="stylesheet" href="../resources/js/datatables.min.css">
<link rel="stylesheet" href="../resources/css/slick-theme.css">
<script src="../resources/js/slick.js"></script>
<script src="../resources/js/datatables.min.js"></script>