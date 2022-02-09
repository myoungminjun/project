<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/p_common.css">
<link rel="stylesheet" href="./css/ban.css">
<link rel="shortcut icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="./js/jquery.js"></script>
<style>
.content{
	min-height: 500px;
}
</style>
<title>S&M</title>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="intro">
		<video class="video" muted="muted" width="100%" height="100%"
			autoplay="autoplay" loop>
			<source src="img/intro1.mp4" type="video/mp4">
		</video>
		<div class="title">
			<h1>비교불가능한 섬세함</h1><hr>
		</div>
		<div class="incon">
			<br>S&M은 모든 과정에 신중을 기하고 완벽함을 추구합니다. <br>S&M는 시계의 바탕이
			되는전문기술들을 계속해서 발전시켜 나가며 여러 세대를 거쳐 전수해왔습니다. <br>전통 기법에서부터 첨단
			기술에이르기까지, S&M 시계에 담긴 노하우를 자세히 만나보세요. 
			<br><a href="GetGoodsListCtrl2" class="more">더보기</a>
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


	<%@include file="footer.jsp"%>
</body>
</html>