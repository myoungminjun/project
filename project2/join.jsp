<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="./img/favicon.ico">
<meta name="viewport" content="width=device-width; initial-scale=1.0, userscalable=no"/>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
* { margin: 0; padding: 0;}
body,html { width: 100%;}
ul {list-style: none;}
a { text-decoration: none;color:#463527;}
.btn-primary{padding:0 24px;border: 1px solid #666; border-radius: 9px;
background-image: none; background-color: #fff; color:#333;}
.btn-primary:hover{ color: #fff; background-color: #463527;}
input { outline:0; border:0;  border-radius:0;  }
.fr { clear:both; width:960px; margin:10px auto; margin-bottom:80px;    }
.fr:after { content:""; display:block; clear:both; }
.fr_com { text-align:center; line-height:2.4; font-weight:bold; }
.fr_tit { text-align:center; line-height:3; padding-top:1em; text-align:center; }
.fr_list{margin-left: 200px}
.fr_list li { clear:both;  }
.fr_list li.click { clear:both; margin-left: 250px; margin-top: 40px;}
.fr_list li:first-child { border-radius:30px 30px 0px 0px; }
.fr_list li:after { content:""; clear:both; display:block; }
.lb { display:block;  width:200px; height:42px; line-height:42px; float:left; padding-top:20px; padding-bottom:20px;
padding-left:20px; color:#463527; font-weight:bold;  }
.lb.rep:before { content:"*";  font-size:18px; }
.lb_data { display:block;  height:42px; line-height:42px; float:left; padding-top:20px; padding-bottom:20px; }
.in_data { display:block; float:left; border:2px solid #333; width:400px; height:40px; line-height:40px; padding-left:20px; }
.in_btn { display:block; height:40px; line-height:40px; width:130px; float:left; color: #463527; background:rgba(0,0,0,0.2);  margin-left:20px; 
cursor:pointer; }
.in_btn:hover { background-color:#808080; }
.fr_col { width:50%; padding-top:20px; padding-bottom:20px; }
.fr_col.in_btn { float:right; margin-right:25px; }
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">

	<div class="content">	
		<form action="JoinCtrl" class="frm" method="post" id="frm1" name="joinform" onsubmit="return joinCheck(this)">
		<h2 class="fr_tit">회원 가입</h2>
		<p class="fr_com">* 항목은 필수 입력 항목입니다.</p>
		<ul class="fr_list">
			<li>
				<label for="cusid" class="lb rep">아이디</label>
				<span class="lb_data">
					<input type="text" name="cusid" id="cusid" placeholder="5~12 문자 및 숫자로 입력" maxlength="12" class="in_data" required autofocus />
					<a class="in_btn" id="idckbtn" target="_blank" href="" style="text-align:center; ">ID중복 확인</a>
					<input type="hidden" value="<%=cusid %>" name="idck" id="idck" />
					<script>
					$(function(){
						$("#cusid").keyup(function(){
							$("#idckbtn").attr("href", "DupCtrl?cusid="+$(this).val())
						});
					});
					</script>
				</span>
			</li>
			<li>
				<label for="cuspw" class="lb  rep">비밀번호</label>
				<span class="lb_data">
					<input type="password" name="cuspw" id="cuspw" placeholder="영문, 숫자를 반드시 포함할 것"  class="in_data" required />
				</span>
			</li>
			<li>
				<label for="cuspw2" class="lb rep">비밀번호 확인</label>
				<span class="lb_data">
					<input type="password" name="cuspw2" id="cuspw2" placeholder="영문, 숫자를 반드시 포함할 것" class="in_data" required />
				</span>
			</li>
			<li>
				<label for="cusname" class="lb rep">이름</label>
				<span class="lb_data">
					<input type="text" name="cusname" id="cusname" placeholder="한글 이름 입력" class="in_data" required />
				</span>
			</li>

			<li>
				<label for="custel" class="lb rep">전화번호</label>
				<span class="lb_data">
					<input type="text" name="custel" id="custel" placeholder="-를 제외하여 입력" class="in_data" required />
				</span>
			</li>
			<li><label for="cuszipcode" class="lb rep">우편번호</label>
				  <span class="lb_data">
				  		<input type="text" name="cuszipcode" id="cuszipcode" class="in_data" />
				  		<input type="button" value="주소찾기" onclick="findAddr()" class="in_btn"/>	
				  </span>
			</li>
			<li>
			    <label for="add1" class="lb rep">주소</label>
				<span class="lb_data">
					<input type="text" name="add1" id="add1" class="in_data" />
				</span>
			</li>
			<li>
				<label for="add2" class="lb rep">상세주소</label>
				<span class="lb_data">
					<input type="text" name="add2" id="add2" class="in_data" />
				</span>
			</li>
			<li>
				<li class=click>
			<span class="fr_col">
				<input type="submit" value="회원가입"  class="in_btn"/>
			</span>
			<span class="fr_col">
				<input type="reset" value="취소" class="in_btn"/>
			</span>
			</li>
		</ul>
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