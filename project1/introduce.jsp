<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">
    <title>회사 소개</title>
    
 <style>
.vs{clear:both; 
width:1000px; 
height:550px; 
display:block;
margin-left:250px;
background-color:black; 
background-image:url("./img/introduce.jpg");
background-position:center;
background-size:80% auto;
background-repeat:no-repeat; 
animation-name:anil;
animation-duration:2.5s; }
.vs_tit{text-align:right;}
@keyframes anil{
	0% {background-size:100% auto;}
	100%{background-size:80% auto;}
}
.gnb_list {
			margin-top: 20px;
            text-align: left;
            font-size: 20px;
	}
</style>
</head>
<body>
<%@include file ="header.jsp" %>
       <div class="content">
       		<div class="intro">
                <ul class="gnb_list">
                	<li class="item2"><a href="introduce.jsp">회사안내</a></li>
                	<li class="item1"><a href="sitemap.jsp">오시는길</a></li>
                </ul>
                <div class="vs_tit">
       	<h2>프라다만의 시즌별 새로 출시된 모델들만을 보여드립니다.</h2>
		<p>프라다의 매 시즌별 가장 인기있는 가방만을 선별해 라인별,색상별 소개합니다<br>
		차원이 다른 프라다만의 고급스러움을 한 눈에 즐기세요</p>	
	       <div class="vs">
	   </div> 		
	</div>
	</div>
	</div>
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
