<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = (String) session.getAttribute("id");
	if(uid!=null) {
		out.println("<h3>"+uid+"님</h3>");
	} else {
		response.sendRedirect("admin_login.html");
	}
%>
<header>
	<div class="wrap">
	     <div class="header">
            <ul class="nav">
      			 <li><a href="GetMemberListCtrl">회원 관리</a></li>
     			 <li><a href="GetNoticeListCtrl">게시판 관리</a></li>
     			 <li><a href="GetProductListCtrl">제품 관리</a></li>
   			</ul>
		<nav class="tnb">
				<ul>
					<li><a href="admin_logout.jsp">관리자 로그아웃</a></li>
				</ul>
		</nav>
</div>
</div> 
</header>