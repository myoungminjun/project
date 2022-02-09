<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
 <%@include file="../header.jsp" %>
	<div class="container">
		<h2 class="tit">공지사항 보기</h2>
		<form action="UpdateInformCtrl" method="post"name="frm">
		<table class="table">
			<tr>
				<th class="item1">번호</th>
				<td class="item2"><%=inform.getIdx() %>
					<input type="hidden" name="idx"value="<%=inform.getIdx() %>"/>
				</td>
			</tr>
			<tr>
				<th class="item2">제목</th>
				<td class="item2">
					<input type="text"name="intit"value="<%=inform.getIntit()%>"/></td>
			</tr>
			<tr>
				<th class="item3">내용</th>
				<td class="item2">
					<textarea name="incon" id="incon" rows="10" cols="100"><%=inform.getIncon() %></textarea></td>
			</tr>
			<tr>
				<th class="item4">작성자 이름</th>
				<td class="item2"><%=inform.getInname() %></td>
			</tr>
			<tr>
				<th class="item5">등록일</th>
				<td class="item2"><%=inform.getRdate()%></td>
			</tr>
			<tr>
				<th class="item4">읽은횟수</th>
				<td class="item2"><%=inform.getVisited() %></td>
			</tr>
		</table>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<input type="submit"class="btn btn-default" value="글 수정"/>
			<a href="GetInformListCtrl"class="btn btn-default">목록</a>
			<a href="DeleteInformCtrl?idx=<%=inform.getIdx()%>"class="btn btn-default">글 삭제</a>
			<%--<button class="btn btn-default" onclick="func1(<%=inform.getIdx() %>)">글 삭제</button>--%>
		</div>
	</form>
<%-- <script>
	function func1(data){
		if(confirm("정말로 삭제하시겠습니까?")){
		  location.href="DeleteInformCtrl?idx="+data;
		}else{
			return false();
		}
	}
	</script> --%>	
</div>
<!-- 푸터 인클루드 -->

</body>
</html>