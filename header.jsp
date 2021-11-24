<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="./css/p_common.css">
     <div class="intro_bg">
        <ul class="tnb">

<%
		String m_id = (String) session.getAttribute("id");
		String m_name = (String) session.getAttribute("name");

	 if(m_id!=null) {
%>		
			<li><%=m_name %>님이 로그인 중임</li>
			<li style="clear:both"><a href="logout.jsp">로그아웃</a></li>
			<li><a href="">회원정보수정</a></li>
			<li><a href="sitemap.html">사이트맵</a></li>
<%
	 } else {	

%>			
			<li><a href="login.html">로그인</a></li>
			<li><a href="agreement.jsp">회원가입</a></li>
			<li><a href="sitemap.html">사이트맵</a></li>
<%
	 }
%>			</ul>
			<div class="header">
              <ul class="nav">
                  <li><a href="home.jsp">HOME</a></li>
                  <li><a href="product.jsp">PRODUCT</a></li>
                  <li><a href="event.html">EVENT</a></li>
                  <li><a href="Contact.jsp">CONTACT</a></li>
              </ul>
            </div>
</div>