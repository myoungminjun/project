<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/masonry-layout@4.2.2/dist/masonry.pkgd.min.js"></script>
<link rel="shortcut icon" href="./img/favicon.ico">
<style>
.content{text-align: center;}
.title{margin-left: 500px;}
.tit{
float: left; 
padding-left: 125px;
font-weight: 900
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class=content>
<a href="GetCustomListCtrl"><img src="img/custom.png" alt="회원 관리" class="icon1"></a>
<a href="GetGoodsListCtrl"><img src="img/goods.png" alt="제품 관리" class="icon1"></a>
<a href="GetInformListCtrl"><img src="img/inform.png" alt="공지사항 관리" class="icon2"></a>
<a href="GetBoardListCtrl"><img src="img/board.png" alt="게시판 관리" class="icon2"></a>
<div class="title">
<ul>
	<li class="tit">회원 관리</li>
	<li class="tit">제품 관리</li>
	<li class="tit">공지사항 관리</li>
	<li class="tit">게시판 관리</li>
</ul>
</div>
</div>
</body>
</html>