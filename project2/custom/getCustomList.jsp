<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>  
<%@ page import="com.shop.view.*" %>
<%
	ArrayList<CustomVO> customList = (ArrayList<CustomVO>)request.getAttribute("customList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.c_wrap{

height:750px;
}

.list  {
	border-bottom: 1px solid #444444;
	padding: 30px;
}
th{
   width: 500px;
   text-align: left;
}
</style>
</head>
<body>
	<%@include file="../header.jsp"%>
		<div class="container">
	<h2 class="tit">회원 목록</h2>
	<div class="c_wrap">
		<table class="table">
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>우편번호</th>
				<th>주소1</th>
				<th>상세주소2</th>
			</tr>
		</thead>
		<%
for(int i=0;i<customList.size();i++){
	CustomVO custom = customList.get(i);
%>
		<tbody>
			<tr>
				<td><a href="GetCustomCtrl?cusid=<%=custom.getCusid() %>"><%=custom.getCusid() %></a></td>
				<td><%=custom.getCuspw()%></td>
				<td><%=custom.getCusname() %></td>
				<td><%=custom.getCustel() %></td>
				<td><%=custom.getCuszipcode() %></td>
				<td><%=custom.getAdd1() %></td>
				<td><%=custom.getAdd2() %></td>
			</tr>
			<%
 }
%>
		</table>
		<!-- 페이지내이션(PageNation) 목록의 값이 한 페이지 분량을 초과할 경우 나누어 표시하고, 해당 페이지 링크를 누르면
		그 페이지에 해당하는 내용만 표시-->
		<nav>
			<ul class="pagination">
				<li><a href=""arial-label="Previous"><span arial-hidden="true">&laquo;</span></a></li>
				<li><a href="GetCustomListCtrl">1</a></li>
				<li><a href=""arial-label="Next"><span arial-hidden="true">&raquo;</span></a></li>	
			</ul>
		</nav>
		<div class="btn-group">
			<a href="GetCustomListCtrl"class="btn btn-default">목록</a>
		</div>
	</div>
<!-- 푸터 인클루드 -->
</body>
</html>