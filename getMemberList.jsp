<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.company.model.MemberVO" %>
<%
  
    ArrayList<MemberVO> memberList = (ArrayList<MemberVO>) request.getAttribute("memberList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
	.tit { text-align:center; }
	.lst { list-style:none; clear:both; border-top:1px solid #333; width:900px; margin:0 auto;  
	height:36px; }
	.lst li { float:left; width:100px; line-height:36px; }
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
<h2 class="tit">회원 목록</h2>
<ul class="lst lh">
	<li class="item1">회원아이디 </li>
	<li class="item2">회원비밀번호</li>
	<li class="item3">출생년도</li>
	<li class="item4">가입일</li>
	<li class="item5">회원명</li>
	<li class="item6">포인트</li>
	<li class="item7">방문횟수</li>
	<li class="item8">인가</li>
	<li class="item9">편집</li>
</ul>
<form action="DeleteMemberCtrl" method="post" name="delForm" onsubmit="return frm_submit(this)">
<%	
	for(int i=0;i<memberList.size();i++){
		MemberVO member = memberList.get(i);
%>	
	<ul class="lst">
		<li class="item1"><a href="EditMemberFormCtrl?id=<%=member.getUserid() %>"><%=member.getUserid() %></a></li>
		<li class="item2"><%=member.getPasswd() %></li>
		<li class="item3"><%=member.getBirth() %></li>
		<li class="item4"><%=member.getRegdate() %></li>
		<li class="item5"><a href="EditMemberFormCtrl?id=<%=member.getUserid() %>"><%=member.getName() %></a></li>
		<li class="item6"><%=member.getPoint() %></li>
		<li class="item7"><%=member.getVisited() %></li>
		<li class="item8"><%=member.getYesno() %></li>
		<li class="item9">
			<input type="checkbox"  name="ck"  id="ck<%=i %>"  class="ck_item" value="<%=member.getUserid() %>"/>
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
