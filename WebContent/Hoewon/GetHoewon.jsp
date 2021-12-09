<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="com.test.model.*" %>
<%@ page import="com.test.biz.*" %>  
<%@ page import="com.test.view.*" %>
<%
   HoewonVO hoewon = (HoewonVO)request.getAttribute("HoewonList");
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

<title>회원정보</title>
</head>
<body>
<!-- 헤더 인클루드 -->
   <div class="container">
      <h2 class="tit">회원상세 보기</h2>
      <form action="UpdateHoewonCtrl" method="post" name="frm">
      <table class="table">
        <tr>
            <th class="item1">아이디</th> 
            <td class="item1"><%=hoewon.getHid() %>
            <input type="hidden" name="hid" value="<%=hoewon.getHid() %>" readonly/></td>
         </tr>  
         <tr>
            <th class="item1">비밀번호</th>
            <td class="item2">
            <input type="text"name="hpw" id="hpw" value="<%=hoewon.getHpw()%>"/></td>
         </tr>
         <tr>   
            <th class="item1">전화번호</th>
            <td class="item2">
            <input type="text"name="htel" id="htel" value="<%=hoewon.getHtel() %>"/></td>
         </tr>
         <tr>   
            <th class="item1">회원명</th>
            <td class="item2">
            <input type="text"name="hname" id="hname" value="<%=hoewon.getHname() %>"/></td>
         </tr>
         <tr>   
            <th class="item1">가입일</th>
            <td class="item2">
            <input type="text"name="hrdate" id="hrdate" value="<%=hoewon.getRdate() %>"readonly/></td>
         </tr>
      </table>
      <!-- 버튼 그룹 -->
      <div class="btn-group">
      	<input type="submit"  class="btn btn-default" value="회원정보 수정"/>
      	<a href="GetHoewonListCtrl"  class="btn btn-default" >목록</a>
      	<a href="DeleteHoewonCtrl?hid=<%=hoewon.getHname() %>" class="btn btn-default">회원 삭제</a>
      </div>
      </form>
      
   </div>
<!-- 푸터 인클루드 -->
</body>
</html>