<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한눈에 세종</title>

<%@ include file="./include/head.jsp"%>
</head>
<style>
.vs {
	clear: both;
	width: 100%;
	height: 451px;
	background-image: url("${path}/include/source//mv_1_6.jpg");
	background-position: center center;
	background-repeat: no-repeat;
}
.content_wrap {
	clear: both;
	width: 1200px;
	margin: 0 auto;
	margin-top: -150px;
}
.sub_tit {
	height: 150px;
	line-height: 144px;
	font-size: 22px;
	background-color: #2e70b4;
	text-align: center;
	width: 190px;
	float: left;
	color: #fff;
}
.bread_box {
	height: 125px;
	background-color: #fff;
	width: 980px;
	float: right;
	padding-left: 30px;
	padding-top: 24px;
	border-bottom: 1px solid #999;
	position: relative;
}
.cate_tit {
	color: #999;
	font-size: 24px;
}
.bread {
	padding-top: 24px;
	line-height: 1.6;
	font-size: 16px;
}
.bread a, .bread span {
	color: #999;
}
.bread span.cur {
	color: #222;
	font-weight: 600;
}
.sub_tit_ico_box {
	position: absolute;
	right: 30px;
	bottom: 18px;
}
.sub_tit_ico_box li {
	float: left;
	margin-left: 10px;
}
.sub_tit_ico_box li a {
	display: block;
	color: #fff;
}
.sub_tit_ico_box li a.ico {
	width: 34px;
	height: 34px;
	background-position: center center;
	background-repeat: no-repeat;
	border-radius: 18px;
	border: 1px solid #ccc;
}
.sub_tit_ico_box li a.ico.item1 {
	background-image: url("${path}/include/source//ico_sns.gif");
}
.sub_tit_ico_box li a.ico.item2 {
	background-image: url("${path}/include/source//ico_print.gif");
}
.sub_tit_ico_box li a.btn {
	border-radius: 18px;
	padding: 6px 12px;
	width: auto;
	background-color: #999;
}
.leftbar {
	width: 190px;
	float: left;
	min-height: 100vh;
	background-color: #f0f0f0;
}
.lnb {
	clear: both;
}
.lnb li {
	clear: both;
	margin: 5px 6px;
	border: 1px solid #aaa;
	line-height: 52px;
}
.lnb li a {
	color: #222;
	font-size: 14px;
	padding-left: 1em;
}
.lnb li.act a {
	color: #0e3257;
	font-size: 18px;
	font-weight: bold;
}
.page_box {
	width: 960px;
	float: left;
	padding-left: 30px;
}
.page {
	padding-top: 40px;
	overflow: visible;
	height: auto;
	min-height: 100vh;
}
.page_wrap {
	width: 960px;
}
.page_tit {
	padding-bottom: 36px;
	color: #666;
}
.sub_pic img {
	display: block;
	max-width: 940px;
	height: auto;
}
.pic_lst {
	clear: both;
}
.pic_lst li {
	float: left;
	margin-right: 15px;
	margin-bottom: 15px;
}
.pic_lst li img {
	max-width: 460px;
}
.sub_pic_tit {
	clear: both;
	font-size: 20px;
	line-height: 1.6;
}
.sub_pic_com {
	clear: both;
	font-size: 14px;
	line-height: 1.6;
	padding-bottom: 24px;
}
.sub_full_tit {
	clear: both;
	color: #2e70b4;
	line-height: 3;
	font-size: 32px;
	text-align: center;
}
.sub_con img {display: block; max-width: 940px;}
.sub_cate_com {
	clear: both;
	padding: 14px;
	font-style: 12px;
	color: #666;
	line-height: 1.8;
	width: 940px;
	font-weight: 300;}
.map_area {
	clear: both;
	position: relative;
	overflow: hidden;
	width: 940px;}
.map_tit, .sub_cate_tit {
	clear: both;
	padding-left: 32px;
	line-height: 2.4;
	font-size: 20px;
	background-repeat: no-repeat;
	background-position: left center;
	background-image: url("${path}/include/source/bull_h5.gif");
	color: #134980;
	}
