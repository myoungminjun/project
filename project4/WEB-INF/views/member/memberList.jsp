<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<body>
	<div class="wrap">
		<%@ include file="./nav.jsp"%>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${memberList}" var="memberList">
					<tr>
						<td>${memberList.userId}</td>
						<td>${memberList.userName}</td>
						<td>${memberList.regDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>