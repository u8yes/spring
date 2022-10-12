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
		<form action="updateProductbuy.sj" method="post">
			<input name="o_odno" type="hidden" value="${productbuy.o_odno}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="p_pno" type="text" value="${productbuy.p_pno}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="o_pquantity" cols="40" rows="10">${productbuy.o_pquantity}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${productbuy.o_date}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertProductbuy.sj">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteProductbuy.sj?o_odno=${ productbuy.o_odno }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getProductbuyList.sj">글목록</a>
	</center>
</body>
</html>
