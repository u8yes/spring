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
<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>
				
	<center>
		<h1>글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateProductBuy.o" method="post" enctype="multipart/form-data">
			<!-- <input name="p_pno" type="hidden" value="${code.p_pno}" />		update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">주문상품번호</td>
					<td align="left">
					<input name="o_odno" type="text" size="38" value="${productBuy.o_odno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">상품코드번호</td>
					<td align="left">
					<input name="p_pno" type="text" size="38" value="${productBuy.p_pno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문 수량</td>
					<td align="left">
					<input name="o_pquantity" type="text" size="38" value="${productBuy.o_pquantity}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">장바구니번호</td>
					<td align="left">
					<input name="s_no" type="text" size="38" value="${productBuy.s_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품1</td>
					<td align="left">
					<input name="o_pno1" type="text" size="38" value="${productBuy.o_pno1}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품2</td>
					<td align="left">
					<input name="o_pno2" type="text" size="38" value="${productBuy.o_pno2}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품3</td>
					<td align="left">
					<input name="o_pno3" type="text" size="38" value="${productBuy.o_pno3}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품1 수량</td>
					<td align="left">
					<input name="o_pno1qu" type="text" size="38" value="${productBuy.o_pno1qu}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품2 수량</td>
					<td align="left">
					<input name="o_pno2qu" type="text" size="38" value="${productBuy.o_pno2qu}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문상품3 수량</td>
					<td align="left">
					<input name="o_pno3qu" type="text" size="38" value="${productBuy.o_pno3qu}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">회원번호</td>
					<td align="left">
					<input name="um_no" type="text" size="38" value="${productBuy.um_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">등록일시</td>
					<td align="left">${productBuy.o_date}</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" rowspan="1">이미지</td>
					<td align="left">
					<input name="uploadFile" type="file" size="38"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertProductBuy.o" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteProductBuy.o?o_odno=${productBuy.o_odno}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getProductBuyList.o" >글목록</a>
	</center>
	
<%@ include file = "/sharedFunction/footer.jsp" %>
	
</body>
</html>