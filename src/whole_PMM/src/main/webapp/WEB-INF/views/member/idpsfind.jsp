<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 아이디 찾기</title>
</head>
<body>
	<form action="idfindch.me" method="post">
		<div class="">
			이름<input type="text" class="form-control" name="um_ars"
				placeholder="이름">
		</div>
		<div class="">
			이메일<input type="text" class="form-control" name="um_email"
				placeholder="이메일">
		</div>
		<br> <input type="submit" value="아이디찾기">
	</form>

	<form action="psfindch.me" method="post">
		<div class="">
			아이디<input type="text" class="form-control" id="" name="um_mid"
				placeholder="아이디">
		</div>
		<div class="">
			이름<input type="text" class="form-control" name="um_ars"
				placeholder="이름">
		</div>
		<div class="">
			이메일<input type="text" class="form-control" name="um_email"
				placeholder="이메일">
		</div>
		<br> <input type="submit" value="비밀번호찾기">
	</form>


</body>
</html>