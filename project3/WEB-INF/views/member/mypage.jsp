<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
		// 취소
		$(".cancle").on("click", function(){		
			location.href = "/";
		});
		$("#submit").on("click", function(){
			if($("#passwd").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#passwd").focus();
				return false;
			}
			if($("#name").val()==""){
				alert("성명을 입력해주세요.");
				$("#name").focus();
				return false;
			}
		});
	});
</script>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<section id="content">
		<h2 class="title">마이페이지</h2>
		<form action="${path}/member/update.do" method="post">
			<table class="table">
				<tbody>
					<tr class="reg_row">
						<th><label class="reg-label" for="userId">아이디</label></th>
						<td class="reg_input">
							<input class="reg-control" type="text" id="userId" name="userid" value="${member.userid}" readonly="readonly"/>
						</td>
					</tr>
					<tr class="reg_row">
						<th><label class="reg-label" for="userPass">패스워드</label></th>
						<td class="reg_input">
							<input class="reg-control" type="password" id="passwd" name="passwd" value="${member.passwd}"/>
						</td>	
					</tr>
					<tr class="reg_row">
						<th><label class="reg-label" for="userName">성명</label></th>
						<td class="reg_input">
							<input class="reg-control" type="text" id="name" name="name" value="${member.name}"/>
						</td>	
					</tr>
					<tr class="reg_row">
						<th>이메일</th>
						<td class="reg_input">
							<input class="reg-control" type="text" id="name" name="email" value="${member.email}"/>
						</td>	
					</tr>
					<tr class="reg_row">
						<th>가입일</th>
						<td class="reg_input">
							<fmt:formatDate value="${member.regdate }" pattern="yyyy-MM-dd" />
						</td>	
					</tr>
					<tr class="reg_row">
						<td class="btn_group" colspan="2">
							<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
							<button class="cancle btn btn-danger" type="button">취소</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</section>
	<%@ include file="../include/footer.jsp" %>
</div>	
</body>
</html>