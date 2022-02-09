<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.shop.model.*" %>    
<%
	BoardVO board = (BoardVO) request.getAttribute("board");
 	int pageNum = (int) (request.getAttribute("pageNum"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정 폼</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<meta name="viewport" content="width=device-width; initial-scale=1.0, userscalable=no"/>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
a{color:#463527;}
.btn-primary{padding:0 24px;border: 1px solid #666; border-radius: 9px;
background-image: none; background-color: #fff; color:#333;}
.btn-primary:hover{ color: #fff; background-color: #463527;}
</style>
</head>
<body>
<div class="container">
	<%@ include file="../header.jsp" %>
	<h2>게시판 글 수정</h2>
	<div class="content">
	    <form method="post" action="UpdateBoardCtrl?page=${pageNum }&page=${pageNum }" name="boardForm" 
            enctype="multipart/form-data"> 
    	<input type="hidden" name="board_num" value="${board.getNum() }"/>
    	<input type="hidden" name="board_id" value="${board.getId() }"/>
    	<input type="hidden" name="existing_file" value="${board.getFile() }"/>
	    <table class="table">
	        <tr>
	            <td id="title">작성자</td>
	            <td>${board.getId() }</td>
	        </tr>
	            <tr>
	            <td id="title">
	                제 목
	            </td>
	            <td>
	                <input name="board_subject" type="text" size="70" maxlength="100" 
	                    value="${board.getSubject()  }"/>
	            </td>        
	        </tr>
	        <tr>
	            <td id="title">
	                내 용
	            </td>
	            <td><textarea name="board_content" cols="72" rows="20">${board.getContent() }</textarea></td>        
	        </tr>
	                <!-- 답글이 아닐 경우에만 파일 첨부 가능하도록 처리 -->
	        <c:if test="${board.getReLevel() == 0 }">    
	            <tr>
	                <td id="title">
	                    기존 파일
	                </td>
	                <td>&nbsp;&nbsp; ${board.getFile() }</td>    
	            </tr>
	            <tr>
	                <td id="title">
	                    첨부파일
	                </td>
	                <td>
	                    <input type="file" name="board_file"/>
	                </td>    
	            </tr>
	        </c:if>
	        <tr>
	            <td colspan="5">
	                <input type="reset" value="작성취소"  class="btn btn-primary">
	                <input type="submit" value="수정"  class="btn btn-primary">
	                <input type="button" value="목록" 
		                        onclick="javascript:location.href='GetBoardListCtrl?page=${pageNum }'" class="btn btn-primary">            
	            </td>
	        </tr>
	    </table>    
    </form>

	</div>
</div>
</body>
</html>