<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="com.company.model.NoticeVO" %>
<%
	NoticeVO noti = (NoticeVO) request.getAttribute("noti");
	String content = noti.getCon().trim();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 글 수정</title>
<style>
* { margin:0; padding:0; }
body, html { width:100%; }
ul { list-style:none; }
.hd { clear:both; height:100px; border-bottom:3px solid #f1f1f1; }
.gnb { width:1140px; margin:10px auto; }
.gnb li { float:left; margin:14px; }
.tit { padding-top:50px; line-height:50px; text-align:center; }
table { display:table; border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; }
.tb { width:600px; margin:20px auto; }
.tb th, .tb td { line-height:42px; border-bottom:1px solid #333; }
.tb th { background:#ffd35e; }
.tb tr:first-child th, .tb tr:first-child td { border-top:1px solid #333; } 
.in_data { display:block; line-height:32px; height:32px; margin-left:10px; padding-left:5px; width:240px; }
.in_data_area { line-height:1.6; padding:5px; width:400px; margin-left:10px; }
.btn_wrap { width:220px; margin:20px auto; }
.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
text-align:center; border:0; outline:0; float:left; line-height:38px; }
.btn_wrap .in_btn:hover { background-color:deeppink; }
.in_comment { padding-left:18px; }
input[readonly] { background:#f1f1f1; }
</style>
</head>
<body>
<div class="wrap">
<%@ include file="admin_header.jsp" %>
<h2 class="tit">상세 게시글 수정</h2>
<form action="EditNoticeCtrl" method="post" id="frm" name="frm">
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="nid">글번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_id" name="n_id" class="in_data" value="<%=noti.getN_id() %>" readonly required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="title" >제목</label>
				</th>
				<td class="col_data">
					<input type="text" id="tit" name="tit" class="in_data" value="<%=noti.getTit() %>"  required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="content">글 내용</label>
				</th>
				<td class="col_data">
					<textarea id="con" name="con" class="in_data_area"  cols="60" rows="15" required><%=content  %></textarea>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="author">작성자</label>
				</th>
				<td class="col_data">
					<input type="text" id="aut" name="aut" class="in_data" value="<%=noti.getAut() %>" required/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="resdate">작성일</label>
				</th>
				<td class="col_data">
					<input type="text" id="rdate" name="rdate" class="in_data" value="<%=noti.getRdate() %>" readonly />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="">읽은 횟수</label>
				</th>
				<td class="col_data">
					<span class="in_comment"><%=noti.getVisited() %></span>
				</td>
			</tr>
		</tbody>
	</table>
    <hr />
	<div class="btn_wrap">	
		<button type="submit" class="in_btn" onclick="">수정</button>
		<button type="reset" class="in_btn" onclick="">취소</button>
	</div>	
</form>
<%@ include file="admin_footer.jsp" %>
</div>
</body>
</html>