<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id 중복 체크</title>
</head>
<body>
	<div class="wrap">
		<h3 class="pop_tit">아이디 중복확인</h3>
		<form action="idDuplCheck.jsp" method="post"
			onsubmit="return invalidCheck(this)">
			<div class="item_fr">
				<label for="id" class="lb">아이디 : </label> 
				<input type="text" name="id" id="id" placeholder="영어 소문자 및 숫자 4-12자리" autofocus required />
				<input type="submit" value="중복확인" />
			</div>
		</form>
		<script>
			function invalidCheck(f) {
				var id = f.id.value;
				id = id.trim();
				if (id.length<4||id.length>12) {
					alert("아이디는 영어 소문자 및 숫자 4-12자리 조합으로만 입력 가능합니다.");
					return false;
				}
			}
		</script>
	</div>
</body>
</html>