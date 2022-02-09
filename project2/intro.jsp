<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/p_common.css">
<link rel="stylesheet" href="./css/ban.css">
<script src="./js/jquery.js"></script>
<title>S&M</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="googlebot" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1">


<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>




<style>
* {
	margin: 0;
	padding: 0;
}
.content {
	min-height: 500px;
}
body {
	font-family: sans-serif;
	font-weight: 700;
}

.wrapper {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-weight: lighter;
	font-size: 40px;
}

.welcome-section {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	background: #000;
	overflow: hidden;
}

.content-wrap {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.fly-in-text {
	list-style: none;
}

.fly-in-text li {
	display: inline-block;
	margin-right: 20px;
	font-size: 5em;
	color: #fff;
	opacity: 1;
	transition: all 3s ease;
}

.fly-in-text li:nth-child(5) {
	margin-right: 0;
}

.enter-button {
	display: block;
	text-align: center;
	font-size: 1em;
	text-decoration: none;
	color: #fff;
	opacity: 1;
	transition: all 1s ease 3s;
}

.content-hidden .fly-in-text li, .content-hidden .enter-button {
	opacity: 0;
}

.content-hidden .fly-in-text li:nth-child(1) {
	transform: translate3d(-30px, 0, 0);
}

.content-hidden .fly-in-text li:nth-child(2) {
	transform: translate3d(-0px, 0, 0);
}

.content-hidden .fly-in-text li:nth-child(3) {
	transform: translate3d(30px, 0, 0);
}

.content-hidden .enter-button {
	transform: translate3d(0, -30px, 0);
}

/* EOS */
</style>

<script id="insert"></script>


</head>
<body>
	<%@include file="header.jsp"%>
<div class="intro">
		<video class="video" muted="muted" width="100%" height="100%"
			autoplay="autoplay" loop>
			<source src="img/intro1.mp4" type="video/mp4">
		</video>
		<div class="title">
			<h1>비교불가능한 섬세함</h1>
			<hr>
		</div>
		<div class="incon">
			<br>S&M은 모든 과정에 신중을 기하고 완벽함을 추구합니다. <br>S&M는 시계의 바탕이
			되는전문기술들을 계속해서 발전시켜 나가며 여러 세대를 거쳐 전수해왔습니다. <br>전통 기법에서부터 첨단
			기술에이르기까지, S&M 시계에 담긴 노하우를 자세히 만나보세요. <br>
			<a href="GetGoodsListCtrl2" class="more">더보기</a>
		</div>
	</div>
	<div class="content">
		<figure class="vs">
			<ul class="img_box">
				<li><img src="./img/bg_section1.jpg" alt="" class="vs_img">
					<div class="tit_box">
						<h2 class="vs_tit">
							<a href="index.jsp" style="color: #463527">Odin</a>
						</h2>

					</div></li>
				<li><img src="./img/bg_section2.jpg" alt="" class="vs_img">
					<div class="tit_box">
						<h2 class="vs_tit">
							<a href="index.jsp" style="color: #463527">Zeus</a>
						</h2>

					</div></li>
				<li><img src="./img/bg_section3.jpg" alt="" class="vs_img">
					<div class="tit_box">
						<h2 class="vs_tit">
							<a href="index.jsp" style="color: #463527">Hades</a>
						</h2>

					</div></li>
				<li><img src="./img/bg_section4.jpg" alt="" class="vs_img">
					<div class="tit_box">
						<h2 class="vs_tit">
							<a href="index.jsp" style="color: #463527">Thor</a>
						</h2>

					</div></li>
			</ul>

		</figure>

		<script src="./js/ban.js"></script>
	</div>
	<div class="welcome-section content-hidden">
		<div class="content-wrap">
			<ul class="fly-in-text">
				<li>S</li>
				<li>&</li>
				<li>M</li>
			</ul>
			<a href="" class="enter-button">Enter</a>
		</div>
	</div>

	<script type="text/javascript">//<![CDATA[


$(function(){
	var welcomSection = $('.welcome-section'),
  		enterButton = welcomSection.find('.enter-button');
      
      setTimeout(function(){
      	welcomSection.removeClass('content-hidden');
      },800);
      
      enterButton.on('click',function(e){
      	e.preventDefault();
        welcomSection.addClass('content-hidden').fadeOut();
      })
})


  //]]></script>
  <%@include file="footer.jsp"%>
</body>
</html>