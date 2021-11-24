<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">
    <title>home</title>
</head>
<body>
<!-- 헤더 -->
<%@include file ="header.jsp" %>
   <style>     

.vs{
    width: 1866px;
    height: 450px;
    margin: 0 auto;
    border-bottom:1px black;
}
/*ptroduct*/
.product{
    width:100%;
    height: 500px;
    padding-top: 40px;
    text-align:center;

}
.product .p_plus{
    margin-left: 150px;
    width: 1350px;
    height: 400px;
    margin: auto;
    text-align:right;
    font-size: 20px;
    font-weight: bold;


} 
.icons{
    display: flex;
    width: 1200px;
    height: 360px;
    margin: auto;
}
.icons > li{
    flex: 1;
    margin-top: 30px;
    height: 350px;
    text-align: center;

}
.icons > li:not(:last-child){
    margin-right: 30px;
}
.service{
    width: 100%;
    height: 850px;
    padding-top: 20px;
    text-align:center;
}
.p_bold {
    margin-top: 40px;
    margin-bottom: 20px;
    text-align: center;
    font-weight: bold;
}    

<style>
.video { 
    margin-top: 40px;
    width: 500px;
    display: block; 
    margin: 20px auto; 
}
    </style>
</head>
<body>
   <div class="wrap">
        <div class="vs">
            <img src="img/intro2.jpg">
		</div>
      </div>
    <div class="service">
          <div class="p_bold">
            <h1>SERVICE</h1>
            </div>
            <video class="video" muted="muted" autoplay="autoplay" loop>
                <source src="img/Fashion Show.mp4" type="video/mp4" >
            </video>
            </div>
    <div class="product">
        <h1>NEW PRODUCT</h1>
            <div class="p_plus">
                <a href="product.html">+더보기</a>
                <ul class="icons">
                    <li>
                        <div class="icons_img">
                            <img src="img/bag1.jpg">
                        </div>
                        <div class="bold">프라다 다이아그램 가죽 미디엄 숄더백</div>
                    </li>
                    <li>
                        <div class="icons_img">
                            <img src="img/bag2.jpg">
                        </div>
                        <div class="bold">사피아노 가죽 미니 엔벌로프 백</div>
                    </li>
                    <li><div class="icons_img">
                        <img src="img/bag3.jpg">
                    </div>
                    <div class="bold">프라다  가죽 미디엄 숄더백</div>
                </li>
                </ul>
            </div>
        </div>
	<!-- 푸터 -->
	<%@ include file="footer.jsp" %>
</body>
</html>