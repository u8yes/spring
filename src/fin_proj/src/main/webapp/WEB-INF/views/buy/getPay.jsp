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
		<form action="updatePay.sj" method="post">
			<input name="ob_payno" type="hidden" value="${pay.ob_payno}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="o_odno" type="text" value="${pay.o_odno}" />
					</td>
				</tr>
					<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="ob_type" type="text" value="${pay.ob_type}" />
					</td>
				</tr>
					<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="ms_grade" type="text" value="${pay.ms_grade}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${pay.cpa_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="pa_no" cols="40" rows="10">${pay.pa_no}</textarea>
					</td>
				</tr>
								<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${pay.da_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${pay.ob_price}</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${pay.ob_date}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertPay.sj">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deletePay.sj?ob_payno=${ pay.ob_payno }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getPayList.sj">글목록</a>
	</center>
</body>
</html>
