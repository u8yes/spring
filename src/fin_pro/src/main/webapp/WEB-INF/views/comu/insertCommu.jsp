<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커뮤니티등록</title>
<link rel="stylesheet" href="/css/basic.css">
<%@ include file="/resources/css/basic.css" %>
<style>
h1 {
	font-family: 'MICEGothic Bold';
	font-size: 20px;
}
.commuarea{
  width : 100%;
  height : 20px;
  border : 2px solid #88b04b;
  border-radius: 2px;
}
textarea{
  width : 100%;
  border : 2px solid #88b04b;
  height : 500px;
  border-radius: 2px;
}

.buttonzone{
	text-align: center;
}

button{
	font-family: 'MICEGothic Bold';
	margin : 20px;
}

.searchbutton{
	padding: 12px 40px; 
	font-size: 22px;
	border : 1px solid #858C74;
	border-radius: 5px;
	background-color: #88b04b;
	font-family: 'MICEGothic Bold';
	color : #FFF;
}


</style>
</head>
<body>

<%
	Object um_nic = session.getAttribute("um_ars");
	String commuwriter = (String)um_nic;
%>

<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>

<div class ="outline">

<br>
<br>

	<div class="c_page">
		<div class="title">반려 유치원 글쓰기</div>
	</div>
	<hr>

	
	<br>
 
      <form action="insertCommu.zo" method="post">
         <h1 class = "commutitle">제목</h1>
			<input type="text" name="cm_title" class="commuarea"/>
			<div class="container" style="height:10px;"></div>
		<h1 class = "commutitle">작성자</h1>
			<input type="text" name="cm_writer" class="commuarea" value="<%=session.getAttribute("userName")%>" readonly/>
			<div class="container" style="height:10px;"></div>
		<h1 class = "commutitle">내용</h1>
			<textarea name="cm_desc" cols="40" rows="10"></textarea>
         
         
         
         <!-- <table>
            <tr>
               <td class="commutitle">제목</td>
               <td><input type="text" name="cm_title" /></td>
            </tr>
            <tr>
               <td class="tabletitle">작성자번호</td>
               <td><input type="text" name="um_no" size="10" /></td>
            </tr>
            <tr>
               <td class="tabletitle">내용</td>
               <td><textarea name="cm_desc" cols="40" rows="10"></textarea></td>
            </tr>
            <tr>
               <td bgcolor="orange">파일첨부</td>
               <td><input type="file" name="uploadFile"></td>
            </tr>
            <tr>
               <td colspan="2" align="center">
                  <input type="submit" value=" 새글 등록 " />
               </td>
            </tr>
         </table>
      
      <hr>
      
      <a href="getCommuList.zo">커뮤니티 글 목록 가기</a> -->
   
   <br>
   <br>
   <div class="buttonzone">
   <button onclick="location.href='getCommuList.zo'" class="backbutton">돌아가기</button>
   <button type="submit" value="등록" class="searchbutton">새글 등록</button>
   </div>
   </form>
   
   
   
   
<br>
<br>
<br>
<br>
<br>
<br>
   
   </div>
   
  
   
<footer>
<jsp:include page="../footer.jsp"></jsp:include></footer>
   
   
</body>
</html>