<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.shop.biz.*" %>
<%@page import="com.shop.model.*" %>
<%
	GoodsVO goods = (GoodsVO)request.getAttribute("goods");

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
		<h2 class="tit">상품 수정 하기</h2>
		<form action="UpdateGoodsCtrl" method="post"name="frm">
		<table class="table">
			<tr>
				<th class="item1">제품코드</th>
				<td class="item2">
					<input type="text" name="gcode"value="<%=goods.getGcode() %>" readonly/>
				</td>
			</tr>
			<tr>
				<th class="item2">제품이름</th>
				<td class="item2">
					<input type="text"name="gname"id="gname"value="<%=goods.getGname()%>"/></td>
			</tr>
			<tr>
				<th class="item3">제품 가격</th>
				<td class="item2">
					<input type="text" name="gprice" id="gprice" value="<%=goods.getGprice() %>"/><td>
			</tr>
			<tr>
				<th class="item4">제품 수량</th>
				<td class="item2">
				<input type="text" name="gcnt" id="gcnt" value="<%=goods.getGcnt() %>"/></td>
			</tr>
			<tr>
				<th class="item6">제품 사진</th>
				<td class="item2">
				<input type="text"name="gimg"id="gimg"value="<%=goods.getGimg() %>" />
				<input type="button" value="이미지 업로드" class="btn btn-default" onclick="imgCheck()" /><br>
				<img src="./img/<%=goods.getGimg() %>" id="gimg" alt="제품 사진" />
                <input type="hidden" name="imgck" />
                <input type="hidden" name="gcode" />
                
                </td>
			</tr>
			
		</table>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<input type="submit"class="btn btn-default" value="상품 수정" />
			<a href="GetGoodsListCtrl"class="btn btn-default">취소</a>
		</div>
	</form>
	<script>	
	function imgCheck() {
		window.open("goods/imgUploadForm.jsp", "goods/imguploadcheck.jsp", "width=300, height=300");
	}
	</script>
</div>
<!-- 푸터 인클루드 -->
</body>
</html>