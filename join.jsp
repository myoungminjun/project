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
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	
        
    </head>
    <style>
        #wrapper{
            border:1px solid rgb(133, 127, 127);
            border-radius: 2px;;
            width: 700px;
            height:600px;
            margin: auto;
        }
        .title{
            margin-top: 20px;
            text-align: center;
            font-size: 30px;
            font-weight: bold;
           margin:20px 0px 20px 0px;
          
        }
        label{
            width:155px;
            display: inline-block;
            text-align: right;
            font-size: 20px;
           
        }
        input{
            margin:3px 5px;
            border-radius: 3px;
            background-color: transparent;
            border:1px solid darkgray;
            width: 350px;
            height:30px;
            outline:none;
            
        }
        
        #signup{
        text-align: center;
        margin:5px;
        }
        input[type=button],input[type=reset]{
            border:1px solid #333;
            border-radius: 3px;
            background-color: transparent;
            margin:0px;
            width: 100px;
            height:30px;
            color:black;
        }    
		#roadAddress,#detailAddress{
			width: 280px;
		}
        .regex{
            font-size: 12px;
            text-align: center;
        }
    </style>
    <body>
  <div class="wrap">
    <div class="intro_bg">
        <div class="header">
            <ul class="nav">
                <li><a href="home.jsp">HOME</a></li>
                <li><a href="product.html">PRODUCT</a></li>
                <li><a href="event.html">EVENT</a></li>
                <li><a href="contact.html">CONTACT</a></li>
            </ul>
            <ul class="tnb">
                <li><a href="login.html">로그인</a></li>
                <li><a href="join.html">회원가입</a></li>
                <li><a href="sitemap.html">사이트맵</a></li>      
        </ul>
        </div>
        </div>
        <br><br>
        <hr>
        <h2 class="title">회원 가입 정보 입력</h2>
    <form action="joinPro.jsp" method="POST" id="joinform" name="joinform">
        <div id="wrapper">
            <br>
            <label>아이디 : </label><input type="text" name="id" id="id">
            <input type="button" value="중복확인" id="duplcheck" >
            <input type="hidden" value="" name="idck" id="idck" />
            <div class="id regex"></div>
            <br>
            <label>패스워드 : </label><input type="password" name="pw" id="pw"><br>
            <div class="pw regex"></div>
            <br>
            <label>패스워드확인 : </label><input type="password" id="repw"><br>
            <div class="repw regex"></div>
            <br>
            <label>출생년도: </label><input type="text" name="birth" id="birth"><br>
            <div class="birth regex"></div>
            <br>
            <label>이름: </label><input type="text" name="name" id="name"><br>
            <div class="name regex"></div>
            <br>
            <label>우편번호 :</label><input type="text" id="zipcode" placeholder="우편번호" name="zipcode">
            <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ><br>
            <label>주소1 : </label><input type="text" id="address1" placeholder="도로명주소" name="address1"><br>
            <label>주소2 : </label><input type="text" id="address2" placeholder="상세주소" name="address2"><br>
            <br>
            <div id="signup">
            <input type="submit" name="signup" value="회원가입" id="signupbtn">
            <input type="reset" value="다시입력" id="resignupbtn">
            </div>
        </div>
        
</form>
</div>
        <script>
            function sample4_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        var roadAddr = data.roadAddress; 
                        var extraRoadAddr = '';  
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraRoadAddr += data.bname;
                        }
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        document.getElementById('postcode').value = data.zonecode;
                        document.getElementById("roadAddress").value = roadAddr;
                    }
                }).open();
            }
         $(function(){            
            $("#duplcheck").on("click",function(){
                var id = $("#id").val();
                if(id == ""){
                	alert("아이디를 입력해주세요");
                	return;
                }
                var regex = /^[a-z][a-z\d]{4,11}$/;
            	var result = regex.exec(id);
                
            	 if(result != null){
                     $(".id.regex").html("");
                window.open("idDuplCheck.jsp?id="+ id,"","width=500px,height=300px,top=300px,left=200px");
                 }else{
                     $(".id.regex").html("영어 소문자 및 숫자 4-12자리");
                     $(".id.regex").css("color","red")
                 }
                
                
            })
                
            $("#pw").on("input",function(){
                var regex = /^[A-Za-z\d]{8,12}$/;
                var result = regex.exec($("#pw").val())
                
                if(result != null){
                    $(".pw.regex").html("");
                }else{
                    $(".pw.regex").html("영어대소문자 및 숫자 8-11자리");
                    $(".pw.regex").css("color","red")
                }
            });
              
               $("#repw").on("keyup",function(){
                    if($("#pw").val()==$("#repw").val()){
                       $(".repw.regex").html("비밀번호가 일치합니다"); 
                    }else{
                     $(".repw.regex").html("비밀번호가 일치하지않습니다"); 
                    }
               })
            
                $("#name").on("input",function(){
                    var regex = /[가-힣]{2,}/;
                    var result = regex.exec($("#name").val());
                    
                    if(result != null){
                       $(".name.regex").html("");  
                    }else{
                        $(".name.regex").html("한글만 입력 가능합니다.");
                    }
                    
                })
                                   
           $("#signupbtn").on("click",function(){
        	   var id = $("#id").val();
        	   var pw = $("#pw").val();
        	   var name = $("#name").val();
        	   
        	   
        	   var idregex = /^[a-z][a-z\d]{4,11}$/;
        	   var pwregex = /^[A-Za-z\d]{8,12}$/;
        	   var nameregex = /[가-힣]{2,}/;
        	  
        	   
        	   var idregex = idregex.exec(id);
        	   if(idregex == null){
        		   alert("아이디양식을 다시 확인해주세요");
        		   return;
        	   }
        	   var pwregex = pwregex.exec(pw);
        	   if(pwregex == null){
        		   alert("비밀번호양식을 다시 확인해주세요");
        		   retrun;
        	   }
        	   var nameregex = nameregex.exec(name);
        	   if(nameregex == null){
        		   alert("이름양식을 다시 확인해주세요");
        		   retrun;
        	
        	   $("#signform").submit();    
           })
        })
        </script>
  	      <br><br>
	      <hr>
        <footer class="ft">
            <div class="ft_wrap">
                <p class="copyright">  회사명: 프라다 코리아 (유). 사업자등록번호: 213-86-18544. 공동 대표자: 이수진,명민준  개인정보 보호책임자: 이수진대표. 통신판매신고번호: 2017-경기도 일산-04082. 
				이메일:www.naver.com</p>             
                <address>경기도 고양시 일산동구 장항동 128</address>
            </div>
        </footer>
</body>
</html>