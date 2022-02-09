<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>  
<%@ page import="com.shop.view.*" %>
<%
	ArrayList<GoodsVO> goodsList = (ArrayList<GoodsVO>)request.getAttribute("goodsList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품목록</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
</style>
</head>
<body>
	<div class="container">
	 <%@include file="../header.jsp" %>
		<h2>제품목록</h2>
			<div class="content">
				<table class="table" id="goods_tb">
				<thead>
				<tr>
					<th class="item1">번호</th>
				 	<th class="item2">제품 코드</th>
					<th class="item3">제품 이름</th>
					<th class="item4">제품 가격</th>
					<th class="item5">제품 수량</th>
					<th class="item6">제품 이미지</th>
					<th class="item7">편집</th>
				</tr>
				</thead>
				<tbody>
<%
	int cnt = goodsList.size();
	for(int i=0;i<goodsList.size();i++){
	GoodsVO goods = goodsList.get(i);

%>
	<tr>		
				<td class="item1"><%=cnt - i %></td>
				<td class="item2"><%=goods.getGcode() %></td>
				<td class="item3"><a href="GetGoodsCtrl?gcode=<%=goods.getGcode() %>"><%=goods.getGname() %></a></td>
				<td class="item4"><%=goods.getGprice() %></td>
				<td class="item5"><%=goods.getGcnt() %></td>
				<td class="item6"><img src='./img/<%=goods.getGimg() %>' alt=""></td>
				<td class="item7">
					<a href="DeleteGoodsCtrl?gcode=<%=goods.getGcode() %>" class="btn btn-default">삭제</a>
			</td>
					</tr>
<%
 }
%>
		</tbody>
		</table>
		<script>
		$(function(){
			$("#goods_tb").DataTable();
		});
		</script>
		<div class="btn-group">
			<a href="./goods/addGoods.jsp"class="btn btn-default">제품 추가</a>
		</div>
	</div>
<!-- 푸터 인클루드 -->
</div>
</body>
</html>