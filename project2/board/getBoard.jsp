<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.shop.model.*" %>
<%
	BoardVO vo = (BoardVO) request.getAttribute("board");
 	int pageNum = (int) (request.getAttribute("pageNum"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 보기</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<meta name="viewport" content="width=device-width; initial-scale=1.0, userscalable=no"/>
<style>
.title {text-align: center;}
.table {width: 50%; border-collapse: collapse; margin-left: 510px;}
.cont {padding: 10px; text-align: center;}
.tit { font-weight:900; text-align: center; }
.btn-primary{padding:0 24px;border: 1px solid #666; border-radius: 9px; background-color: white;
font-size: 15px;}
.btn-primary:hover{ color: #fff; background-color: #463527;}
.table td { min-height:42px; padding:5px; }
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
<div class="container">
	<h2 class="tit">게시판 글보기</h2>
	<div class="content">
	    <div id="board">
	        <table id="detailBoard" class="table">
	            <tr>
	                <td id="title">작성일</td>
	                <td>${board.getResDate() }</td>
	            </tr>
	            <tr>
	                <td id="title">작성자</td>
	                <td>${board.getId() }</td>
	            </tr>
	            <tr>
	                <td id="title">
	                    제 목
	                </td>
	                <td>
	                    ${board.getSubject() }
	                </td>        
	            </tr>
	            <tr>
	                <td id="title">
	                    내 용
	                </td>
	                <td>
	                    ${board.getContent() }
	                </td>        
	            </tr>
	            <tr>
	                <td id="title">
	                    첨부파일
	                </td>
	                <td>
	                    <a href='${board.getFile() }'>${board.getFile() }</a>
	                </td>    
	            </tr>
	    
	            <tr align="center" valign="middle">
	                <td colspan="5">
	                    <a href="BoardUpdateFormCtrl?num=${board.getNum() }&page=${pageNum }" class="btn btn-primary">수정</a>
	                    <a href="DeleteBoardCtrl?num=${board.getNum() }" class="btn btn-primary">삭제</a>
	                    <a href="BoardReplyFormCtrl?num=${board.getNum() }&page=${pageNum }" class="btn btn-primary">답글</a>    
	                    <input type="button" value="목록" 
	                        onclick="javascript:location.href='GetBoardListCtrl?page=${pageNum }'" class="btn btn-primary">            
	                </td>
	            </tr>
	        </table>
	    </div>
	</div>
</div>	
</body>
</html>