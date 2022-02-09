<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<style>
.hd{height: auto;}
body, html {
width: 100%;
font-family: 'Noto Sans KR', sans-serif;
}    
.vs {clear: both; width: 100%; height: 460px;
background-image: url("../include/source/svisual_img01.jpg"); background-position: center center;
background-repeat: no-repeat;}
.content_wrap{clear: both; width: 1200px; margin: 0 auto; margin-top: -148px;}
.sub_tit {height: 144px;line-height: 144px; font-size: 22px; background-color: 
#808080; text-align: center; width: 190px; float: left; color:#fff;}
.bread_box {height: 119px; background-color: #fff; width: 980px; float: right;
padding-left: 30px; padding-top: 24px; border-bottom: 1px solid #999;
position: relative;}
.cate_tit {color: #999; font-size: 24px;}
.bread {padding-top: 24px;line-height: 1.6;font-size: 16px;}
.bread a, .bread span {color: #999;}
.bread span.cur{ color: #222; font-weight: 600;}
.sub_tit_ico_box {position: absolute; right: 30px; bottom: 18px;}
.sub_tit_ico_box li {float: left; margin-left: 10px;}
.sub_tit_ico_box li a{display: block; color: #fff;}
.sub_tit_ico_box li a.ico {width: 34px;height: 34px; background-position: center
center; background-repeat: no-repeat; border-radius: 18px; border:1px solid #ccc}
.sub_tit_ico_box li a.ico.item1 {background-image: url("");}
.sub_tit_ico_box li a.ico.item2 {background-image: url("");}
.sub_tit_ico_box li a.btn {border-radius: 18px; padding: 6px 12px; width: auto;
background-color: #999;}

.leftbar {width: 190px;float: left; min-height: 44.5vh; background-color: #f0f0f0;}
.lnb {clear: both;}
.lnb li {clear: both; margin: 5px 6px; border: 1px solid #aaa; line-height: 52px;}
.lnb li a {color: #222; font-size: 14px; padding-left: 1em;}
.page_box {width: 980px; float: right; padding-left: 30px;}

.page {padding-top: 40px; overflow: auto; height: auto; min-height: 100vh;}
.page_tit {padding-bottom: 36px; color: #666;}
.sub_pic img {display: block; width: 100%; height: auto;}
.sub_pic_tit {font-size: 20px; line-height: 1.6;}
.sub_pic_com {font-size: 14px; line-height: 1.6; padding-bottom: 24px;}
.sub_full_tit {color: #808080; line-height: 3; font-size: 32px; text-align: center;}
.sub_con img {display: block; min-width: 100%;}
.sub_cate_com {padding: 14px; font-style: 12px; color: #666; line-height: 1.8;
width: 940px; font-weight: 300;}
.map_area {clear: both; position: relative;}
.cont_wrap{min-height: 60vh;}
.title{padding-left:950px;}
.table{padding-left:200px;}
input{width: 300px; height: 50px; font-size: 15px; background-color: rgba(219, 219, 219,0.1);}

</style>
<%@ include file="../include/head.jsp" %>
</head>
<body>
	<%@ include file="../include/menu.jsp" %>
<div class="wrap">
	   <div class="content_fix">
            <figure class="vs" id="vs">
                <!-- 배경 이미지로 채움 -->
            </figure>
            <div class="content_wrap">
            <div class="sub_box">
                <h2 class="sub_tit">회원가입</h2>
                <div class="bread_box">
                    <h3 class="cate_tit">회원가입</h3>
                    <p class="bread"><a href="" class="home">홈</a> &gt; 
                    <span class="cur">회원가입</span></p>
                </div>
            </div>
        <aside class="leftbar">
            <nav class="lnb">
                <ul>
                    <li><a href="${path}/member/login.do">로그인</a></li>
                    <li><a href="#page1">회원가입</a></li>

                </ul>
            </nav>
        </aside>
        </div>
	<section class="cont_wrap">
	<h2 class="title">회원가입</h2>
	    <div class="reg_form_box">
	        <form method="post" action="${path}/member/joinPro.do" class="form">
	        	<table class="table">
		        	<tbody>
			            <tr class="reg_row">
			                <th><label for="userid" class="reg-label">*아이디</label></th>
			                <td class="reg_input">
			                   <input type="text" id="userid" name="userid" class="reg-control" maxlength="13" required />
			               </td>
			           </tr>
			           <tr class="reg_row">
			               <th><label for="passwd" class="reg-label">*비밀번호</label></th>
			               <td class="reg_input">
			                   <input type="password" id="passwd" name="passwd" class="reg-control" maxlength="20" required />
			                   <!-- <input type="hidden" name="passwd" value=""> -->
			               </td>
			           </tr>
			           
			           <tr class="reg_row">
			               <th><label for="name" class="reg-label">*이름</label></th>
			               <td class="reg_input">
			                    <input type="text" id="name" name="name" class="reg-control" maxlength="13" required />
			                </td>
			            </tr>
			            <tr class="reg_row">
			                <th><label for="email" class="reg-label">*이메일</label></th>
			                <td class="reg_input">
			                    <input type="text" id="email" name="email" class="reg-control" maxlength="50" />
			                </td>
			            </tr>
			           
			            <tr class="reg_row">
			                <td class="reg_btn_group" colspan="2">
			                    <input type="submit" class="btn btn-primary" id="reg_form_btn" value="회원가입" />
			                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                    <input type="reset" class="btn btn-primary" id="reg_form_btn2" value="취소" />
			                </td>
			            </tr>
		            </tbody>
	            </table>
	        </form>
	        <script src="${path}/include/js/crypto-js.min.js"></script>
	        <script>
	        function cription(f) {
	            var CryptoJS = CryptoJS;
	        	var data = f.passwds.value;
	            // Encrypt
	            var ciphertext = CryptoJS.AES.encrypt(JSON.stringify(data), '456').toString();
	            f.passwd.value = ciphertext;
	            console.log(ciphertext);
	            f.submit();
	            return false;
	            // Decrypt
	            var bytes  = CryptoJS.AES.decrypt(ciphertext, '456');
	            var decryptedData = JSON.parse(bytes.toString(CryptoJS.enc.Utf8));
	          
	            console.log(decryptedData); 
	        }
	        </script>
	    </div>
	 </section>   
	<%@ include file="../include/footer.jsp" %>
	</div>
</div>
</body>
</html>