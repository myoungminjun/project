<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shop.model.*"  %>
<%
	CustomVO custom = (CustomVO) request.getAttribute("custom");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="./img/favicon.ico">
<meta name="viewport" content="width=device-width; initial-scale=1.0, userscalable=no"/>

<style>
* { margin: 0; padding: 0;}
body,html { width: 100%;}
ul {list-style: none;}
a { text-decoration: none;}


.cont{text-align: center; list-style: none;width: 50%;
margin-left: 480px;}
.fr_wrap ul li {float: left;list-style-type: none ; margin-left: 20px;}
.col_hd{float: left;margin-left: 250px;padding: 10px; font-weight: 900; text-align: center; }
.col_data{float: right; margin-left: 250px;
padding: 10px; text-align: center; }
.in_data{
border-top: none;
border-left: none;
border-right: none;
border-bottom: 2px solid black;
background-color: rgba(70, 53, 39,0.1);
border-radius: 3px;
font-size: 15px;
}
.fr_wrap{margin-left: 300px;
height: 40px;
margin-top:20px;
}
.in_btn{cursor:pointer;
text-align:center;
padding:0 24px;
border: 1px solid #666; 
border-radius: 9px;
font-size: 14px;
background-color: #fff;
}
.in_btn1{
cursor:pointer;
border-top: none;
border-left: none;
border-right: none;
padding:5px 24px;
border-bottom: 2px solid black;
background-color: rgba(70, 53, 39,0.1);
border-radius: 3px;}
.in_btn:hover{color:#fff; background-color: rgb(70, 53, 39);}
.in_btn1:hover{color:#595959; background-color: rgba(150, 150, 150,0.7);}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
<div class="container">
	<div class="cont">	
		<h2 class="tit">마이 페이지</h2>
		<form action="UpdateCustomCtrl" class="frm" method="post" id="frm" name="frm" onsubmit="return joinCheck(this)">
            <fieldset>
            <table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="cusid">아이디:</label>
				</th>
				<td class="col_data">
					<input type="text" name="cusid" id="cusid" value="<%=custom.getCusid() %>" class="in_data" readonly />
					
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cuspw" >비밀번호:</label>
				</th>
				<td class="col_data">
					<input type="password" id="cuspw" name="cuspw" value="<%=custom.getCuspw() %>" class="in_data" required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cusname">이름:</label>
				</th>
				<td class="col_data">
					<input type="text" id="cusname" name="cusname" class="in_data" value="<%=custom.getCusname() %>" required  />
				</td>
			</tr>
			 <tr>
				<th class="col_hd">
					<label for="custel">전화번호:</label>
				</th>
				<td class="col_data">
					<input type="text" id="custel" name="custel" class="in_data" value="<%=custom.getCustel() %>" required  />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cuszipcode">우편번호:</label>
				</th>
				<td class="col_data">
					<input type="text" name="cuszipcode" id="cuszipcode" value="<%=custom.getCuszipcode() %>" class="in_data" />
				  	<input type="button" value="주소찾기" onclick="findAddr()" class="in_btn1"/>	
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="add1">주소:</label>
				</th>
				<td class="col_data">
					<input type="text" name="add1" id="add1" value="<%=custom.getAdd1() %>" class="in_data" />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="add2">상세주소:</label>
				</th>
				<td class="col_data">
					<input type="text" name="add2" id="add2"  value="<%=custom.getAdd2() %>" class="in_data" />
				</td>
			</tr>
		  </tbody>
		 </table>
		<hr />
		<div class="fr_wrap">
		  <ul>
			<li><button type="submit" class="in_btn" onclick="">정보수정</button></li>
			<li><button type="reset" class="in_btn" onclick="">취소</button></li>
			<li><a href="OutCtrl" class="in_btn" onclick="">회원탈퇴</a></li>
		</ul>		
	</div>
    </fieldset>	
</form>
</div>
</div>
	<!-- 회원가입시 바뀐 형식의 주소 및 우편번호 취급 처리 스크립트 -->
    <script>
       //다음카카오의 주소 API이용
        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {
                    console.log(data);                   
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('cuszipcode').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("add1").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("add1").value = jibunAddr;
                    }
                }
            }).open();
        }
    </script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	<!-- 아이디 중복 체크 및 유효성 검증 체크 스크립트 -->
	<script>
	function joinCheck(f){
		if(f.cuspw.value!=f.cuspw2.value) {
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			return false;
		}
	}
	</script>
	
</body>
</html>