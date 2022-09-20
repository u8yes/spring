<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>	<!-- Exception 내장객체를 이 페이지에서 사용할 수 있다. -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면(NullPointerExpt)</title>
</head>
<body bgcolor="#ffffff" text="000000">
<!-- ArithmeticException에러가 발생했을 때 클라이언트가 다시 서버로 요청할 수 있는 직관적이 화면 구성을 만들어주는 곳 -->

	<table width="100%" border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td  align="center" bgcolor="orange"><b>NullPointerExpt 에러 화면입니다.</b></td>
		</tr>
	</table>
	
	<table width="100%" border="1" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td align="center">
			<br><br><br><br><br>
				Message : ${ exception.message }	<!-- 내부적으로 setMessage getMessage 호출해줌, CommonExceptionHandler에 일부 구성-->
			<br><br><br><br><br>
			</td>
		</tr>
	</table>

</body>
</html>