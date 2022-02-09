<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet"href="./css/p_common.css">
</head>
    <style>
    /* 내부 스타일 */
    input::placeholder { font-size: 25px; }
    .content{
    	background-color: #fff;
    }
    .con_tit{
        margin-top: 20px;
        text-align: center;
        font-size: 30px;
        font-weight: bold;
    }
    .frm fieldset { 
        width:600px; 
        padding:100px; 
        margin:20px auto; 
    } 
    .indata { 
        display:block; 
        width:600px; 
        height:48px; 
        line-height:48px; 
        text-indent:16px; 
        margin:30px auto; 
    }
    .btn_fr { 
        width:600px; 
    }
    .btn_fr li:first-child {
        float:left; 
        }
    .btn_fr li:last-child {
        margin-left:180px;
        }
    .inbtn { display:block; 
        width:240px; 
        height:48px; 
        line-height:48px; 
        text-align:center; 
        background-color:rgba(70,53,39,0.7); 
        color:#fff; 
        border:0; 
        outline:0; 
        border-radius:10px; 
    }
    </style>
<body>
<div class="container">
<%@include file="header.jsp" %>
	<section class="login" >
			<h2 class="con_tit">로그인</h2>
			<form action="LoginCtrl"method="post"class="frm"id="frm"name="frm">
				<fieldset>
					<input type="text" class="indata" id="cusid" name="cusid" placeholder="아이디" autofocus required />
					<input type="password" class="indata" id="cuspw" name="cuspw" placeholder="비밀번호 " required />
					<br /><br />
					<ul class="btn_fr">
						<li><input type="submit" class="inbtn" value="로그인"/></li>
					</ul>
				</fieldset>
			</form>
        </section>
</div>
</body>
</html>