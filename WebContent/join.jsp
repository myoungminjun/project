<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="./css/common.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
.frm { width:1020px; margin:0 auto; border-top:3px solid #333; border-bottom:3px solid #333; }
.tb { width:960px; margin:20px auto; }
.fl_con { float:left; margin-right:15px; }
.fr_con { float:right; margin-left:15px; }
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<%
	String uid = (String) application.getAttribute("hid");
	
%>

<div class="container">

<div class="content">
<h2 class="tit">회원 가입</h2>
<form action="JoinCtrl" method="post" id="frm" name="frm" onsubmit="return joinCheck(this)" class="frm">
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="hid">아이디</label>
				</th>
				<td class="col_data">
					<input type="text" name="hid" id="hid"  maxlength="12" class="in_data" required autofocus />
					<a class="in_btn" id="idckbtn" target="_blank" href="" style="text-align:center; ">ID중복 확인</a>
					<input type="hidden" value="<%=uid %>" name="idck" id="idck" />
					<script>
					$(function(){
						$("#hid").keyup(function(){
							$("#idckbtn").attr("href", "DupCtrl?hid="+$(this).val())
						});
					});
					</script>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hpw" >비밀번호</label>
				</th>
				<td class="col_data">
					<input type="password" id="hpw" name="hpw" class="in_data" />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hname">회원명</label>
				</th>
				<td class="col_data">
					<input type="text" id="hname" name="hname" class="in_data"/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="htel">전화번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="htel" name="htel" class="in_data"/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hemail">이메일</label>
				</th>
				<td class="col_data">
					<input type="text" id="hemail" name="hemail" class="in_data"/>
				</td>
			</tr>
		</tbody>
	</table>
    <hr />
	<div class="fr_wrap">
		<ul>
			<li><button type="submit" class="in_btn" onclick="">가입</button></li>
			<li><button type="reset" class="in_btn" onclick="">취소</button></li>
		</ul>		
	</div>	
</form>
	<!-- 아이디 중복 체크 및 유효성 검증 체크 스크립트 -->

</div>	
</div>
<script>
	function joinCheck(f){
		if(f.hpw.value!=f.hpw2.value) {
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			return false;
		}
	}
	</script>
</body>
</html>