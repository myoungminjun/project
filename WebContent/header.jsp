<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header.jsp  -->
<%
	String sid =(String) session.getAttribute("hid");
	String sname = (String) session.getAttribute("hname");
%>    
<header class="hd">
	<div class="hd_wrap">
		<nav class="tnb">
			<%
				if(sid=="admin") {
			%>
			<a href="admin.jsp">관리자 페이지</a>
			<a href="logoutCtrl">로그아웃</a>
			<%
				} else if(sid!=null) {
			%>
			<a><%=sid %>님 반갑습니다.</a>
			<a href="MyPageCtrl">마이페이지</a>
			<a href="LogOutCtrl">로그아웃</a>
			<%		
				} else {
			%>
			<a href="join.jsp">회원가입</a>
			<a href="login.jsp">로그인</a>
			<%
				}
			%>
			<a href="index.jsp">메인</a>
		</nav>
	</div>
</header>
