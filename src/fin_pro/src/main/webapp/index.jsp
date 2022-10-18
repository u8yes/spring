<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 img {display : block ; margin : auto;}
</style>
<script>
setTimeout('move_page()', 2000); //2초후에 move_page함수실행

function move_page(){
location.href = 'toMain.do'
}
</script>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br>
<img align="center" src ="resources/img/logo.png">
<!-- <h1><a href="toMain.do">메인으로가기</a></h1> -->

</body>
</html>