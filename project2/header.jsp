<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="./css/p_common.css">
<link rel="shortcut icon" href="./img/favicon.ico">

<div class="wrap">
	<header class="hd">
		<div class="hd_wrap">
			<nav class="tnb">
				<ul class="left">
					<li><a href="index.jsp">HOME</a></li>
					<li><a href="GetGoodsListCtrl2">PRODUCT</a></li>
					<li><a href="GetInformListCtrl2">FAQ</a></li>
					<li><a href="GetBoardListCtrl2">QNA</a></li>
				</ul>
				<a href="index.jsp" class="logo"> <img src="./img/logo.png"
					alt="앰블럼이미지"></a>
			<%
				String cusid = (String) session.getAttribute("cusid");
				String cusname = (String) session.getAttribute("cusname");
				
				if (cusid!= null) {
				%>
				<%
				if (cusid.equals("admin")) {
				%>
			<ul class="right">
					<li><%=cusname%>님 반갑습니다</li>
					<li><a href="admin.jsp">관리자 페이지</a></li>
					<li><a href="logout.jsp">로그아웃</a></li>
					</ul>

			<%
		} else {
			%>
			<ul class="right">
				<li><%=cusname%>님이 로그인 중임</li>
				<li><a href="logout.jsp">로그아웃</a></li>
				<li><a href="MyPageCtrl?cusid=<%=cusid %>">마이페이지</a></li>
				<li><a href="introduce.jsp">회사소개</a></li>
				</ul>
			<%
		} 
		%>
		<% 
		} else {	
		%>
		<ul class="right">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="agreement.jsp">회원가입</a></li>
				<li><a href="introduce.jsp">회사소개</a></li>
			<%
				}
			%>
		</ul>
	  </nav>
	  </div>
	  </header>
	</div>
</html>