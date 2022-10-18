<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호변경</title>

<style type="text/css"> 
*{ 
  margin:0px; 
  padding:0px; 
  font-size:14px; 
} 
ul{ 
  list-style:none; 
} 
.main .nav{ 
  width:100px; 
  margin:0px auto; 
  margin-top:3px; 
} 
.main .nav a{ 
  width:100px; 
  height:25px; 
  line-height:25px; 
  text-align:center; 
  text-decoration:none; 
  background-color:green; 
  display:block; 
} 
.main .nav .navcontent{ 
  display:none; 
} 
</style>

  <script  src="resources/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript"> 

 window.onload= function myMenu(status)
{
	var menu = document.getElementById("menuTable");
	
	if(status==1)
	{
		//메뉴 보이기
		//alert("메뉴 보이기");
		menu.style.display = "block";
	}
	else
	{
		
		//메뉴 감추기
		//alert("메뉴 감추기");
		menu.style.display ="none";
	}
}
</script> 


</head>
<body>
<div>
   <h2>메뉴보이기 / 감추기</h2>
   
   <div>
      <form>
         <!-- 클릭 시 메뉴 테이블 보이기 -->
         <input type="button" value="메뉴보이기" onclick="myMenu(1)">

         <!-- 클릭 시 메뉴 테이블 감추기 -->         
         <input type="button" value="메뉴감추기" onclick="myMenu(2)">
         
         <!-- 버틍 위에 마우스 커서를 올려놓으면 메뉴 테이블이 보이고 -->
         <!-- 다시 버튼 위에 머물던 마우스 커서가 빠져나가면 메뉴 테이블 숨기기 -->
         <input type="button" value="메뉴보이기/감추기" onmouseover="myMenu(1)" onmouseleave="myMenu(2)">
      </form>
   </div>
   <br><br>
   
   <div id = "menuTable">
      <table>
         <tr>
            <td>Java 기초</td>
         </tr>
         <tr>
            <td>Oracle 중급</td>
         </tr>
         <tr>
            <td>JSP 고급</td>
         </tr>
         <tr>
            <td>Servlet 응용</td>
         </tr>
      </table>
   </div>
</div>
</body>



</body>
</html>