#page2, #page3 { padding-top: 130px; margin-top: 40px; border-top: 5px solid deepskyblue;}
.onepage { clear: both; width: 100%; padding-top: 50px; padding-bottom: 50px;}
.onepage img {display: block; width: 100%;}
.page {display: none;}
.page:target {display: block;}
</style>
<body>
	<div class="wrap">
		<%@ include file="./include/menu.jsp"%>
		<div class="wrap">
				<div class="content fix">
					<figure class="vs" id="vs">
						<!-- 배경 이미지로 채움 -->
					</figure>
					<div class="content_wrap">
						<div class="sub_box">
							<h2 class="sub_tit">한눈에 세종</h2>
							<div class="bread_box">
								<h3 class="cate_tit">세종여행</h3>
								<p class="bread">
									<a href="${path}/home.do" class="home">홈</a> &gt; <a href="">한눈에 세종</a> &gt; <span
										class="cur">세종대표명소</span>
								</p>
							</div>
						</div>
						<aside class="leftbar">
							<nav class="lnb">
								<ul>
									<li><a href="#page1">세종대표명소</a></li>
									<li><a href="#page2">체험관광</a></li>
									<li><a href="#page3">캠핑여행</a></li>
								</ul>
							</nav>
						</aside>
					</div>
					<div class="page_box">
						<section class="onepage">
							<h2 class=""></h2>
							<img src="${path}/include/source/item_bg2.jpg" alt="행복나들이"><br> <img src="${path}/include/source/itme_bg.jpg" alt="행복나들이">
						</section>
						<section class="page" id="page1">
							<h2 class="page_tit">방축천</h2>
							<div class="page_wrap">
								<figure class="sub_pic">
									<img src="${path}/include/source//mv_1_2.jpg" alt="방축천 전경">
									<h3 class="sub_pic_tit">방축천</h3>
									<p class="sub_pic_com">세종시의 청계천, 아니 그 이상의 무언가</p>
								</figure>
								<h3 class="sub_full_tit">방축천(주변, 아파트)</h3>
								<article class="sub_con">
									<h3 class="sub_cate_tit">위치 : 세종, 연기군 특별자치시, 가름로 153</h3>
									<img src="${path}/include/source//bang.jpg" alt="멀리서 본 방축천">
									<p class="sub_cate_com">방축천은  세종특별자치시민의 휴식공간이자 세종특별자치시의 새로운 명소가 되어가고 있습니다.</p>
								</article>
								<!-- 1. 지도 표시할 영역 확보 -->
								<div class="map_area">
									<h4 class="map_tit">위치 : 세종, 연기군 특별자치시, 가름로 153</h4>
									<div id="daumRoughmapContainer1641456366544"
										class="root_daum_roughmap root_daum_roughmap_landing"></div>
								</div>
								<!-- <script src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/c6dc0bd8/roughmapLander.js"></script> -->
								<!-- 2. 지도 API 연결-->
								<script charset="UTF-8" class="daum_roughmap_loader_script"
									src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
								<!-- 3. 실행 스크립트 -->
								<script charset="UTF-8">
									new daum.roughmap.Lander({
										"timestamp" : "1641456366544",
										"key" : "28psp",
										"mapWidth" : "640",
										"mapHeight" : "360"
									}).render();
								</script>
							</div>
						</section>
						<section class="page" id="page2">
							<h2 class="page_tit">체험관광</h2>
							<div class="page_wrap">
								<figure class="sub_pic">
									<img src="${path}/include/source//sub1_2_1.jpg" alt="요트투어">
									<h3 class="sub_pic_tit">요트투어</h3>
									<p class="sub_pic_com">대명 리조트 | 거제 | 마리나베이 | 요트투어</p>
								</figure>
								<h3 class="sub_full_tit">소노캄 거제 요트 투어</h3>
								<article class="sub_con">
									<h3 class="sub_cate_tit">위치 : 경남 거제시 일운면 거제대로 2660(일운면 소동리
										115) 소노캄 거제</h3>
									<img src="${path}/include/source//sub1_2_2.jpg" alt="요트사진1" style="float: left;">
									<img src="${path}/include/source//sub1_2_3.jpg" alt="요트사진2" style="float: right">
									<p class="sub_cate_com" style="clear: both;">소노캄 거제는 전체 객실이
										한려해상국립공원을 바라보는 오션뷰(Ocean View), 동시수용 3.500명의 대단위 워터파크
										오션베이(Ocean Bay), 700석 규모의 대연회장과 각종 부대시설을 갖추고 있습니다. 국제적인 마리나
										시설을 추가하여 해양관광도시 거제의 명실상부한 최고의 해양리조트로 자리 매김 할 예정입니다.</p>
								</article>
							</div>
						</section>
						<section class="page" id="page3">
							<h2 class="page_tit">캠핑 여행</h2>
							<div class="page_wrap">
								<figure class="sub_pic">
									<ul class="pic_lst">
										<li><img src="${path}/include/source//sub1_3_1.jpg" alt="세종합강캠핑장"></li>
										<li><img src="${path}/include/source//sub1_3_2.jpg" alt="세종합강캠핑장"></li>
										<li><img src="${path}/include/source//sub1_3_3.jpg" alt="세종합강캠핑장"></li>
										<li><img src="${path}/include/source//sub1_3_4.jpg" alt="세종합강캠핑장"></li>
									</ul>
									<h3 class="sub_pic_tit">세종합강캠핑장</h3>
									<p class="sub_pic_com">금강과 미호천의 정취를 느낄 수 있는 
									자연과 사람이 만나는 이야기가 있는 캠핑장입니다.
									최고의 풍경을, 자연의 여유와 행복을 느낄 수 있는 명소를 만나보세요</p>
								</figure>
							</div>
						<article class="sub_con">
							<h3 class="sub_cate_tit">위치 : 세종특별자치시 연기면 태산로 329</h3>
							<img src="${path}/include/source//sub1_3_5.jpg" alt="위치">
							<p class="sub_cate_com" style="clear: both;">
								위치: 경상남도 거제시 거제대로 981<br> 면적: 28,170㎡<br> 오토캠핑장 : 97동<br>
								규모: 자동차 야영 영지 84동, 카라반 겸용 영지 11동, <br>카라반 4대<br> 부대시설:
								샤워장 2개소, 화장실 2개소, 식기세척실 3개소, 다목적 운동장, 야외무대<br> 이용시간:
								15:00~익일 12:00<br> 이용요금(성수기 : 5.1. ~ 11.30. 비수기: 12.1. ~
								4.30.)<br>
							</p>
						</article>
						</section>
					</div>
				</div>
				<%@ include file="./include/footer.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>