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
		<a href="logout.sj">Log-out</a>
		<hr>
		
		<form action="updateDelivery.sj" method="post">
			<input name="d_dno" type="hidden" value="${delivery.d_dno}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="d_cpname" type="text" value="${delivery.d_cpname}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${delivery.d_odno}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="d_rpnname" cols="40" rows="10">${delivery.d_rpnname}</textarea>
					</td>
				</tr>
								<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${delivery.d_tel}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${delivery.d_addr}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${delivery.d_register}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${delivery.d_price}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${delivery.d_regdate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertDelivery.sj">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteDelivery.sj?d_dno=${ delivery.d_dno}">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getDeliveryList.sj">글목록</a>
	</center>
</body>
</html>
