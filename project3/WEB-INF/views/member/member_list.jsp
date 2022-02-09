<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>
<style>
.hd{height: auto;}
body, html {
width: 100%;
font-family: 'Noto Sans KR', sans-serif;
}    
.vs {clear: both; width: 100%; height: 460px;
background-image: url("../include/source/svisual_img01.jpg"); background-position: center center;
background-repeat: no-repeat;}
.content_wrap{clear: both; width: 1200px; margin: 0 auto; margin-top: -148px;}
.sub_tit {height: 144px;line-height: 144px; font-size: 22px; background-color: 
#808080; text-align: center; width: 190px; float: left; color:#fff;}
.bread_box {height: 119px; background-color: #fff; width: 980px; float: right;
padding-left: 30px; padding-top: 24px; border-bottom: 1px solid #999;
position: relative;}
.cate_tit {color: #999; font-size: 24px;}
.bread {padding-top: 24px;line-height: 1.6;font-size: 16px;}
.bread a, .bread span {color: #999;}
.bread span.cur{ color: #222; font-weight: 600;}
.sub_tit_ico_box {position: absolute; right: 30px; bottom: 18px;}
.sub_tit_ico_box li {float: left; margin-left: 10px;}
.sub_tit_ico_box li a{display: block; color: #fff;}
.sub_tit_ico_box li a.ico {width: 34px;height: 34px; background-position: center
center; background-repeat: no-repeat; border-radius: 18px; border:1px solid #ccc}
.sub_tit_ico_box li a.ico.item1 {background-image: url("");}
.sub_tit_ico_box li a.ico.item2 {background-image: url("");}
.sub_tit_ico_box li a.btn {border-radius: 18px; padding: 6px 12px; width: auto;
background-color: #999;}

.leftbar {width: 190px;float: left; min-height: 44.5vh; background-color: #f0f0f0;}
.lnb {clear: both;}
.lnb li {clear: both; margin: 5px 6px; border: 1px solid #aaa; line-height: 52px;}
.lnb li a {color: #222; font-size: 14px; padding-left: 1em;}
.page_box {width: 980px; float: right; padding-left: 30px;}

.page {padding-top: 40px; overflow: auto; height: auto; min-height: 100vh;}
.page_tit {padding-bottom: 36px; color: #666;}
.sub_pic img {display: block; width: 100%; height: auto;}
.sub_pic_tit {font-size: 20px; line-height: 1.6;}
.sub_pic_com {font-size: 14px; line-height: 1.6; padding-bottom: 24px;}
.sub_full_tit {color: #808080; line-height: 3; font-size: 32px; text-align: center;}
.sub_con img {display: block; min-width: 100%;}
.sub_cate_com {padding: 14px; font-style: 12px; color: #666; line-height: 1.8;
width: 940px; font-weight: 300;}
.map_area {clear: both; position: relative;}
.cont_wrap{min-height: 60vh;}
.title{padding-left:950px;}
.table{padding-left:200px;}
input{width: 300px; height: 50px; font-size: 15px; background-color: rgba(219, 219, 219,0.1);}

</style>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<h2>회원목록</h2>
	<input type="button" value="회원등록" onclick="location.href='${path}/member/join.do'">
	<table border="1" width="700px">
	    <tr>
	        <th>아이디</th>
	        <th>이름</th>
	        <th>이메일</th>
	        <th>가입일자</th>
	    </tr>
	    <c:forEach var="row" items="${list}"> 
	    <tr>
	        <td>${row.userid}</td>
	        <td>
	        <a href="${path}/member/view.do?userid=${row.userid}">${row.name}</a>
	        </td>
	        <td>${row.email}</td>
	        <td><fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
	    </tr>
	    </c:forEach>    
	</table>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>