<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="com.test.model.*" %>
<%@ page import="com.test.biz.*" %>  
<%@ page import="com.test.view.*" %>
<%
   JepumVO Jepum = (JepumVO)request.getAttribute("JepumList");
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
      <h2 class="tit">제품상세</h2>
      <form action="UpdateJepuminCtrl" method="post" name="frm">
      <table class="table">
         <tr>
            <th class="item1">제품코드</th> 
            <td class="item1"><%=Jepum.getJcode() %>
            <input type="hidden" name="jcode" id="jcode" value="<%=Jepum.getJcode() %>"/></td>
         </tr>  
         <tr>
            <th class="item1">제품명</th>
            <td class="item2">
            <input type="text" name="jname" id="jname" value="<%=Jepum.getJname()%>"/></td>
         </tr>
         <tr>   
            <th class="item1">제품가격</th>
            <td class="item2">
            	 <input type="text" name="jprice" id="jprice" value="<%=Jepum.getJprice() %>"/></td>
         </tr>
         <tr>   
            <th class="item1">제품수량</th>
            <td class="item2">
            <input type="text" name="jcnt" id="jcnt" value="<%=Jepum.getJcnt() %>"/></td>
         </tr>
         <tr>   
            <th class="item1">제품사진</th>
            <td class="item2">
            <input type="text" name="jimg" id="jimg" value="<%=Jepum.getJimg() %>"/></td>
         </tr>
      </table>
     
      <!-- 버튼 그룹 -->
      <div class="btn-group">
      	<input type="submit"  class="btn btn-default" value="제품 수정"/>
      	<a href="GetJepumListCtrl"  class="btn btn-default" >목록</a>
      	<a href="DeleteJepumCtrl?jcode=<%=Jepum.getJcode() %>" class="btn btn-default">제품 삭제</a>
      </div>
      </form>
      
   </div>
<!-- 푸터 인클루드 -->
</body>
</html>