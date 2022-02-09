<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		});
		$("#registerBtn").on("click", function(){
			location.href="member/register";
		});
		$("#memberUpdateBtn").on("click", function(){
			location.href="member/update.do";
		});
	});
</script>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<a href="/member/list.do">회원목록</a><br />
	<h2 class="title">로그인 일부</h2>
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">
			<div>
				<label for="userId">아이디</label>
				<input type="text" id="userId" name="userId">
			</div>
			<div>
				<label for="userPass">비밀번호</label>
				<input type="password" id="userPass" name="userPass">
			</div>
			<div>
				<button type="submit">로그인</button>
				<button id="registerBtn" type="button">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="memberUpdateBtn" type="button">회원정보수정</button>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
	<%@ include file="../include/footer.jsp" %>
</div>	
</body>
</html>