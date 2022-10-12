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
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateBoard.do" method="post">
			<input name="s_no" type="hidden" value="${shopping.s_no}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">장바구니번호</td>
					<td align="left">${shopping.s_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">회원번호</td>
					<td align="left">${shopping.um_no}</td>
				</tr>
				<
				<tr>
					<td bgcolor="orange">상품코드번호</td>
					<td align="left">${shopping.p_pno}</td>
				</tr>
				<tr>
					<td bgcolor="orange">주문 수량</td>
					<td align="left">${shopping.s_quantity}</td>
				</tr>
				
				<tr>
					<td bgcolor="orange">등록일시</td>
					<td align="left">${shopping.s_date}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertShoppingbas.do">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBoard.do?s_no=${shopping.s_no}">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList2.do">글목록</a>&nbsp;&nbsp;&nbsp;

	</center>
</body>
</html>
