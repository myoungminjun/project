<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="./css/p_common.css">
     <div class="intro_bg">
        <ul class="tnb">

<%
		String sid = (String) session.getAttribute("id");
		String sname = (String) session.getAttribute("name");
		%>
	<%
	 if(sid=="admin") {
	%>	
			<li><a href="admin.jsp">관리자 페이지</a></li>
			<li><a href="logoutCtrl">로그아웃</a></li>
	<%
		} else if(sid!=null) {
	%>
	
			<li><%=sname %>님이 로그인 중임</li>
			<li style="clear:both"><a href="logout.jsp">로그아웃</a></li>
			<li><a href="mypage.jsp">회원정보수정</a></li>
			<li><a href="introduce.jsp">사이트맵</a></li>
<%
	 } else {	

%>			
			<li><a href="login.html">로그인</a></li>
			<li><a href="agreement.jsp">회원가입</a></li>
			<li><a href="introduce.jsp">사이트맵</a></li>
<%
	 }
%>			</ul>
			<div class="header">
              <ul class="nav">
                  <li><a href="index.jsp">HOME</a></li>
                  <li><a href="product.jsp">PRODUCT</a></li>       
                  <li><a href="GetNoticeListCtrl2">FAQ</a></li>
              </ul>
            </div>
</div>