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
                <li>
                <a href="memberList.jsp"class="dp1">회원관리</a>
                <ul class="sub">
				 		<li><a href="productList.jsp">회원목록</a></li>
						<li><a href="insertProduct.jsp">회원등록</a></li>
					</ul>
				</li>
                <li><a href="admin_product.jsp"class="dp1">제품관리</a>         		 	
					<ul class="sub">
				 		<li><a href="productList.jsp">제품목록</a></li>
						<li><a href="insertProduct.jsp">제품등록</a></li>
					</ul>
             <li><a href="contact.html"class="dp1">고객센터 관리</a></li>
            </ul>
	<nav class="tnb">
		<ul>
			<li><a href="admin_logout.jsp">관리자 로그아웃</a></li>
		</ul>
	</nav>
</div>
</div> 
</header>