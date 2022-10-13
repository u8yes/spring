<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<!-- 비밀번호 변경 -->

<style type="text/css">
	.box {
		width: 20%;
		margin: 100px auto;
		background-color: aqua; /* 영역 확인용 색깔을 넣어둔 것입니다. 작업 후 지워주세요. */
		text-align: center;
	}
	p {
		font-size: 13px;
	}
	span {
		font-size: 20px;
	}
	.a {
		width: 10%;
		margin: auto;
	}
</style>

</head>
<body>
<form action="" method="post">
	<div class="box">
		<h3>비밀번호 변경</h3>
		<span>비밀번호 변경하기</span>
		<br><br>
		<p>현재 비밀번호 입력 후</p>
		<p>바꾸시려는 새 비밀번호를 입력해주세요.</p>
		<p>현재 비밀번호가 틀리면 새 비밀번호로 변경 불가합니다.</p>
		현재 비밀번호 <input placeholder="현재 비밀번호를 입력해주세요."><br>
		새 비밀번호 <input placeholder="숫자, 영문을 포함하여 4자 이상 입력해주세요."><br>
		새 비밀번호 확인 <input placeholder="동일하게 입력해주세요."><br>
		<br><br>
		<input type="submit" value="변경하기">
	</div>
</form>
<div class="a">
	<a href="mjoinup.jsp">내 정보로 돌아가기</a>
</div>

</body>
</html>