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
		<h2 class="tit">제품 추가</h2>
		<form action="../AddGoodsCtrl" method="post"name="frm">
		<table class="table">
			<tr>
				<th class="item1">제품코드</th>
				<td class="item2">
					<input type="text"name="gcode"id="gcode"value=""/></td>
			</tr>
			<tr>
				<th class="item1">제품 이름</th>
				<td class="item2">
					<input type="text"name="gname"id="gname"value=""/></td>
			</tr>
			<tr>
				<th class="item1">제품 가격</th>
				<td class="item2">
				 <input type="text"name="gprice"id="gprice"value=""/></td>
			</tr>
			<tr>
			<th class="item1">제품 수량</th>
				<td class="item2">
				<input type="text"name="gcnt"id="gcnt"value=""/></td>
			</tr>
			<tr>
			<th class="item1">제품 사진</th>
				<td class="item2">
				<input type="text"name="gimg"id="gimg"value=""/></td>
				<td class="item2">
				<input type="button" value="이미지 업로드" class="in_btn" onclick="imgCheck()" /> 
                <input type="hidden" value="" name="imgck" id="imgck" />
				</td>
			</tr>
			
		</table>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<input type="submit" class="btn btn-default" value="제품등록 "/>
			<a href="../GetGoodsListCtrl"class="btn btn-default">취소</a>
		</div>
	</form>
		<script>
	
	function imgCheck() {
		window.open("imgUploadForm.jsp", "imguploadcheck", "width=300, height=300");
	}
	</script>
</div>

</body>
</html>