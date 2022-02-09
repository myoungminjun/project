<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>  
<%@ page import="com.shop.view.*" %>
<%
	ArrayList<BasketVO> basketList = (ArrayList<BasketVO>)request.getAttribute("basketList");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js"></script>
<link rel="shortcut icon" href="./img/favicon.ico">
<style>
a{color:#463527;}
.btn-primary{padding:0 24px;border: 1px solid #666; border-radius: 9px;
background-image: none; background-color: #fff; color:#333;}
.btn-primary:hover{ color: #fff; background-color: #463527;}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
 	<h2 class="tit">장바구니 목록</h2>
 		<div class="basketlist_area">
		<table class="basketid" id="basketid">
		<thead>
			<tr>
			 	<th>장바구니 번호</th>
				<th>제품 코드</th>
				<th>제품이름</th>
				<th>수량</th>
				<th>가격</th>
				<th>편집</th>
			</tr>
		</thead>
	<tbody>
	<c:set var="cnt" value="${basketList.size() }" />
	<c:forEach items="${basketList }" var="basket" varStatus="status">
	<tr>		
				<td>${basket.getBid() }</td>
				<td>${basket.getGcode() }</td>
				<td>${basket.getGoodsname() }</td>
				<td>${basket.getScnt() }</td>
				<td>${basket.getSprice() }</td>
				<td>
				<a href="DeleteBasketCtrl?bid=${basket.getBid() }&cusid=${basket.getCusid() }" class="btn btn-default">삭제</a>
				</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	<script>
   $(function(){
	   $("#basketid").DataTable();
   });
	  </script>
<%@ include file="../footer.jsp" %>
</div>
</body>
</html>