<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.company.model.ProductVO" %>
    <%
   ArrayList<ProductVO> prodList = (ArrayList<ProductVO>) request.getAttribute("productList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품목록</title>
<style>
.tit { text-align:center; }
table { display:table; border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; }
.tb { width:1500px; margin:20px auto; }
.tb th, .tb td { line-height:36px; border-bottom:1px solid #333; }
.tb th { border-top:2px solid #333; background:#d3d3d3; }
.btn_wrap { width: 320px; margin: 20px auto; display:flex; }
.btn_wrap .in_btn { display: block; width: 80px; margin: 15px; background-color: #333; color: #fff; 
   text-align: center; border: 0; outline: 0; float: left; line-height: 38px; }
   .btn_wrap .in_btn:hover { background-color:#808080; }
</style>
</head>
<body>
<div class="wrap">
<form action="DeleteProductCtrl" method="post" name="delForm" onsubmit="return frm_submit(this)">
<%@include file ="admin_header.jsp" %>
<h2 class="tit">제품목록</h2>

   <table class="tb">
      <thead>
         <tr>
            <th class="item1">제품 번호</th>
            <th class="item2">제품 이름</th>
            <th class="item3">제품 가격</th>
            <th class="item4">제품 수량</th>
            <th class="item5">제품 사진</th>
            <th class="item6">편집</th>
         </tr>
      </thead>

<%
   for(int i=0; i<prodList.size(); i++ ) {
         ProductVO prod = prodList.get(i);
%>
   <tbody>
      <tr>
         <td class="item1"><a href="EditProductFormCtrl?pronum=<%=prod.getPronum()%>"><%=prod.getPronum()%></a></td>
         <td class="item2"><%=prod.getProname()%></td>
         <td class="item3"><%=prod.getProprice()%></td>
         <td class="item4"><%=prod.getProcnt()%></td>
         <td> <img src='./img/<%=prod.getProimg() %>' alt=""></td>
         <td><input type="checkbox" name="ck" id="ck2<%=i %>" value="<%=prod.getPronum()%>" class="ck_item"/></td>   
      </tr>
<%
   }
%>

      </tbody>
   </table>
   <hr />
   <div class="btn_wrap">
   <button type="submit" class="in_btn" onclick="">삭제</button>
   <button type="reset" class="in_btn" onclick="">취소</button>
   <a href="addProductForm.jsp"class="in_btn" onclick="">제품등록</a>
   </div>
   </form>
   <script>
   function frm_submit(f){
      var sel ='input[name="ck"]:checked';
      var item = document.querySelectorAll(sel);
      var cnt = item.length;
      if(cnt==0){
         alert("삭제할 요소를 선택하지 않았습니다");
         return false;
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
   </div>
</body>
</html>