<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>

<body>

<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>

	<center>
		<h1>글 상세</h1>
		<!-- <a href="logout.do">Log-out</a> -->
		<hr>
		
		<form action="updateProduct.p" method="post" enctype="multipart/form-data">
			<!-- <input name="bm_no" type="hidden" value="${brandInfo.bm_no}" />		update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">상품코드번호</td>     
					<td align="left">
					<input name="p_pno" type="text" size="38" value="${product.p_pno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">브랜드번호</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${product.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">상품명</td>
					<td align="left">
					<input name="p_name" type="text" size="38" value="${product.p_name}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">상품상세정보</td>
					<td align="left">
					<input name="p_detail" type="text" size="38" value="${product.p_detail}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">정가</td>
					<td align="left">
					<input name="p_price" type="text" size="38" value="${product.p_price}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">판매가</td>
					<td align="left">
					<input name="p_disprice" type="text" size="38" value="${product.p_disprice}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">판매 시작일</td>          
					<td align="left">
					<input name="p_start" type="text" size="38" value="${product.p_start}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">판매 종료일</td>          
					<td align="left">
					<input name="p_end" type="text" size="38" value="${product.p_end}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">배송제약사항</td>
					<td align="left">
					<input name="p_delivery" type="text" size="38" value="${product.p_delivery}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">A/S가능여부</td>
					<td align="left">
					<input name="p_as" type="text" size="38" value="${product.p_as}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">반품가능여부</td>
					<td align="left">
					<input name="p_ox" type="text" size="38" value="${product.p_ox}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">제품이미지</td>
					<td align="left">
					<input name="p_pimg" type="text" size="38" value="./productUpload/${product.p_pimg}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">상세이미지</td>
					<td align="left">
					<input name="p_dimg" type="text" size="38" value="./productUpload/${product.p_dimg}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">배송할인</td>
					<td align="left">
					<input name="p_deldis" type="text" size="38" value="${product.p_deldis}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">수량</td>
					<td align="left">
					<input name="p_count" type="text" size="38" value="${product.p_count}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" rowspan="2">이미지</td>
					<td align="left">
					<input name=uploadFile type="file" size="38"/><br></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertProduct.p">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteProduct.p?p_pno=${product.p_pno}">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getProductList.p">글목록</a>&nbsp;&nbsp;&nbsp;
		<a href="shoppinglist.p">장바구니</a>
	</center>
	
<%@ include file = "/sharedFunction/footer.jsp" %>
</body>
</html>
