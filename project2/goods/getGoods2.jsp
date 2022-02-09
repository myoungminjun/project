<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.shop.biz.*" %>
<%@page import="com.shop.model.*" %>
<%
	GoodsVO goods = (GoodsVO)request.getAttribute("goods");
	application.setAttribute("vo", goods);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 보기</title>
<link rel="shortcut icon" href="./img/favicon.ico">
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<style>
.wrap { width: 100%; clear:both;}
.g_wrap{background-image: url("./img/bg3.jpg");min-height: 1000px;}
.pagenum{text-align: center;}
.title{text-align: center; padding-top:15px;}
.container{width:1000px; margin:0 500px; background-color: #fff;min-height: 1000px;}
.table{ width: 100%;  border-collapse: collapse; }
.tit{ padding: 10px; font-weight: 900; text-align: center; }
.cont{ padding: 10px; text-align: center; }
.item2{width: 100%; text-align: center; padding-top: 160px;}
.item1{ font-weight: 700; font-size: 18px; margin-left: 800px; }
input{width: 30px; font-size: 16px;}
.btn-group{text-align:center; padding-top: 160px;}
.btn-default{padding:0 24px;border: 1px solid #666; border-radius: 9px;}
.btn-primary{padding:0 25px;border: 1px solid #666; border-radius: 9px;}
.btn-default:hover{ color: #fff; background-color: #463527;}
.btn-primary:hover{ color: #fff; background-color: #463527;}
</style>
<script src="js/jquery-latest.js"></script>
</head>
<body>
<%@ include file="../header.jsp"%>
 <div class="g_wrap">
	<div class="container">
		<h2 class="tit">제품 상세 보기</h2>
		<ul class="table">
				<li class="item2"><img src='./img/<%=goods.getGimg() %>' alt=""></li>
			
			
				<li class="item1">제품이름 : <%=goods.getGname()%></li>
				
			
			
				<li class="item1">제품 가격 : <%=goods.getGprice() %></li>
				
			
			
				<li class="item1">제품 수량 : <input type="number" name="gcnt" id="gcnt" max="<%=goods.getGcnt() %>" min="1" value="1" /></li>
			
			
			</ul>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
				<%
					if(cusid != null) {
				%>
				<a href="javascript:" onclick="payAction()" class="btn btn-primary">구매</a>
				<a href="AddBasketCtrl?gcode=<%=goods.getGcode() %>&cusid=<%=cusid %>&gname=<%=goods.getGname() %>&gprice=<%=goods.getGprice() %>" class="btn btn-primary">장바구니</a>
				<a href="GetGoodsListCtrl2" class="btn btn-primary"> 목록</a>
				<%
					}
				%>
			</div>
		</div>
		<script>
      	function payAction(){
         var gcnt = document.getElementById("gcnt").value;
        
         location.href="pay.jsp?num="+gcnt;
      }

      </script>
</div>
</body>
</html>