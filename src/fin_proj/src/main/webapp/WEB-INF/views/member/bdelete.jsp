<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


정말 탈퇴하시겠습니까?

<form action="bdelete2.do" method="post" >
<input type="hidden" name ="bm_no" value="${param.bm_no}">
<h1>${param.bm_no}회원님</h1> 
<input type="submit" value="네">
</form>
<a href="javascript:window.history.back();">뒤로가기</a>
</body>
</html>