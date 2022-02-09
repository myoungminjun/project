<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 상세 보기</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<div class="content">
		<h2 class="title">회원 상세 보기</h2>
		<table class="table">
			<tbody>
				<tr class="reg_row">
					<th><label class="reg-label" for="userId">아이디</label></th>
					<td class="reg_input">
						${member.userid}
					</td>
				</tr>
				<tr class="reg_row">
					<th><label class="reg-label" for="userPass">패스워드</label></th>
					<td class="reg_input">
						${member.passwd}
					</td>	
				</tr>
				<tr class="reg_row">
					<th><label class="reg-label" for="userName">성명</label></th>
					<td class="reg_input">
						${member.name}
					</td>	
				</tr>
				<tr class="reg_row">
					<th>이메일</th>
					<td class="reg_input">
						${member.email}
					</td>	
				</tr>
				<tr class="reg_row">
					<th>가입일</th>
					<td class="reg_input">
						<fmt:formatDate value="${member.regdate }" pattern="yyyy-MM-dd" />
					</td>	
				</tr>
			</tbody>
		</table>
	</div>
	<a href="${path}/member/list.do">회원목록</a>
	<%-- <input type="button" value="회원등록" onclick="location.href='${path}/member/join.do'"> --%>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>