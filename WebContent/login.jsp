<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>
   <style>
.tit { text-align: center; line-height:3.6; font-size:28px; }
.tb { display:table; border-callapse:collapse; }
.tb tr { display:table-row; }
.tb th, .tb td { display:table-cell; }
.in_data { display:block; width:320px; height:40px; line-height: 40px; padding-left: 10px; padding-right: 10px; 
font-size:14px; color:#333'; border:1px solid #333; '}
.fr_wrap { clear:both; width:420px; margin: 20px auto; height: 60px; }
.fr_wrap ul { clear:both; height:60px; }
.fr_wrap li { float:left; margin:10px;  height: 60px; }
.in_btn { display:block; text-decoration: none; outline:0; border:0; background-color: #333; color:#fff; 
text-align: center; line-height: 40px; border-radius:22px;  width:120px;  }
.in_btn:hover { cursor:pointer; background-color: gold; }   
   </style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
	<div class="content">
		<h2 class="tit">로그인</h2>
		<form action="LoginCtrl" method="post" class="frm" id="frm" name="frm">
		  <table class="tb">
		    <tbody>
		      <tr>
		      	<th class="col_hd"><label for="hid">아이디</label></th>
		      	<td class="dol_data"><input type="text" name="hid" id="hid" class="in_data" required autofocus/></td>
		      </tr>
		        <tr>
		      	<th class="col_hd"><label for="hpw">비밀번호</label></th>
		      	<td class="dol_data"><input type="password" name="hpw" id="hpw" class="in_data" required /></td>
		      </tr>
		    </tbody>
		  </table>
		<div class="fr_wrap">
			<ul>
				<li class="col_btn">
				<input type="submit" value="로그인" class="in_btn"/>
				</li>
				<li class="col_btn">
				<input type="reset" value="취소" class="in_btn" />
				</li>
			</ul>

		</div>
		</form>
	</div>

</div>
</body>
</html>