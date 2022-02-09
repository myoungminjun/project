<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.shop.biz.*" %>
<%@page import="com.shop.model.*" %>
<%
	CustomVO custom = (CustomVO)request.getAttribute("custom");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 보기</title>
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
 <%@include file="../header.jsp" %>
	<div class="container">
		<h2 class="tit">제품 보기</h2>
		<form action="UpdateCustomCtrl" method="post"name="frm">
		<table class="table">
			<tr>
				<th class="item1">아이디</th>
				<td class="item2">
					<input type="text" name="cusid"value="<%=custom.getCusid() %>" readonly/>
				</td>
			</tr>
			<tr>
				<th class="item2">비밀번호</th>
				<td class="item2">
					<input type="password"name="cuspw"id="cuspw"value="<%=custom.getCuspw()%>"/></td>
			</tr>
			<tr>
				<th class="item3">이름</th>
				<td class="item2">
					<input type="text" name="cusname" id="cusname" value="<%=custom.getCusname() %>"/><td>
			</tr>
			<tr>
				<th class="item4">전화번호</th>
				<td class="item2">
				<input type="text" name="custel" id="custel" value="<%=custom.getCustel() %>"/></td>
			</tr>
			<tr>
				<th class="item5">우편번호</th>
				<td class="item2">
				<input type="text" name="cuszipcode" id="cuszipcode" value="<%=custom.getCuszipcode() %>"/></td>
			</tr>
			<tr>
				<th class="item6">주소1</th>
				<td class="item2">
				<input type="text" name="add1" id="add1" value="<%=custom.getAdd1() %>"/></td>
			</tr>
			<tr>
				<th class="item7">상세주소2</th>
				<td class="item2">
				<input type="text" name="add2" id="add2" value="<%=custom.getAdd2() %>"/></td>
			</tr>
		</table>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<a href="GetCustomListCtrl"class="btn btn-default">목록</a>
			<input type="submit"class="btn btn-default" value="수정"/>
			<a href="DeleteCustomCtrl"class="btn btn-default">삭제</a>
		</div>
	</form>

</div>
<!-- 푸터 인클루드 -->
</body>
</html>