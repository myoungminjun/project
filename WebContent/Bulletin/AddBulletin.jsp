<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="com.test.model.*" %>
<%@ page import="com.test.biz.*" %>  
<%@ page import="com.test.view.*" %>
<%
   BulletinVO bulletin = (BulletinVO)request.getAttribute("bulletin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.tit{font-size:48px; text-align:center;}
</style>

<title>공지사항 작성</title>
</head>
<body>
<!-- 헤더 인클루드 -->
   <div class="container">
      <h2 class="tit">공지사항 작성</h2>
      <form action="../AddBulletinCtrl" method="post" name="frm">
      <table class="table">
         <tr>
            <th class="item1">제목</th>
            <td class="item2">
            <input type="text" name="btit" id="btit" value=""/>
            </td>
         </tr>
         <tr>   
            <th class="item1">내용</th>
            <td class="item2">
            <textarea name="bcon" id="bcon" cols="90" rows="10"></textarea>
            </td>
         </tr>
         <tr>   
            <th class="item1">작성자</th>
            <td class="item2">
            <span>관리자</span>
            <input type="hidden" id="bname" name="bname" value="관리자"/>
            </td>
         </tr>
      </table>
     
      <!-- 버튼 그룹 -->
      <div class="btn-group">
      	<input type="submit"  class="btn btn-default" value="글 등록"/>
      	<a href="../GetBulletinListCtrl">취소</a>
      </div>
      </form>

   </div>
<!-- 푸터 인클루드 -->
</body>
</html>