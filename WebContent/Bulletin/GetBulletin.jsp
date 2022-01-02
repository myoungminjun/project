<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="com.test.model.*" %>
<%@ page import="com.test.biz.*" %>  
<%@ page import="com.test.view.*" %>
<%
   BulletinVO bulletin = (BulletinVO)request.getAttribute("bulletinList");
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

<title>Insert title here</title>
</head>
<body>
<!-- 헤더 인클루드 -->
   <div class="container">
      <h2 class="tit">공지사항상세 보기</h2>
      <form action="UpdateBulletinCtrl" method="post" name="frm">
      <table class="table">
         <tr>
            <th class="item1">번호</th> 
            <td class="item1"><%=bulletin.getBidx() %>
            <input type="hidden" name="bidx" value="<%=bulletin.getBidx() %>"/></td>
         </tr>  
         <tr>
            <th class="item1">제목</th>
            <td class="item2">
            <input type="text"name="btit"value="<%=bulletin.getBtit()%>"/></td>
         </tr>
         <tr>   
            <th class="item1">내용</th>
            <td class="item2">
            	<textarea name="bcon" id="bcon" cols="90" rows="10"><%=bulletin.getBcon() %></textarea>
         </tr>
         <tr>   
            <th class="item1">작성자</th>
            <td class="item2"><%=bulletin.getBname() %></td>
         </tr>
         <tr>   
            <th class="item1">작성일</th>
            <td class="item2"><%=bulletin.getRdate() %></td>
         </tr>
           <tr>   
            <th class="item1">방문횟수</th>
            <td class="item2"><%=bulletin.getVisited() %></td>
         </tr>
      </table>
     
      <!-- 버튼 그룹 -->
      <div class="btn-group">
      	<input type="submit"  class="btn btn-default" value="글 수정"/>
      	<a href="GetBulletinListCtrl"  class="btn btn-default" >목록</a>
      	<a href="DeleteBulletinCtrl?bidx=<%=bulletin.getBidx() %>" class="btn btn-default">글 삭제</a>
      </div>
      </form>
      
   </div>
<!-- 푸터 인클루드 -->
</body>
</html>