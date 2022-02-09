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
    <script src="./JS/jquery.js"></script>
    <link rel="shortcut icon" href="img/favicon.ico">

<title>home</title>
</head>
<body>
<!-- 헤더 -->
<%@include file ="header.jsp" %>
   <style>     
  .wrap{
  width:100%;
  } 
.vs1{
    width: 100%;
    height: 550px;
    margin: 0 auto;
    border-bottom:1px black;
}
.mainslider {
clear:both; 
width: 100%; 
height:800px; 
float:left;
margin-bottom: 90px;
}
.tit {
text-align:right;
}
.vs { 
clear: both; 
width:1000px; 
height:auto; 
overflow: hidden;
margin:0 auto;
} 
.vs .img_box { 
width: 400%; 
height:650px;
} 
.vs .img_box li { 
width: 25%; 
height:700px; 
float:left; 
position: relative;
} 
.vs .img_box li .vs_img {
display: block; 
width: 100%; 
height: auto; 
}
/*ptroduct*/
.product{
    width:100%;
    height: 600px;
    padding-top: 20px;
    text-align:center;
    clear:both;

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
    margin: 0 auto;
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
    text-align:center;
    clear:both;
}
.p_bold {
    margin-top: 40px;
    margin-bottom: 20px;
    text-align: center;
    font-weight: bold;
}   

.video { 
    margin-top: 40px;
    width: 1200px;
    display: block; 
    margin: 20px auto; 
}

</style>
</head>
<body>
   <div class="wrap">
        <div class="vs1">
            <img src="img/intro2.jpg">
      </div>
      </div>
       <div class="mainslider">
            <div class="tit"><h1>클래식과 미래주의의 만남</h1><hr><h3>프라다 리에디션 </h3>
            <hr><h3></h3>
            <figure class="vs">
                <ul class="img_box">
                    <li class="item1">
                        <img src="./img/simg1.jpg" class="vs_img">
                    </li>
                    <li class="item2">
                        <img src="./img/simg2.jpg" class="vs_img">
                    </li>
                    <li class="item3">
                        <img src="./img/simg3.jpg" class="vs_img">
                    </li>
                </ul>
            </figure>
            <script src="./JS/ban.js"></script>
            <script>
            console.log($(".vs").width());
            </script>
            </div>
        </div>
    <div class="product">
        <h1>NEW PRODUCT</h1>
            <div class="p_plus">
                <a href="product.jsp">+더보기</a>
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
       <div class="service">
          <div class="p_bold">
            <h1>SERVICE</h1>
            </div>
            <video class="video" muted="muted" autoplay="autoplay" loop>
                <source src="img/Fashion Show.mp4" type="video/mp4" >
            </video>
            </div>

 
   <!-- 푸터 -->
   <%@ include file="footer.jsp" %>
</body>
</html>