<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>

<style type="text/css">

</style>



</head>
<body>


	<center>
		<h1>글 상세</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="#" method="post">
			<input name="id" type="hidden" value="${user.id}" />		<!-- update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">id</td>
					<td align="left">
						<input name="title" type="text" value="${user.id}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td align="left">${user.password}</td>
				</tr>
				<tr>
					<td bgcolor="orange">이름</td>
					<td align="left">
						<textarea name="content" cols="40" rows="10">${user.name}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">롤</td>
					<td align="left">${user.role}</td>
				</tr>
								
			</table>
		</form>
		<hr>
		
		<a href="getBoardList.do" >글목록</a>
	</center>
	
	
</body>
</html>
