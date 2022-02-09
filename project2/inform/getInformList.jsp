<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>  
<%@ page import="com.shop.view.*" %>
<%
	ArrayList<InformVO> informList = (ArrayList<InformVO>)request.getAttribute("informList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="./css/p_common.css">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link rel="shortcut icon" href="./img/favicon.ico">
<style>
.title{text-align: center; padding-top:15px;}
.container{background-color: }
.table{ width: 50%;  border-collapse: collapse; margin-left: 510px;}
.tit{ padding: 10px; font-weight: 900; text-align: center; }
.cont{ padding: 10px; text-align: center; }
</style>
</head>
<body>
 <%@include file="../header.jsp" %>
	<div class="container">
		<h2 class="tit">공지사항 목록</h2>
		<form action="" method="post">
				<table class="table">
					<tr>
						<td>
								<select name="searchType" id="">
									<option value="intit">제목</option>
									<option value="incon">내용</option>
								</select>
								<input type="text" name="searchKeyword" />
								<input type="submit" value="검색"/>
						</td>
					</tr>
				</table>
		</form>
		<table class="table">
			<tr>
				<th class="tit">번호</th>
				<th class="tit">제목</th>
				<th class="tit">내용</th>
				<th class="tit">작성자 이름</th>
				<th class="tit">작성일</th>
			</tr>

<%
for(int i=0;i<informList.size();i++){
	InformVO inform = informList.get(i);

%>
	<tr>
				<td class="cont"><%=inform.getIdx() %></td>
				<td class="cont"><a href="GetInformCtrl?idx=<%=inform.getIdx() %>"><%=inform.getIntit() %></a></td>
				<td class="cont"><%=inform.getIncon() %></td>
				<td class="cont"><%=inform.getInname() %></td>
				<td class="cont"><%=inform.getRdate() %></td>
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
				<li><a href="GetInformListCtrl">1</a></li>
				<li><a href=""arial-label="Next"><span arial-hidden="true">&raquo;</span></a></li>	
			</ul>
		</nav>
		<!-- 버튼 그룹 -->
		<div class="btn-group">
			<button><a href="./inform/addInform.jsp"class="btn-default">글작성</a></button>
		</div>
	</div>
<!-- 푸터 인클루드 -->
</body>
</html>