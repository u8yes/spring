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
		<form action="updateBuy.sj" method="post">
			<input name="p_no" type="hidden" value="${buy.po_no}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="um_no" type="text" value="${buy.um_no}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${buy.ob_payno}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="po_name" cols="40" rows="10">${buy.po_name}</textarea>
					</td>
				</tr>
								<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${buy.po_number}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${buy.po_regdate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBuy.sj">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBuy.sj?po_no=${ buy.po_no }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBuyList.sj">글목록</a>
	</center>
</body>
</html>
