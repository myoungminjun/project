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
    <title>M&S</title>
   <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script> 
    <script> 
    function initialize() {
    var myLatlng = new google.maps.LatLng(37.5167037460577, 127.02994523997658);
    var mapOptions = {
    zoom: 17,
    center: myLatlng
  }

    var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
    var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: '프라다 코리아'
  });
}
    google.maps.event.addDomListener(window, 'load', initialize);
    
 </script>
    
    <style>
    .content{
    	width:100%;
    	height:646px;
    	
    }

    .map_area {
            width: 800px;
            height: 400px;
            clear: both;
            margin: 0 auto;
            margin-top:50px;
            
        }

       .gnb_list {
       		margin-top: 20px;
            text-align: left;
            font-size: 20px;
       }
    </style>
</head>
<body onload="initialize()">
<%@include file ="header.jsp" %>
        <div class="content">
            <div class="intro">
                	<ul class="gnb_list">
                		<li class="item2"><a href="introduce.jsp">회사안내</a></li>
                		<li class="item1"><a href="sitemap.jsp">오시는길</a></li>
                	</ul>
            </div>
            <div class="vs">
            <div class="map_area">
                <div id="map_canvas" style="min-width:700px; min-height:400px"></div>
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
            </div>
            
</body>
</html>
