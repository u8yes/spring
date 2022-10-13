<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>


</head>
<body>
<%@ include file = "./../header.jsp" %>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>



	<center>
		<h1>글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertBuy.po" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="100">주문번호</td>
					<td align="left"><input type="text" name="po_no" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">주문상품번호</td>
					<td align="left"><input type="text" name="o_odno" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">총가격</td>
					<td align="left"><input type="text" name="po_total" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">포인트적용</td>
					<td align="left"><input type="text" name="pa_no" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">쿠폰적용번호</td>
					<td align="left"><input type="text" name="cpa_no" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">배송업체번호</td>
					<td align="left"><input type="text" name="d_dno" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">배송요청사항</td>
					<td align="left"><input type="text" name="po_drequest" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">결제금액</td>
					<td align="left"><input type="text" name="po_price" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">결제수단코드</td>
					<td align="left"><input type="text" name="po_ptype" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">수령자명</td>
					<td align="left"><input type="text" name="po_name" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">수령자전화번호</td>
					<td align="left"><input type="text" name="po_number" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">수령자 주소</td>
					<td align="left"><input type="text" name="po_addr" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">주문상태</td>
					<td align="left"><input type="text" name="po_status" size="10" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getBuyList.po">글 목록 가기</a>
	</center>
	
<%@ include file = "./../footer.jsp" %>

</body>
</html>