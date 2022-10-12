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
			<input name="p_pno" type="hidden" value="${product.p_pno}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">상품코드번호</td>
					<td align="left">${product.p_pno}</td>
				</tr>
				<tr>
					<td bgcolor="orange">상품명</td>
					<td align="left">${product.p_name}</td>
				</tr>
				<tr>
					<td bgcolor="orange">상품상세정보</td>
					<td align="left">
						<textarea name="p_detail" cols="40" rows="10">${product.p_detail}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">판매단가</td>
					<td align="left">${product.p_price}</td>
				</tr>
				<tr>
					<td bgcolor="orange">판매 시작일</td>
					<td align="left">${product.p_start}</td>
				</tr>
				<tr>
					<td bgcolor="orange">판매 종료일</td>
					<td align="left">${product.p_end}</td>
				</tr>
				<tr>
					<td bgcolor="orange">배송제약사항</td>
					<td align="left">${product.p_delivery}</td>
				</tr>
				<tr>
					<td bgcolor="orange">배송할인</td>
					<td align="left">${product.p_deldis}</td>
				</tr>
				<tr>
					<td bgcolor="orange">브랜드 번호</td>
					<td align="left">${product.bm_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">수량</td>
					<td align="left">${product.p_count}</td>
				</tr>
				<tr>
					<td bgcolor="orange">카테고리번호</td>
					<td align="left">${product.g_cno}</td>
				</tr>
				<tr>
					<td bgcolor="orange">A/S 가능</td>
					<td align="left">${product.p_as}</td>
				</tr>
				<tr>
					<td bgcolor="orange">반품 가능</td>
					<td align="left">${product.p_ox}</td>
				</tr>
				<tr>
					<td bgcolor="orange">제품이미지</td>
					<td align="left"><img src="./boardUpload/${product.p_pimg}" width="150" height="100"></td>
				</tr>
				<tr>
					<td bgcolor="orange">상세이미지</td>
					<td align="left"><img src="./boardUpload/${product.p_dimg}" width="150" height="100"></td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일시</td>
					<td align="left">${product.p_regdate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBoard.do">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBoard.do?p_pno=${product.p_pno}">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">글목록</a>&nbsp;&nbsp;&nbsp;
		<a href="shoppinglist.do">장바구니</a>
	</center>
</body>
</html>
