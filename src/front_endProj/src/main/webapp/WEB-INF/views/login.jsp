<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>

	<h1 align="center">로그인</h1>
	<hr>
	<form action="login.me" method="post">
		<table border="1" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="${usr.id}"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" value="${usr.password}"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="로그인"/></td>
			</tr>
		</table>
	</form>

</body>
</html>