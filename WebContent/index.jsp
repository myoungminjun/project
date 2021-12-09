<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	String hid = (String) session.getAttribute("hid");
	String hname = (String) session.getAttribute("hname");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<!-- 문서정보 -->
<!-- 파비콘 -->
<!-- 필요한 로딩 정보 -->
<!-- 오픈그래프 -->
<!-- 필요한 스타일 또는 공통 스타일 연결 -->
<link rel="stylesheet" href="./css/common.css" />
<!-- 자바스크립트 플러그인 -->
<style>
.vs { clear:both; width:100%; height:400px; 
background-image:url("./img/top2.png"); background-position: center center; 
background-size:150% auto; background-repeat:no-repeat; 
animation-name:ani1; animation-duration:2.5s; animation-fill-mode:both; }
.vs_tit { padding-top:100px; color:#333; text-shadow:1px 1px 3px #333; font-size:40px; 
text-align: center; }
.vs_com { text-align: center; color:#333; font-size:16px; padding:40px 150px; }
@keyframes ani1 {
	0% { background-size:150% auto; }
	100% { background-size:100% auto; }
}



</style>
</head>
<body>
	<h2>메인 페이지</h2>
	<%
	if(hid=="admin") {
	%>
		<span>관리자</span>
	<%
	} else if(hid!=null && hname!=null) {	//로그인이 되어 있을 때
	%>
			<span><%=hname %></span>
			<a href="MyPageCtrl?hid=<%=hid %>">마이 페이지</a><br>
			<a href="LogOutCtrl">로그아웃</a><br>
			<a href="OutCtrl">회원탈퇴</a><br>
	<%		
		} else {
	%>
		<a href="login.jsp">로그인</a><br>
		<a href="join.jsp">회원가입</a><br>
	<%
		}
	%>
</body>
</html>