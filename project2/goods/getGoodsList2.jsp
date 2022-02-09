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
<title>제품 목록</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/masonry-layout@4.2.2/dist/masonry.pkgd.min.js"></script>
<style>
.table{margin-left:100px;}
h5{text-align:center;}
.container{width: 100%; clear: both;}
.g_wrap{display: flex; height: 1200px;}
.item{width:300px;display: flex;}
.title{text-align: center; font-weight: 500;}
.table .tit{font-size: 15px;font-weight: 600; }
.table .cont{float: left;}
.grid-item img{display:block; width:1600px; max-width:100%; }
.grid-item {width:250px;margin-left:30px;}
</style>
</head>
<body>
 <%@include file="../header.jsp" %>

<div class="table" id="mason">
         <%
            for (int i = 0; i < goodsList.size(); i++) {
            GoodsVO goods = goodsList.get(i);
         %>
         <div style="border: 2px solid rgba(237, 236, 232,1); ">
            <div class="grid-item">
               <a href="GetGoodsCtrl2?gcode=<%=goods.getGcode()%>"><img src="./img/<%=goods.getGimg()%>" alt="" /></a>
            </div>
            <div>
              <h5 class="tit"><%=goods.getGname()%></h5>
            </div>
            <div>         
              <h5 class="tit"><%=goods.getGprice()%></h5>

            </div>
         </div>
         <%
            }
         %>
      </div>
<!-- 푸터 인클루드 -->
<script>
      //var container = document.querySelector('#mason');
      //var msnry = new Masonry(container);
      $("#mason").masonry();
</script>
</body>
</html>