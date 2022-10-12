<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>


</head>
<body>
	<center>
		<h1>글 등록</h1> 
		<hr>				
		<form action="insertDelivery.d" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">배송업체번호</td>
					<td align="left"><input type="text" name="d_dno" size="30" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">업체명</td>
					<td align="left"><input type="text" name="d_cpname" size="30" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">사업자등록번호</td>
					<td align="left"><input type="text" name="d_odno" size="30" /></td>
				</tr>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">대표자명</td>
					<td align="left"><input type="text" name="d_rpnname" size="30" /></td>
				</tr>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">대표전화번호</td>
					<td align="left"><input type="text" name="d_tel" size="30" /></td>
				</tr>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">주소</td>
					<td align="left"><input type="text" name="d_addr" size="30" /></td>
				</tr>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">등록자</td>
					<td align="left"><input type="text" name="d_register" size="30" /></td>
				</tr>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">배송가격</td>
					<td align="left"><input type="text" name="d_price" size="30" /></td>
				</tr>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getDeliveryList.d">글 목록 가기</a>
	</center>
</body>
</html>