<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.model.*"  %>
<%
	HoewonVO hoewon = (HoewonVO) request.getAttribute("hoewon");
%>  
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
.tb { width:960px; margin:20px auto; }
.fl_con { float:left; margin-right:15px; }
.fr_con { float:right; margin-left:15px; }
</style>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>
<div class="content">
<h2 class="tit">마이 페이지</h2>

<form action="UpdateCtrl" method="post" id="frm" name="frm" class="frm" onsubmit="return pwCheck(this)">
	<h2>내정보 수정</h2>
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="hid">아이디</label>
				</th>
				<td class="col_data">
					<input type="text" id="hid" name="hid" class="in_data fl_con"  value="<%=hoewon.getHid() %>"  readonly required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hpw" >비밀번호</label>
				</th>
				<td class="col_data">
					<input type="password" id="hpw" name="hpw" class="in_data" value="<%=hoewon.getHpw() %>"/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hpw2" >비밀번호 확인</label>
				</th>
				<td class="col_data">
					<input type="password" id="hpw2" name="hpw2" placeholder="영문,숫자를 반드시 포함할 것" class="in_data" />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hname">회원명</label>
				</th>
				<td class="col_data">
					<input type="text" id="hname" name="hname" class="in_data" value="<%=hoewon.getHname() %>"/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="htel">전화번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="htel" name="htel" class="in_data" value="<%=hoewon.getHtel() %>"/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="hemail">이메일</label>
				</th>
				<td class="col_data">
					<input type="text" id="hemail" name="hemail" class="in_data" value="<%=hoewon.getHemail() %>"/>
				</td>
			</tr>
		</tbody>
	</table>
    <hr />
	<div class="fr_wrap">
		<ul>
			<li><button type="submit" class="in_btn" onclick="">정보수정</button></li>
			<li><button type="reset" class="in_btn" onclick="">취소</button></li>
			
		</ul>		
	</div>	
</form>

</div>	
</div>
<script>
	function pwCheck(f){
		if(f.cuspw.value!=f.cuspw2.value) {
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			return false;
		}
	}
	</script>
</body>
</html>