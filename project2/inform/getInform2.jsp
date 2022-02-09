<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page import="java.util.Date"  %>
<%@page import="com.shop.biz.*" %>
<%@page import="com.shop.model.*" %>
<%
	InformVO inform = (InformVO)request.getAttribute("inform");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글 보기</title>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="./img/favicon.ico">
<style>
.title{text-align: center; padding-top:15px;}
.table{ width: 50%;  border-collapse: collapse; margin-left: 510px;
    border-top: 1px solid #444444; border-bottom: 1px solid #444444;}
.tit{ padding: 10px; font-weight: 900; text-align: center;  border-bottom: 1px solid #444444;
	border-right: 1px solid #444444;}
.cont{ padding: 10px; text-align: center; border-bottom: 1px solid #444444; }
.btn-group{text-align:center; padding-top: 160px;}
.btn-default{padding:0 24px;border: 1px solid #666; border-radius: 9px;}
.btn-default:hover{ color: #fff; background-color: #463527;}
</style>
</head>
<body>
 <%@include file="../header.jsp" %>
	<div class="container">
		<h2 class="title">공지사항 보기</h2>
		<table class="table">
			<tr>
				<th class="tit">번호</th>
				<td class="cont"><%=inform.getIdx() %></td>
			</tr>
			<tr>
				<th class="tit">제목</th>
				<td class="cont">
				<%=inform.getIntit()%>
			</tr>
			<tr>
				<th class="tit">내용</th>
				<td class="cont">
				<%=inform.getIncon() %>
			</tr>
			<tr>
				<th class="tit">작성자</th>
				<td class="cont"><%=inform.getInname() %></td>
			</tr>
			<tr>
				<th class="tit">등록일</th>
				<td class="cont"><%=inform.getRdate() %></td>
			</tr>
			<tr>
				<th class="tit">읽은횟수</th>
				<td class="cont"><%=inform.getVisited() %></td>
			</tr>
		</table>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<a href="GetInformListCtrl2"class="btn btn-default">목록</a>
		</div>
	</div>
</body>
</html>