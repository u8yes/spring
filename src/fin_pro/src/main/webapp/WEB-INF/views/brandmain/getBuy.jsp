<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
<%@ include file = "./../header.jsp" %>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>

	<center>
		<h1>글 상세</h1>
		<hr>
		<form action="updateBuy.po" method="post">
			<input name="p_no" type="hidden" value="${buy.po_no}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="100">주문번호</td>
					<td align="left">
						<input name="po_no" type="text" value="${buy.po_no}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">주문상품번호</td>
					<td align="left">
						<input name="o_odno" type="text" value="${buy.o_odno}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">총가격</td>
					<td align="left">
						<input name="po_total" type="text" value="${buy.po_total}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">포인트적용</td>
					<td align="left">
						<input name="pa_no" type="text" value="${buy.pa_no}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">쿠폰적용번호</td>
					<td align="left">
						<input name="cpa_no" type="text" value="${buy.cpa_no}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">배송업체번호</td>
					<td align="left">
						<input name="d_dno" type="text" value="${buy.d_dno}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">배송요청사항</td>
					<td align="left">
						<input name="po_drequest" type="text" value="${buy.po_drequest}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">결제금액</td>
					<td align="left">
						<input name="po_price" type="text" value="${buy.po_price}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">결제수단코드</td>
					<td align="left">
						<input name="po_ptype" type="text" value="${buy.po_ptype}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">수령자명</td>
					<td align="left">
						<input name="po_name" type="text" value="${buy.po_name}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">수령자전화번호</td>
					<td align="left">
						<input name="po_number" type="text" value="${buy.po_number}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">수령자 주소</td>
					<td align="left">
						<input name="po_addr" type="text" value="${buy.po_addr}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="100">주문상태</td>
					<td align="left">
						<input name="po_status" type="text" value="${buy.po_status}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주문일시</td>
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
		<a href="insertBuy.po">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBuy.po?po_no=${ buy.po_no }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBuyList.po">글목록</a>
	</center>
	
	
<%@ include file = "./../footer.jsp" %>
</body>
</html>
