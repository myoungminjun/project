<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shop.model.*" %>    
<%@ page import="com.shop.controller.*" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.view.*" %>
<%
	ArrayList<BoardVO> boardList = (ArrayList<BoardVO>) request.getAttribute("boardList"); 
	int spage = (int) request.getAttribute("spage");
	int maxPage = (int) request.getAttribute("maxPage");
	int startPage = (int) request.getAttribute("startPage");
	int endPage = (int) request.getAttribute("endPage");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시판 목록</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<meta name="viewport" content="width=device-width; initial-scale=1.0, userscalable=no" />
<script src="jquery-latest.js"></script>
<link rel="stylesheet" href="datatables.min.css" />
<script src="datatables.min.js"></script>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<style>
.pagenum{text-align: center;}
.title{text-align: center; padding-top:15px;}
.container{background-color: }
.table{ width: 50%;  border-collapse: collapse; margin-left: 500px;}
.tit{ padding: 10px; font-weight: 900; text-align: center; }
.cont{ padding: 10px; text-align: center; }
.btn{float: right;margin-top:30px; margin-right:100px;border: 2px solid #666;
padding:0 24px; border-radius: 9px;}
.btn:hover{ color: #fff; background-color: #463527;}

</style>
</head>
<body>
	<div class="container">
		<%@ include file="../header.jsp"%>
<ul>
<li><img src="./img/banner_1920.jpg" alt="" class="vs_img">
</ul>		
		<h2 class="title">게시판 목록</h2>
		<hr>
				<a href="./board/addBorad.jsp" class="btn btn-default">글쓰기</a>
		<div class="content">
			<div class="borad_area">
				<table id="bList" class="table">
					<thead>
						<tr>
							<th class="tit">글번호</th>
							<th class="tit">제목</th>
							<th class="tit">작성자</th>
							<th class="tit">작성일</th>
							<th class="tit">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="cnt" value="${boardList.size() }" />
						<c:forEach items="${boardList }" var="board" varStatus="status">
							<tr>
								<td class="cont">${cnt }</td>
								<td class="cont"><a
									href="GetBoardCtrl?num=${board.getNum() }&pageNum=${spage }">${board.getSubject() }</a>
								</td>
								<td class="cont">${board.getId() }</td>
								<td class="cont">${board.getResDate() }</td>
								<td class="cont">${board.getCount() }</td>
							</tr>
							<c:set var="cnt" value="${cnt - 1 }" />
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="pageForm" class="pagenum">
				<c:if test="${startPage != 1 }">
					<a href='../GetBoardListCtrl?page=${startPage-1 }'>[ 이전 ]</a>
				</c:if>
				<c:forEach var="pageNum" begin="${startPage }" end="${endPage }">
					<c:if test="${pageNum == spage }">
                   ${pageNum }&nbsp;
               </c:if>
					<c:if test="${pageNum != spage }">
						<a href='../GetBoardListCtrl?page=${pageNum }'>${pageNum }&nbsp;</a>
					</c:if>
				</c:forEach>
				<c:if test="${endPage != maxPage }">
					<a href='../GetBoardListCtrl?page=${endPage+1 }'>[다음]</a>
				</c:if>
			</div>
		</div>
	</div>

</body>
</html>