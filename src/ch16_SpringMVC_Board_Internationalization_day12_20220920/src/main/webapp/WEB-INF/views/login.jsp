<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="message.user.login.title"/></title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	
	
	
	<center>
   <h1 align="center"><spring:message code="message.user.login.loginBtn"/></h1>
   <a href="login.me?lang=en" class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">
   		<spring:message code="message.user.login.language.en"/>
   </a>&nbsp;&nbsp;
   <a href="login.me?lang=ko" class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">
   		<spring:message code="message.user.login.language.ko"/>
   </a>
   </center>
   <hr>
   <form action="login.me" method="post"><!-- ./는 현재 내 위치 ../ 내 위치에서 한단계 위 위치 -->
      <table border="1" cellpadding="0" cellspacing="0" align="center">
         <tr>
            <td><spring:message code="message.user.login.id"/></td>
            <td><input type="text" name="id" value="${usr.id}"/></td>
         </tr>
         <tr>
            <td><spring:message code="message.user.login.password"/></td>
            <td><input type="password" name="password" value="${usr.password }"/></td>
         </tr>
         <tr>
            <td colspan="2" align="center"><input type="submit" value="<spring:message code="message.user.login.loginBtn"/>"/></td>
         </tr>
      </table>
   </form>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</body>
</html>