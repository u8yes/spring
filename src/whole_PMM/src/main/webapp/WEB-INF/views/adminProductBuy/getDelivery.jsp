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
		
		
		<hr>
		<form action="updateDelivery.d" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="120">배송업체번호</td>
					<td align="left"><input name="d_dno" type="text" value="${delivery.d_dno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">업체명</td>
					<td align="left"><input name="d_cpname" type="text" value="${delivery.d_cpname}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">사업자등록번호</td>
					<td align="left"><input name="d_odno" type="text" value="${delivery.d_odno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">대표자명</td>
					<td align="left"><input name="d_rpnname" type="text" value="${delivery.d_rpnname}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">대표전화번호</td>
					<td align="left"><input name="d_tel" type="text" value="${delivery.d_tel}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">주소</td>
					<td align="left"><input name="d_addr" type="text" value="${delivery.d_addr}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">등록자</td>
					<td align="left"><input name="d_register" type="text" value="${delivery.d_register}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="120">배송가격</td>
					<td align="left"><input name="d_price" type="text" value="${delivery.d_price}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">등록일시</td>
					<td align="left">${delivery.d_regdate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="글 수정" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertDelivery.d">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteDelivery.d?d_dno=${delivery.d_dno}">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getDeliveryList.d">글목록</a>
	</center>
	


	
<%@ include file = "/sharedFunction/footer.jsp" %>
	
</body>
</html>
