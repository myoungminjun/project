<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
    /* font-family: 'TTTogether'; */
    /* font-family: 'Noto Sans KR', sans-serif; */
    #item1 { background-image: url("/myapp/include/source/svisual_img04.jpg");}
    #item2 { background-image: url("/myapp/include/source/item_bg2.jpg");}
    #item3 { background-image: url("/myapp/include/source/item_bg3.jpg");}
    #item4 { background-image: url("/myapp/include/source/item_bg4.jpg");}
    #item5 { background-image: url("/myapp/include/source/item_bg5.jpg");}
    #item8 { background-image: url("/myapp/include/source/item_bg8.png");}
    #item9 { background-image: url("/myapp/include/source/item_bg9.jpg");}
    #item10 { background-image: url("/myapp/include/source/item10_bg.jpg");}
    #item11 { background-color: #fff; }


    .vs { clear:both; width: 2000px; position:relative; }
    .img_box { width: 400%; transition-duration:0.6s; }
    #ra1:checked ~ .img_box { margin-left: 0; }
    #ra2:checked ~ .img_box { margin-left:-100%; }
    #ra3:checked ~ .img_box { margin-left:-200%; }
    #ra4:checked ~ .img_box { margin-left:-300%; }
    .btn_box li label { display:block; width: 100px; height: 100px; position:absolute; background-color:#fff; top:120px; z-index:10; }
    .btn_box li label.prev { left:60px; }
    .btn_box li label.next { right:60px; }

#vs .img_box li { width: 25%; float:left;  } 
#vs .img_box li a {display:block; position:relative; }
#vs .img_box .vs_img { display:block; min-height: 750px;} 
#vs .img_box li { position:relative;  } 
#vs .img_box .tit_box { position:absolute; top:100px; left: 0; z-index:4;
padding:60px 280px; color:#fff; text-align: center; }
#vs .img_box .vs_tit { font-family: 'TTTogether'; font-size:70px; font-weight:400; text-shadow:2px 2px 2px #333; text-align: center;}
#vs .img_box .vs_com { font-size:18px; text-shadow:-1px -1px 2px #333;text-align: center;}

.btn_box li button {  background-color:transparent; display:block; width: 40px; height: 280px; background-repeat: no-repeat; background-position: center center; 
background-size:100% 100%; position:absolute; top:160px; z-index:5; 
text-indent:-10000px; cursor:pointer; display:none; }
.btn_box li.btn1 button { left:50px; background-image: url("/myapp/include/source/arrow1.png");}
.btn_box li.btn2 button { right:50px; background-image: url("/myapp/include/source/arrow2.png");}


#page1 { position:relative; background:url("/myapp/include/source/sec1Bg1.png") center top no-repeat #c0e6d7; background-size:120% auto; }
.page:before { content:""; display:block; width: 440px; height: 440px; 
position:absolute; background-color:#a0b3ab; border-radius:50%; 
left:50%; margin-left: -210px; margin-top: -490px;  opacity:0.7;   }
.ptit_box { width: 440px; height: 440px; background-color:#05a4a6; color:#fff; 
text-align: center; padding-top: 330px; box-sizing: border-box; position:absolute; left: 50%; margin-left: -222px; border-radius:50%; margin-top: -492px;   }
.pg_tit2 {  font-family: 'TTTogether'; font-size:36px; font-weight:400; }

.col_tit { color:#fff; text-align: center; line-height:3; width: 100%; clear:both; margin-top: 28px; }
.col_tit:after { content:""; display:block; width: 40px; height: 2px; 
background-color: #fff; clear:both; margin:0px auto; margin-bottom: 20px; }
.col_com { color:#fff; padding: 20px 60px; font-size:14px; text-align: center;}
#page1 .col_link, #page2 .col_link { display:block;  clear:both; float:none; width: 38px; height: 38px; 
margin: 10px auto; background-image: url("/myapp/include/source/family-arrow.png");
border-radius:21px; border:2px solid #fff;  text-indent:-10000px;
background-repeat: no-repeat; background-position:center center;  }

.half_tit1 { font-size:24px; padding-left: 100px; padding-top:120px; color:#fff; text-shadow:1px 1px 2px #333; }
.half_tit2 { font-size:48px; padding-left: 100px; padding-top:40px; color:#fff; 
    font-family: 'TTTogether';  font-weight:400; text-shadow:2px 2px 2px #333; }
.half_com { color:#fff; padding:40px 100px; font-size:18px; text-shadow:1px 1px 1px #000, -1px -1px 1px #000; }


#page2 { position:relative; 
    background-image:url("/myapp/include/source/sec2Bg1.png"), url("/myapp/include/source/pngwing.png");
    background-size:120% auto;
    background-position:center top, center bottom;
    background-repeat: no-repeat;
    background-color:#c0e6d7; 
}
#page2 .ptit_box { background-color: #00436f;}
#item6 { width: 400%;  transition-delay:0.05s; 
transition-duration:0.6s; }
#item6 li { width: 25%; float:left; }
.thumb_vs_wrap { position:absolute; right:0; bottom: 0; overflow:hidden; width: 300px; height: 277px; }
#item7 { width: 400%; margin-left: 0; transition-delay:0.05s; 
transition-duration:0.6s; }
#item7 li { width: 25%; float:left; }
#item7 li label { display:block; width: 18px; height: 36px; 
background-repeat: no-repeat; background-position:center center; position:absolute; bottom:100px; text-indent:-10000px; cursor:pointer; }
#item7 li label.lb1 { left:24px; background-image: url("/myapp/include/source/prev.png"); }
#item7 li label.lb2 { right:24px; background-image: url("/myapp/include/source/next.png"); }
#item7 .tbox { width: 140px; height: 140px; clear:both;overflow:hidden;   margin:20px auto; top: 50px;  border-radius:75px; border:3px solid #fff; }
.thumb_vs_wrap #item7 li label { display:none; }
.ra { display:none; }
#ra1:checked ~ .thumb_vs_wrap #item7 .item1 label { display:block; }
#ra2:checked ~ .thumb_vs_wrap #item7 .item2 label { display:block; }
#ra3:checked ~ .thumb_vs_wrap #item7 .item3 label { display:block; }
#ra4:checked ~ .thumb_vs_wrap #item7 .item4 label { display:block; }
#ra1:checked ~ .thumb_vs_wrap #item7 { margin-left: 0; }
#ra2:checked ~ .thumb_vs_wrap #item7 { margin-left:-100%; }
#ra3:checked ~ .thumb_vs_wrap #item7 { margin-left:-200%; }
#ra4:checked ~ .thumb_vs_wrap #item7 { margin-left:-300%; }
#ra1:checked ~ #item6 { margin-left: 0; }
#ra2:checked ~ #item6 { margin-left:-100%; }
#ra3:checked ~ #item6 { margin-left:-200%; }
#ra4:checked ~ #item6 { margin-left:-300%; }
.col_vs_tit_box { position:absolute; top: 0; left: 0; }
.col_vs_tit { clear:both; width: 100%;  padding-top: 50px;  }
.col_vs_tit span { display:block; font-family: 'TTTogether';  font-weight:400; 
padding-left:120px; font-size:48px;}
.col_vs_tit .row1 { color:#00436f;  padding-left: 60px;}
.col_vs_tit .row2 { color:#007bbf;  padding-left: 60px;}
.col_vs_com { padding-left: 60px; padding-top: 30px; }
#item8 .col_tit, #item9 .col_tit { line-height: 1.6; } 
#item9 .col_com img { border:2px solid #fff; border-radius:100px; }
#page2 .col_com { clear:both; float:none; width:auto; margin:0px auto; }
.col_tit.black_txt { color:#000; line-height: 1.6; padding-top: 12px; }
.col_tit.black_txt:after { background-color: #00b2a3; }
#item11 { position:relative; }
#item11 .link_box { position:absolute; bottom: 0; left: 0; width: 100%; }
#item11 .link_box li { display:block; width: 50%; float:left; }
#item11 .link_box li a { display:block; line-height: 65px; height: 65px; color:#222; background-color: #00b2a3; padding-left:64px; 
font-size:14px; border-top:1px solid #fff; border-left:1px solid #fff; 
background-repeat: no-repeat; background-position:18px center; }
#item11 .link_box li:nth-child(2n+1) a { border-left:0px; }
#item11 .link_box li.item1 a { background-image: url("/myapp/include/source/pg2_icon1.png"); }
#item11 .link_box li.item2 a { background-image: url("/myapp/include/source/pg2_icon2.png"); }
#item11 .link_box li.item3 a { background-image: url("/myapp/include/source/pg2_icon3.png"); }
#item11 .link_box li.item4 a { background-image: url("/myapp/include/source/pg2_icon4.png"); }

#page3 { background-image:url("/myapp/include/source/mvisual_bg (1).jpg");
    background-repeat:no-repeat, repeat;
    background-color:#c0e6d7;  }
#page3 .ptit_box { background-color: #007bbf;}
.icon_lst { clear:both; width: 100%; padding-bottom: 50px; }
.icon_lst:after { content:""; display:block; clear:both; }
.icon_lst li { float:left; width: 20%; }
.icon_lst li a { display:block; text-align: center; color:#222; font-size:14px; }
.icon_lst li a .ico_box { display:block; width: 80px; height: 80px; 
margin:10px auto; border:5px solid transparent; box-sizing:border-box; 
border-radius:48px; overflow:hidden; }
.icon_lst li a:hover { text-decoration:underline; }
.icon_lst li a:hover .ico_box { border:5px solid #007bbf; }
.icon_lst li a .ico_box img { display:block; width: 48px; height: 48px; margin: 0 auto; margin-top: 11px; }
#page3 .news_lst { clear:both; background-color: #fff1f1f1; width: 1200px; 
margin: 0 auto; }
#page3 .news_lst:after { content:""; display:block; clear:both; }
#page3 .news_lst > .col6 { float:left; box-sizing:border-box; position:relative;
height: 420px; height:390px; overflow:hidden; }
.news_tit, .al_tit { font-size:24px; line-height: 3; padding-left: 24px; }
.news_lst .more { display:block; width: 24px; height: 24px; 
background-image: url("/myapp/include/source/ico_more.png"); background-repeat: no-repeat;
background-position:center center; position:absolute; top:24px; right:24px; z-index:10; }
.noti_lst { clear:both; height: 390px; }
.noti_lst li { clear:both; padding: 10px 24px; }
.noti_lst li a { display:block; color:#666; font-size:16px; }
.noti_lst li a .noti_tit { float:left; font-weight:400; width: 420px; padding-right: 20px; text-overflow: ellipsis; overflow:hidden; white-space:nowrap;}
.noti_lst li a .noti_date { float:right; width: 110px; text-align:center; }
.noti_lst li:hover a .noti_tit { text-decoration: underline; }
.noti_lst li:hover a .noti_date { text-decoration: underline; }
.noti_lst li.act:before { content:""; display:block; width: 80px; height: 80px;   background-image: url("/myapp/include/source/notice_act.png"); 
background-repeat: no-repeat; 
background-position:center center; float:left;  }
.noti_lst li:nth-child(2) { padding-top: 30px; }
.noti_lst li.act a { float:left; width: 460px; overflow:hidden; }
.noti_lst li.act a .noti_tit { width:auto; clear:both; font-size:20px; color:#333; }
.noti_lst li.act a .noti_com { width:auto; clear:both;  border-bottom:1px solid #999; white-space: pre; width: 460px; display:-webkit-box; 
-webkit-line-clamp:3; -webkit-box-orient: vertical; }

.al_box { width: 199px; float:left; background-color: deepskyblue; height: 390px; }
.al_com { padding:8px 20px; }
.al_btn_fr { clear:both; width:168px; margin: 20px auto; margin-top: 100px; }
.al_btn_fr li { float:left; margin:8px; }
.al_btn_fr li button { display:block; width: 40px; height: 40px; 
background-repeat: no-repeat; background-position:center center; }
.al_btn_fr li button.prev { background-image: url("/myapp/include/source/picLeft.jpg"); }
.al_btn_fr li button.play { background-image: url("/myapp/include/source/picPlay.jpg");  }
.al_btn_fr li button.next { background-image: url("/myapp/include/source/picRight.jpg");  }
.photo_box { width: 399px; float:right; height:390px; overflow:hidden; }
.photo_fr { width: 400%; }
.photo_fr li { width: 25%; float:left; position:relative; }
.photo_tit { position:absolute; top:90px; font-size:28px; color:#fff;
    text-shadow:1px 1px 2px #333, -1px -1px 2px #333; text-align: center; 
width: 395px; }
.photo_com { position:absolute; bottom:90px; font-size:20px; color:#fff; 
    text-shadow:1px 1px 2px #333, -1px -1px 2px #333; text-align: center; 
    width: 395px;  }
.photo_img { display:block; width: 100%; height: auto; margin-top:40px;}
</style>
	<title>Home</title>
	<%@ include file="../views/include/head.jsp" %>
</head>
<body>
<%@ include file="../views/include/menu.jsp" %>
<div class="wrap">
	<div class="content fix">
        <figure class="vs" id="vs">
            <ul class="img_box">
                <li>
                    <a href="">
                        <img src="/myapp/include/source/mv_1_1.jpg" alt="?????? ????????????" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">???????????? ????????????</h2>
                            <h2 class="vs_tit">?????????????????????</h2>
                            <p class="vs_com">?????? ??? ????????? ????????? ?????? ????????? ????????????</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="/myapp/include/source/mv_1_2.jpg" alt="?????????" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">????????? ?????? ????????????</h2>
                            <h2 class="vs_tit">?????????</h2>
                            <p class="vs_com">????????? 10???~16??? ?????? ????????? 5?????? ??????????????????</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="/myapp/include/source/mv_1_3.jpg" alt="?????????????????????" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">????????? ??????</h2>
                            <h2 class="vs_tit">?????????????????????</h2>
                            <p class="vs_com">???????????? ???????????? ??????????????????</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="/myapp/include/source/mv_1_4.jpg" alt="?????? ?????? ?????????" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">????????? ??????????????????</h2>
                            <h2 class="vs_tit">?????? ???????????????</h2>
                            <p class="vs_com">????????? ????????? ???????????? ????????????</p>
                        </div>
                    </a>
                </li>
            </ul>    
        </figure>
        <!-- ???????????? ???????????? -->
        <script>
            $(function(){
                $(".img_box").slick({
                    dots:true,  //????????? ?????? ??????
                    arrows:true,    //?????? ?????? ??????
                    infinite:true,  //?????? ??????
                    speed:300,  //??? ??????????????? ??????
                    autoplay:true,  //?????? ??????
                    autoplaySpeed:3500, //??? ??????????????????, ???????????? ??????
                });
            });
            </script>
        <section class="page fix" id="page1" >
            <div class="ptit_box">
                <h4 class="pg_tit1">?????????????????? ??? ???????????????</h4>
                <h2 class="pg_tit2">????????? ????????????</h2>
            </div>
            <div class="page_wrap">
                <ul class="grid">
                    <li class="col6">
                        <div class="col6 col_item col277" id="item1">
                            <h3 class="col_tit">????????? ????????????</h3>
                            <p class="col_com">?????? ???????????? ????????? ????????? ????????? ?????? ??? ????????????.</p>
                            <a href="" class="col_link">?????????</a>
                        </div>
                        <div class="col6 col_item col277" id="item2">
                            <h3 class="col_tit">???????????????</h3>
                            <p class="col_com">?????? ??????????????? ???????????? ???????????? ?????? ???????????? ???????????? ??? ????????????.</p>
                            <a href="" class="col_link">?????????</a>
                        </div>
                        <div class="col6 col_item col277" id="item3">
                            <h3 class="col_tit">????????? ??????</h3>
                            <p class="col_com">??????????????? ????????? ???????????? ????????? ???????????????.</p>
                            <a href="" class="col_link">?????????</a>
                        </div>
                        <div class="col6 col_item col277" id="item4">
                            <h3 class="col_tit">?????? ????????????</h3>
                            <p class="col_com">???????????????????????? ?????????
                            					?????? ????????? ?????? ?????? ??????</p>
                            <a href="" class="col_link">?????????</a>
                        </div>
                    </li>
                    <li class="col6">
                        <div class="half_box col_item col554" id="item5">
                            <h4 class="half_tit1">????????? ??????</h4>
                            <h2 class="half_tit2">???????????? ??????</h2>
                            <p class="half_com">??????????????? ????????? ?????? ?????? ?????????</p>
                            <a href="" class="col_link half_more">?????????</a>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page fix" id="page2" style="background-color: #8facc7;">
            <div class="ptit_box">
                <h4 class="pg_tit1">??????.?????? ??? ????????? ??????</h4>
                <h2 class="pg_tit2">????????? ????????????</h2>
            </div>
            <div class="page_wrap">
                <ul class="grid">
                    <li class="col6 col554">
                        <div class="half_box col_item col554" style="position: relative;">
                            <input type="radio" class="ra" name="ra" id="ra1" checked>
                            <input type="radio" class="ra" name="ra" id="ra2">
                            <input type="radio" class="ra" name="ra" id="ra3">
                            <input type="radio" class="ra" name="ra" id="ra4">
                            <ul class="pic_ban col554" id="item6">
                                <li class="item1">
                                    <img src="/myapp/include/source/pic_ban1.jpg" alt="????????? ?????????">
                                </li>
                                <li class="item2">
                                    <img src="/myapp/include/source/pic_ban2.jpg" alt="??????????????????">
                                </li>
                                <li class="item3">
                                    <img src="/myapp/include/source/pic_ban3.jpg" alt="????????????????????????">
                                </li>
                                <li class="item4">
                                    <img src="/myapp/include/source/pic_ban4.jpg" alt="???????????????">
                                </li>
                            </ul> 
                            <div class="thumb_vs_wrap">  
                            <ul class="thumb_ban col6 col277 col_item" id="item7" style="background-color: #2e99e4">
                                <li class="item1">
                                    <h3 class="col_tit">????????? ?????????</h3>
                                    <label for="ra4" class="lb1">??????</label>
                                    <div class="tbox"><img src="/myapp/include/source/sub02_02_01_img1_01.jpg" alt="????????? ?????????"></div>
                                    <label for="ra2" class="lb2">??????</label>
                                </li>
                                <li class="item2">
                                    <h3 class="col_tit">??????????????????</h3>
                                    <label for="ra1" class="lb1">??????</label>
                                    <div class="tbox"><img src="/myapp/include/source/sub02_02_01_img14.jpg" alt="??????????????????"></div>
                                    <label for="ra3" class="lb2">??????</label>
                                </li>
                                <li class="item3">
                                    <h3 class="col_tit">????????????????????????</h3>
                                    <label for="ra2" class="lb1">??????</label>
                                    <div class="tbox"><img src="/myapp/include/source/sub02_02_01_img59.jpg" alt="????????????????????????"></div>
                                    <label for="ra4" class="lb2">??????</label>
                                </li>
                                <li class="item4">
                                    <h3 class="col_tit">???????????????</h3>
                                    <label for="ra3" class="lb1">??????</label>
                                    <div class="tbox"><img src="/myapp/include/source/sub02_02_03a_img7.jpg" alt="???????????????"></div>
                                    <label for="ra1" class="lb2">??????</label>
                                </li>
                            </ul>
                        </div>
                        <div class="col_vs_tit_box">
                            <h2 class="col_vs_tit">
                                <span class="row1">????????????</span>
                                <span class="row2">????????????</span>
                            </h2>
                            <p class="col_vs_com">????????? ??????, ?????? ???,<br>
                           ????????? ????????? ??????, ?????? ?????? ?????????</p>
                        </div>
                    </div>
                    </li>

                    <li class="col6 col554">
                        <div class="col6 col277 col_item" id="item8">
                            <h3 class="col_tit">Great<br><span class="gold">???????????????</span></h3>
                            <p class="col_com">
                                <img src="/myapp/include/source/be_web2020.png" alt="???????????????">
                            </p>
                        </div>
                        <div class="col6 col277 col_item" id="item9">
                            <h3 class="col_tit">????????????<br>??????360???VR??????</h3>
                            <p class="col_com">
                                <a href="" class=""><img src="/myapp/include/source/btn_movie_play.png" alt="VR??????"></a>

                            </p>
                        </div>
                        
                        <div class="col6 col277 col_item" id="item10">
                            <h3 class="col_tit">????????? ??????</h3>
                            <p class="col_com">????????? ??????~ ????????? ?????????<br>?????? ??????????????????.</p>
                            <a href="" class="col_link"></a>
                        </div>
                        <div class="col6 col277 col_item" id="item11">
                            <h3 class="col_tit black_txt">??????, ??????, ?????????<br>?????? ????????????</h3>
                            <ul class="link_box">
                                <li class="item1 col6"><a href="">??????</a></li>
                                <li class="item2 col6"><a href="">??????</a></li>
                                <li class="item3 col6"><a href="">????????????</a></li>
                                <li class="item4 col6"><a href="">????????????</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page fix" id="page3">
            <div class="ptit_box">
                <h4 class="pg_tit1">?????? ??? ????????? ??????</h4>
                <h2 class="pg_tit2">????????? ????????????</h2>
            </div>
            <div class="page_wrap">
                <ul class="icon_lst">
                    <li class="item1">
                        <a href="">
                            <div class="ico_box"><img src="/myapp/include/source/map.png" alt="??????????????????"></div>
                            <span class="ico_txt">??????????????????</span>
                        </a>
                    </li>
                    <li class="item2">
                        <a href="">
                            <div class="ico_box"><img src="/myapp/include/source/advertising.png" alt="?????????????????????"></div>
                            <span class="ico_txt">?????????????????????</span>
                        </a>
                    </li>
                    <li class="item3">
                        <a href="">
                            <div class="ico_box"><img src="/myapp/include/source/tour-guide.png" alt="?????????????????????"></div>
                            <span class="ico_txt">?????????????????????</span>
                        </a>                            
                    </li>
                    <li class="item4">
                        <a href="">
                            <div class="ico_box"><img src="/myapp/include/source/icn_tour6.png" alt="????????????"></div>
                            <span class="ico_txt">????????????</span>
                        </a>
                    </li>
                    <li class="item5">
                        <a href="">
                            <div class="ico_box"><img src="/myapp/include/source/car.png" alt="?????????"></div>
                            <span class="ico_txt">?????????</span>
                        </a>
                    </li>

                </ul>
                <ul class="news_lst">
                    <li class="col6">
                        <h3 class="news_tit">?????????</h3>
                        <a href="" class="more"></a>
                        <ul class="noti_lst">
                            <li class="act">
                                <a href="">
                                    <h4 class="noti_tit">
                                        ???2022??? ?????????????????? ????????????????????? ??????
                                    </h4>
                                    <p class="noti_com">
                                        ?????? ??????
                                        1. ???????????? : 2022.1.7(???) ~ 1.26(???) [20??????]
2. ???????????? : 2022.1.25(???) ~1.26(???) 18:00?????? [2??????]
??? ???????????? ??? ?????? ????????? ?????? : ?????????????????????????????????(044-862-9217)
??? ???????????? ??????, ???????????? ?????? ???????????? ?????? ?????? ?????? ?????? ??????
3. ???????????? : 2022. 3???(???????????????) ~ 12???
4. ???????????? : 4?????? ?????? ??? ?????? ???????????? ????????? ??? ??????
5. ???????????? : ????????? 1??? ?????? ?????? ?????? ??????(???????????? 20% ????????? ??????)
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <h4 class="noti_tit">????????? ??????1</h4>
                                    <p class="noti_date">2021-12-23</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <h4 class="noti_tit">????????? ??????2</h4>
                                    <p class="noti_date">2021-12-23</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <h4 class="noti_tit">????????? ??????3</h4>
                                    <p class="noti_date">2021-12-23</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="col6">
                        <div class="al_box">
                            <h3 class="al_tit">?????? ?????? ??????</h3>
                            <p class="al_com">?????? ????????? ??????!<br> ???????????????!</p>
                            <ul class="al_btn_fr">
                                <li><button class="prev"></button></li>
                                <li><button class="play"></button></li>
                                <li><button class="next"></button></li>
                            </ul>
                        </div>
                        <div class="photo_box">
                            <ul class="photo_fr">
                                <li>
                                    <img src="/myapp/include/source/photo1.jpg" alt="??????1" class="photo_img">
                                    <h4 class="photo_tit">????????? ?????????</h4>
                                    <p class="photo_com">2021-12-23</p>
                                </li>
                                <li>
                                    <img src="/myapp/include/source/photo2.jpg" alt="??????2" class="photo_img">
                                    <h4 class="photo_tit">????????? ??????</h4>
                                    <p class="photo_com">2021-12-23</p>
                                </li>
                                <li>
                                    <img src="/myapp/include/source/photo3.jpg" alt="??????3" class="photo_img">
                                    <h4 class="photo_tit">?????????????????????3</h4>
                                    <p class="photo_com">2021-12-23</p>
                                </li>
                                <li>
                                    <img src="/myapp/include/source/photo4.jpg" alt="??????4" class="photo_img">
                                    <h4 class="photo_tit">?????????????????? ??????</h4>
                                    <p class="photo_com">2021-12-23</p>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </div>
</div>
<%@ include file="../views/include/footer.jsp" %>
</body>
</html>
