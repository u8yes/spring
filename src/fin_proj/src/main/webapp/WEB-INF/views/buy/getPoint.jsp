<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
	<center>
		<h1>글 상세</h1>
		<hr>
		<form action="updatePoint.sj" method="post">
			<input name="pp_payno" type="hidden" value="${point.pp_payno}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="pp_name" type="text" value="${point.pp_name}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="pp_desc" cols="40" rows="10">${point.pp_desc}</textarea>
					</td>
						<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${point.pp_date}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertPoint.sj">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deletePoint.sj?pp_payno=${ point.pp_payno }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getPointList.sj">글목록</a>
	</center>
</body>
</html>
