<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.test.model.*" %>
<%@ page import="com.test.biz.*" %>  
<%@ page import="com.test.view.*" %>
<%
   ArrayList<HoewonVO> HoewonList = (ArrayList<HoewonVO>)request.getAttribute("HoewonList");
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
</head>
<body>
<%@ include file="/admin_header.jsp" %>
   <div class="container">
      <h2 class="tit">회원  목록</h2>
      <form action="" method="post">
            <table class="table">
               <tr>
                  <td>
                        <select name="searchType" id="">
                           <option value="intit">제목</option>
                           <option value="incon">내용</option>
                        </select>
                        <input type="text" name="searchKeyword" />
                        <input type="submit" value="검색"/>
                  </td>
               </tr>
            </table>
      </form>
      <table class="table">
         <tr>
            <th class="item1">이름</th>
            <th class="item2">전화번호</th>
            <th class="item3">이메일</th>
            <th class="item4">가입일</th>
         </tr>
<%
for(int i=0;i<HoewonList.size();i++){
	HoewonVO hoewon = HoewonList.get(i);

%>
   <tr>
            <td class="item1"><a href="GetHoewonCtrl?hid=<%=hoewon.getHid() %>"><%=hoewon.getHname() %></a></td>
            <td class="item2"><%=hoewon.getHtel() %></td>
            <td class="item3"><%=hoewon.getHemail() %></td>
         	<td class="item4"><%=hoewon.getRdate() %></td>
         </tr>
<%
 }
%>
      </table>
      <!-- 페이지내이션(PageNation) : 목록의 값이 한 페이지 분량을 초과할 경우 나누어 표시하고, 
      해당 페이지 링크를 누르면 그 페이지에 해당하는 내용만 표시 -->
	<nav>
		<ul class="pagination">		
			<li><a href=""arial-label="Previous"><span arial-hidden="true">&laquo;</span></a></li>
			<li><a href="GetHoewonListCtrl">1</a></li>
			<li><a href=""arial-label="Next"><span arial-hidden="true">&raquo;</span></a></li>
			
		</ul>
	</nav>
      <!-- 버튼 그룹 -->
      <div class="btn-group">
      <a href="./Hoewon/AddHoewon.jsp" class="btn btn-default">회원등록</a>
      
      </div>
   </div>
<!-- 푸터 인클루드 -->
</body>
</html>