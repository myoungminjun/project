<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String sid = (String) session.getAttribute("id");
   String sname = (String) session.getAttribute("name");
   if(sid!=null) {
      out.println("<h3>"+sname+"님</h3>");
   } else {
      response.sendRedirect("admin_login.html");
   }
%>
<style>
*{
   text-decoration:none;
   list-style:none;   

}
.header {
   display:block;
}
</style>
<header>
   <div class="wrap">
      <nav class="tnb">
      <ul>
         <li><a href="admin_logout.jsp">관리자 로그아웃</a></li>
      </ul>
   </nav>
        <div class="header">
            <ul class="nav">
                <li>
                <a href="GetMemberListCtrl"class="dp1">회원관리</a>
                <ul class="sub">
                  <li><a href="admin_join.jsp">회원등록</a></li>
               </ul>
            </li>
                <li><a href="GetProductListCtrl"class="dp1">제품관리</a>                   
             <li><a href="GetNoticeListCtrl"class="dp1">공지사항 관리</a></li>
            </ul>

</div>
</div> 
</header>