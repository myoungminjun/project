<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>
<link rel="stylesheet" href="./css/common.css" />
<style>
.frm { width:1020px; margin:0 auto; border-top:3px solid #333; border-bottom:3px solid #333; }
.tb { width:960px; margin:20px auto; height: 250px; }
.col_hd{
height:20px;
width:350px;
}
.fl_con { 
float:left; 
margin-right:15px; 
}
.fr_con { 
float:right; 
margin-left:15px; 
}
.in_data {
width:250px;
height:35px;
}
.content{
height:500px;
}
.btn_wrap {
width: 360px;
height: 80px;
margin: 0 auto;
display: block;
}
.btn_wrap .in_btn { 
display: block; 
width: 80px; 
margin: 15px; 
background-color: #333; 
color: #fff; 
text-align: center; 
border: 0; 
outline: 0; 
float: left; 
line-height: 38px; 
}
.btn_wrap .in_btn:hover { background-color:#808080; }
</style>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>
<div class="content">
<h2 class="tit">마이 페이지</h2>
<%
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id="scott";
	String pw="tiger";
	String sql;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, id, pw);
		sql = "select * from member where userid=?";
		stmt = con.prepareStatement(sql);
		stmt.setString(1, sid);
		rs = stmt.executeQuery();
		if(rs.next()) {
%>
<form action="UpdateCtrl" method="post" id="frm" name="frm" class="frm">
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="uid">아이디</label>
				</th>
				<td class="col_data">
					<input type="text" id="uid" name="uid" class="in_data fl_con"  value='<%=rs.getString("userid") %>'  readonly required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="upw" >비밀번호</label>
				</th>
				<td class="col_data">
					<input type="password" id="upw" name="upw" class="in_data" value='<%=rs.getString("passwd") %>'/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="uname">회원명</label>
				</th>
				<td class="col_data">
					<input type="text" id="uname" name="uname" class="in_data" value='<%=rs.getString("name") %>'/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="ubirth">출생년도</label>
				</th>
				<td class="col_data">
					<input type="text" id="ubirth" name="ubirth" class="in_data" value='<%=rs.getInt("birth") %>'/>
				</td>
			</tr>
		</tbody>
	</table>
    <hr />
	<div class="fr_wrap">
		<ul>
			<li><button type="submit" class="in_btn" onclick="">정보수정</button></li>
			<li><button type="reset" class="in_btn" onclick="">취소</button></li>
			<li><a href="ResignCtrl" class="in_btn">회원 탈퇴</a></li>
		</ul>		
	</div>	
</form>
<%
	}
	rs.close();
	stmt.close();
	con.close();							
} catch(Exception e) {

}
%>
</div>	
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>