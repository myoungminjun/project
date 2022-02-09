<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@ page import="java.util.ArrayList" %>
   <%@ page import="com.company.model.NoticeVO" %>
<%
   ArrayList<NoticeVO> notiList = (ArrayList<NoticeVO>) request.getAttribute("notiList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>

<style>
.tit { text-align:center;
 }
table { display:table;
 border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; }
.tb { width:500px; margin:20px auto; }
.tb th, .tb td { line-height:36px; border-bottom:1px solid #333; }
.tb th { border-top:2px solid #333;
 background:#fff; }
.tb tbody tr:nth-child(2n) td { background:#d3d3d3; }
.btn_wrap { width: 320px; margin: 20px auto; display:flex; }
.btn_wrap .in_btn { display: block; width: 80px; margin: 15px; background-color: #333; color: #fff; 
   text-align: center; border: 0; outline: 0; float: left; line-height: 38px; }
   .btn_wrap .in_btn:hover { background-color:#808080; }
</style>
</head>
<body>

<div class="wrap">
<%@include file ="admin_header.jsp" %>
   <h2 class="tit">공지사항</h2>
   <form action="DeleteNoticeCtrl" method="post" name="delForm" onsubmit="return frm_submit(this)">
   <table class="tb">
      <thead>
         <tr>
            <th class="item1">작성자</th>
            <th class="item2">작성자아이디</th>
            <th class="item3">제목</th>
            <th class="item4">게시글 내용</th>
            <th class="item5">작성일시</th>
            <th class="item6">조회수</th>
            <th class="item7">편집</th>
         </tr>
      </thead>
      <tbody>      

<%
   for(int i=0; i<notiList.size(); i++) {
      NoticeVO notice = notiList.get(i);

%>

         <tr>
         	<td class="item1"><%=notice.getAut()%></td>
            <td class="item2"><a href="EditNoticeFormCtrl?id=<%=notice.getN_id() %>"><%=notice.getN_id()%></a></td>
            <td class="item3"><%=notice.getTit()%></td>
            <td class="item4"><%=notice.getCon()%></td>
            <td class="item5"><%=notice.getRdate()%></td>
            <td class="item6"><%=notice.getVisited()%></td>
            <td><input type="checkbox" name="ck" id="ck1<%=i %>" value="<%=notice.getIdx()%>" class="ck_item"/></td>
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
         <a href="addNoticeForm.jsp"class="in_btn" onclick="">글추가</a>
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
   </div>
</body>
</html>