<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
     <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="./css/p_common.css">
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
        
    </head>
     <style>

 * { margin: 0; padding: 0;}
    body,html { width: 100%;}
    ul {list-style: none;}
    a { text-decoration: none;}



input { outline:0; border:0;  border-radius:0;  }
.fr { clear:both; width:960px; margin:10px auto; margin-bottom:80px;    }
.fr:after { content:""; display:block; clear:both; }
.fr_com { text-align:center; line-height:2.4; font-weight:bold; }
.fr_tit { text-align:center; line-height:3; padding-top:1em; text-align:center; }
.fr_list li { clear:both;  }
.fr_list li:first-child { border-radius:30px 30px 0px 0px; }
.fr_list li:after { content:""; clear:both; display:block; }
.lb { display:block;  width:200px; height:42px; line-height:42px; float:left; padding-top:20px; padding-bottom:20px;
padding-left:20px; color:#222; font-weight:bold;  }
.lb.rep:before { content:"*"; color:red; font-size:18px; }
.lb_data { display:block;  height:42px; line-height:42px; float:left; padding-top:20px; padding-bottom:20px; }
.in_data { display:block; float:left; border:2px solid #333; width:400px; height:40px; line-height:40px; padding-left:20px; }
.in_btn { display:block; height:40px; line-height:40px; width:130px; float:left; border-radius:22px; background:#333; color:#fff; margin-left:20px; 
cursor:pointer; }
.in_btn:hover { background-color:#808080; }
.fr_col { width:50%; float:left; padding-top:20px; padding-bottom:20px; display:block; }
.fr_col .in_btn { clear:both;  }
.fr_col.first .in_btn { float:right; margin-right:25px; }
.fr_col.last .in_btn { float:left; margin-left:25px; }
    </style>
<body>
<%@ include file="header.jsp" %>
	<!-- 회원가입 폼 -->
<div class="fr">	
	<form action="joinPro.jsp" class="frm" method="post" name="joinform" onsubmit="return joinCheck(this)">
	<h2 class="fr_tit">회원 가입</h2>
	<p class="fr_com">* 항목은 필수 입력 항목입니다.</p>
	<ul class="fr_list">
		<li>
			<label for="userid" class="lb rep">*아이디 : </label>
			<span class="lb_data">
				<input type="text" name="uid" id="uid" placeholder="4~12 문자 및 숫자로 입력" maxlength="12" class="in_data" required autofocus />
				<input type="button" value="ID중복 확인" onclick="idCheck()" class="in_btn"/>
				<input type="hidden" value="" name="idck" id="idck" />
			</span>
		</li>
		<li>
			<label for="passwd" class="lb rep">*비밀번호 : </label>
			<span class="lb_data">
				<input type="password" name="upw" id="upw" placeholder="영문, 숫자를 반드시 포함할 것" pattern="[a-zA-Z0-9]+$" class="in_data" required />
			</span>
		</li>
		<li>
			<label for="birth" class="lb">*출생년도 : </label>
			<span class="lb_data">
				<input type="text" name="ubirth" id="ubirth" placeholder="출생년도 입력" class="in_data" required />
			</span>
		</li>
		<li>
			<label for="name" class="lb">*이름 : </label>
			<span class="lb_data">
				<input type="text" name="uname" id="uname" placeholder="한글 이름 입력" class="in_data" required />
			</span>
		</li>
		<li><label for="zipcode" class="lb">*우편번호 : </label>
			  <span class="lb_data">
			  		<input type="text" name="uzipcode" id="uzipcode" class="in_data" required />
			  		<input type="button" value="주소찾기" onclick="findAddr()" class="in_btn"/>	
			  </span>
		</li>
		<li>
		    <label for="address1" class="lb">주소 : </label>
			<span class="lb_data">
				<input type="text" name="uaddress1" id="uaddress1" class="in_data" />
			</span>
		</li>
		<li>
			<label for="address2" class="lb">상세주소 : </label>
			<span class="lb_data">
				<input type="text" name="uaddress2" id="uaddress2" class="in_data" />
			</span>
		</li>
	
		<li>
			<span class="fr_col first">
				<input type="submit" value="회원가입"  class="in_btn"/>
			</span>
			<span class="fr_col last">
				<input type="reset" value="취소" class="in_btn"/>
			</span>
		</li>
	</ul>
	</form>
</div>
	<!-- 회원가입시 바뀐 형식의 주소 및 우편번호 취급 처리 스크립트 -->
<script>
        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {
                    console.log(data);                   
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                 
                    document.getElementById('uzipcode').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("uaddress1").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("uaddress1").value = jibunAddr;
                    }
                }
            }).open();
        }
    </script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	<!-- 아이디 중복 체크 및 유효성 검증 체크 스크립트 -->
	<script>
	function idCheck(){
		window.open("idDuplCheckForm.jsp","idwin","width=400, height=350");
	}
	</script>
</body>
</html>