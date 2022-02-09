<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>글 보기</title>
<%@ include file="../include/head.jsp"%>
</head>
<body>
	<div class="wrap">
		<%@ include file="../include/menu.jsp"%>
		<div class="content">
			<h2 class="title">글 상세보기</h2>
			<c:if test="${member != null}">
				<a href="">글 쓰기</a>
			</c:if>
			<table class="table">
				<tbody>
					<tr>
						<th>글 번호</th>
						<td>${data.bno}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${data.title}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${data.content}</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${data.writer}</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>
							<fmt:formatDate value="${data.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${data.viewcnt}</td>
					</tr>
				</tbody>
			</table>
			<c:if test="${member.userid == 'admin'}">
				<a href="${path}/board/updatepage?bno=${data.bno}">수정</a>
				<a href="${path}/board/delete.do?bno=${data.bno}">삭제</a>
			</c:if>
			<a href="${path}/board/list.do">목록</a>
		</div>
		<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>