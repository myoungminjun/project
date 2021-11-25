<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
   <%@ page import="com.company.model.ProductVO" %>
<%
   ArrayList<ProductVO> productlist = (ArrayList<ProductVO>) request.getAttribute("productList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>

<style>
.tit { text-align:center; }
	.lst { list-style:none; clear:both; border-top:1px solid #333; width:1200px; margin:0 auto;  
	height:36px; }
	.lst li { float:left; width:200px; line-height:36px; }
	.lst.lh { border-top:3px solid #333; }
	.lst:last-child { border-bottom:3px solid #333; }
	.btn_wrap { width:220px; margin:20px auto; }
	.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
	text-align:center; border:0; outline:0; float:left; line-height:38px; }
	.btn_wrap .in_btn:hover { background-color:deeppink; }
</style>

</head>
<body>

<div class="wrap">
<%@include file ="admin_header.jsp" %>
<h2 class="tit">제품 목록</h2>
<form action="DeleteProductCtrl" method="post" name="delForm" onsubmit="return frm_submit(this)">
<ul class="lst lh">
	<li class="item1">제품번호</li>
	<li class="item2">제품이름</li>
	<li class="item3">제품가격</li>
	<li class="item4">제품재고</li>
	<li class="item5">제품사진</li>
	<li class="item6">제품편집</li>
	
</ul>
<%
for(int i=0; i<productlist.size(); i++){
	   ProductVO produc = productlist.get(i);
	   
	%>
	    <ul class="lst">
			<li class="item1"><a href="EditProductFormCtrl?pronum=<%=produc.getPronum() %>"><%=produc.getPronum() %></a></li>
			<li class="item2"><%=produc.getProname() %></li>
			<li class="item3"><%=produc.getProprice() %></li>
			<li class="item4"><%=produc.getProcnt() %></li>
			<li class="item5"><img src="<%=produc.getProimg()%>" alt=""></li>
			<li class="item6">
			<input type="checkbox"  name="ck"  id="ck<%=i %>"  class="ck_item" value="<%=produc.getPronum() %>"/>
			</li>
		</ul>
	<% 
	   }
	%> 


<hr />
   <div class="btn_wrap">
         <button type="submit" class="in_btn" onclick="">삭제</button>
         <button type="reset" class="in_btn" onclick="">취소</button>
      </div>
</form>
<script>
   function frm_submit(f){
      var sel ='input[name="ck"]:checked';
      var item = document.querySelectorAll(sel);
      var cnt = item.length;
      if(cnt==0){
         alert("삭제할 요소를 선택하지 않았습니다");
         return false
      } else {
         var qt = confirm("정말로 삭제하시겠습니까?");
         if(qt){
            f.submit();
         } else {
            return false;
         }
      }
   }

</script>
   <%@include file ="admin_footer.jsp" %>
   </div>
</body>
</html>