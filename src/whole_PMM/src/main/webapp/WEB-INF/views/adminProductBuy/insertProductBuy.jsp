<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>
</head>
<body>
<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>

	<center>
		<h1>글 등록</h1>
		
		<hr>
		<form action="insertProductBuy.o" method="post" enctype="multipart/form-data">	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="150">주문상품번호</td>
					<td align="left"><input type="text" name="o_odno" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">상품코드번호</td>
					<td align="left"><input type="text" name="p_pno" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문 수량</td>
					<td align="left"><input type="text" name="o_pquantity" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">장바구니번호</td>
					<td align="left"><input type="text" name="s_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품1</td>
					<td align="left"><input type="text" name="o_pno1" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품2</td>
					<td align="left"><input type="text" name="o_pno2" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품3</td>
					<td align="left"><input type="text" name="o_pno3" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품1 수량</td>
					<td align="left"><input type="text" name="o_pno1qu" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품2 수량</td>
					<td align="left"><input type="text" name="o_pno2qu" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품3 수량</td>
					<td align="left"><input type="text" name="o_pno3qu" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">회원번호</td>
					<td align="left"><input type="text" name="um_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">파일첨부</td>
					<td><input type="file" name="uploadFile"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getProductBuyList.o">글 목록 가기</a>
	</center>
	
	
<%@ include file = "/sharedFunction/footer.jsp" %>

</body>
</html>