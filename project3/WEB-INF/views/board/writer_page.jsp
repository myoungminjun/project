<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<div class="content">
		<form name="bdto" action="${path}/board/insert.do" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th><label for="title">제목</label></th>
						<td><input type="text" name="title" id="title" size="80" placeholder="제목입력"></td>
					</tr>
					<tr>
						<th><label for="content">내용</label></th>
						<td><textarea name="content" id="content" cols="80" rows="8" placeholder="글 내용 입력"></textarea></td>
					</tr>
					<tr>
						<th><label for="writer">작성자</label></th>
						<td><input type="text" name="writer" id="writer" placeholder="작성자"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="글 등록"/> &nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<%@ include file="../include/footer.jsp" %>
</div>    
</body>
</html>