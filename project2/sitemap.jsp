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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="./img/favicon.ico">
     <script src="https://code.jquery.com/jquery-latest.js"></script>
 <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
 <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
 <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
   <link rel="shortcut icon" href="./img/favicon.ico"> 
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
.content{
font-weight: 700;
}
.vs_tit{text-align:right;}
.gnb_list {
			float:left;
			margin-top: 20px;
            text-align: left;
            font-size: 20px;
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
<%@include file ="header.jsp" %>

       <div class="content">
       		<div class="intro">
                <ul class="gnb_list">
                	<li class="item2"><a href="introduce.jsp">회사안내</a></li>
                	<li class="item1"><a href="sitemap.jsp">오시는길</a></li>
                </ul>
                <div class="vs_tit">
       	<h2>S&M</h2>
		<p>혁신의 전통에 따라 S&M은 최첨단 기술에서 아방가르드한 업적을 통해 워치메이킹 예술성의 한계를 끊임없이 시험하고 있습니다. </p>	
	        <div class="map_area">
                        <div id="map" style="margin-left:400px;	margin-top:50px; width:600px;height:400px; background:black; ">
                        </div>
                        <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                            mapOption = { 
                                center: new daum.maps.LatLng(36.3491563,127.3776857), // 지도의 중심좌표
                                level: 3 // 지도의 확대 레벨
                            };
                        var map = new daum.maps.Map(mapContainer, mapOption);
                        
                        // 마커가 표시될 위치입니다 
                        var markerPosition  = new daum.maps.LatLng(37.65944311467326, 126.76987677316467); 
                        // 마커를 생성합니다
                        var marker = new daum.maps.Marker({
                            position: markerPosition
                        });
                        
                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);
                        var iwContent = '<div style="padding:5px;">S&M company<br><a href="" style="color:blue" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                            iwPosition = new daum.maps.LatLng(37.65944311467326, 126.76987677316467); //인포윈도우 표시 위치입니다
                        // 인포윈도우를 생성합니다
                        var infowindow = new daum.maps.InfoWindow({
                            position : iwPosition, 
                            content : iwContent 
                        });
                        
                        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                        infowindow.open(map, marker);
                        </script>
                        <script type="text/javascript" src="http://m1.daumcdn.net/tiara/js/td.min.js"></script>
                        <script type="text/javascript">
                        var _tiq = 'undefined' !== typeof _tiq ? _tiq : [];
                            window._tiq = _tiq;
                            _tiq.push(['__trackPageview']);
                        </script>
                        <script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.js">
                        </script>
                    </div>		
	</div>
	</div>
	</div>
        <br><br>
        <hr>
        <footer class="ft">
            <div class="ft_wrap">
                <p class="copyright">  회사명: S&M 코리아 (주). 사업자등록번호: 213-86-18544. 공동 대표자: 명민준,이수진  개인정보 보호책임자: 명민준대표. 통신판매신고번호: 2017-경기도 일산-04082. 
				이메일:S&Minc@gmail.com</p>             
                <address>경기도 고양시 일산동구 장항동 128</address>
            </div>
        </footer>    
</body>
</html>
