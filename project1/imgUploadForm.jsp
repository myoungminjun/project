<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 업로드 체크</title>
</head>
<body>
	<div class="wrap">
		<h3 class="pop_tit">이미지 업로드 </h3>
		<form action="imguploadcheck.jsp" method="post" enctype="multipart/form-data" onsubmit="return invalidCheck(this)" >
			<div class="item_fr">
				<label for="pcode" class="lb">상품코드 : </label> 
				<input type="file" name="proimg" id="proimg" placeholder="상품코드 입력" autofocus required />
				<input type="submit" value="이미지 업로드" />
			</div>
		</form>
		<script>
		function invalidCheck(f) {
			var proimg = f.proimg.value;
			proimg = proimg.trim();
			if (proimg.length<=0) {
				alert("이미지가 업로드 되지 않았습니다.");
				return false;
			}
		}
		</script>
	</div>
</body>
</html>