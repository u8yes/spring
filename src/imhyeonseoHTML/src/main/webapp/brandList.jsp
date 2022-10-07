<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>브랜드 리스트</title>
    <link rel="stylesheet" href="css/sidebar.css">
    <%@include file = "css/basic.css" %>
    <style>
/* 브랜드 박스 관련 CSS */
	.brand{
     	background-color: gray;
        border-radius: 10px;
        width: 200px;
        height: 150px;
        text-align: center;
        display: inline-block;
        margin: 20px;
        scroll-snap-align: center;
        color: black;
        text-decoration: none;
        text-align: center;
		font-size: 24px;
     }
/* 브랜드 박스 배열 관련 */
     .brand_list{
    display: inline-block;
    margin-left: 200px;
	}
		/*마우스커서over 브랜드 부각, 다른브랜드 밀리기   */
	.brand:hover{
  transform: translateY(-.5rem);

	}
	.brand:hover ~ .brand{
  transform: translateX(1rem);
	}
    </style>
  </head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
<main>
<div class ="sidebar">
<div class = "sidebaruser list">
  <h1>브랜드 목록</h1>
     <hr> 
    <a href="#">브랜드 1</a>
    <a href="#">브랜드 2</a>
    <a href="#">브랜드 3</a>
    <a href="#">브랜드 4</a>
    <a href="#">브랜드 5</a>
    <a href="#">브랜드 6</a>
    <a href="#">브랜드 7</a>
    <a href="#">브랜드 8</a>
   </div>
</div>

</main> 
<div class="outline">
	<div class="brand_list">
		<a class="brand" href="#"> 브랜드 1</a>
		<a class="brand" href="#"> 브랜드 2</a>
		<a class="brand" href="#"> 브랜드 3</a>
		<a class="brand" href="#"> 브랜드 4</a>
		<a class="brand" href="#"> 브랜드 5</a>
		<a class="brand" href="#"> 브랜드 6</a>
		<a class="brand" href="#"> 브랜드 7</a>
		<a class="brand" href="#"> 브랜드 8</a>
	</div>
	<div>
	
	
	
	</div>


</div> 
<footer>
<%@ include file = "footer.jsp" %>
</footer>
</body>
</html>