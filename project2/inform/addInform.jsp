<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.shop.biz.*" %>
<%@page import="com.shop.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글 보기</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.tit{
	
}
</style>
</head>
<body>
<!-- 헤더 -->
	<div class="container">
		<h2 class="tit">공지사항 보기</h2>
		<form action="../AddInformCtrl" method="post"name="frm">
		<table class="table">
			<tr>
				<th class="item1">제목</th>
				<td class="item2">
					<input type="text"name="intit"id="intit"value=""/></td>
			</tr>
			<tr>
				<th class="item1">내용</th>
				<td class="item2">
					<textarea name="incon" id="incon" rows="10" cols="100"></textarea></td>
			</tr>
			<tr>
				<th class="item1">작성자</th>
				<td class="item2">
				 <span>관리자</span>
				 <input type="hidden"name="inname"value="관리자"/></td>
			</tr>
		</table>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<input type="submit"class="btn btn-default" value="글 등록"/>
		</div>
	</form>
</div>

</body>
</html>