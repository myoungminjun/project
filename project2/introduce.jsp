<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel="shortcut icon" href="./img/favicon.ico">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">

    <title>회사 소개</title>
    
 <style>
.vs{clear:both; 
width:975px; 
height:550px; 
display:block;
margin-left:250px;
background-position:center;
background-size:80% auto;
background-repeat:no-repeat; 
animation-name:anil;
animation-duration:2.5s; 
background-color: #fff;}
.vs_tit{text-align:right;}
.gnb_list {
			float:left;
			margin-top: 20px;
            text-align: left;
            font-size: 20px;
	}
.content{
font-weight: 700;
}
.item1{
float: left;
margin-left: 20px;
}
.item2{
float: left;

}
</style>
</head>
<body>

<div class="wrap">
<%@include file="header.jsp"%>
</div>
       <div class="content">
       		<div class="intro">
                <ul class="gnb_list">
                	<li class="item2"><a href="introduce.jsp">회사안내</a></li>
                	<li class="item1"><a href="sitemap.jsp">오시는길</a></li>
                </ul>
                <div class="vs_tit">
       	<h2>혁신의 전통</h2>
		<p>S&M은 항상 시계를 독점적인 창조물로 생각했습니다.<br>
		제조 공정의 모든 단계에 적용되는 엄격한 품질 표준  <br>
		완성에 수개월을 투자한 S&M의 각 시계는 진정한 감정가들이 탐내는 소중하고 독특한 창조물입니다. </p>	
	       <div class="vs">
	       <video class="video" muted="muted" width="100%" height="100%"
			autoplay="autoplay" loop>
			<source src="img/introduce.mp4" type="video/mp4">
		</video>
	   </div> 		
	</div>
	</div>
	</div>
        <br><br>
        <hr>
        <footer class="ft">
            <div class="ft_wrap">
                <p class="copyright"> 회사명: S&M 코리아 (주). 사업자등록번호: 213-86-18544. 공동 대표자: 명민준,이수진  개인정보 보호책임자: 명민준대표. 통신판매신고번호: 2017-경기도 일산-04082. 
				이메일:S&Minc@gmail.com</p>             
                <address>경기도 고양시 일산동구 장항동 128</address>
            </div>
        </footer>    
</body>
</html>
