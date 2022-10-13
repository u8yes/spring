<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커뮤니티 글 상세</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet" href="/css/basic.css">
<%@ include file="/resources/css/basic.css" %>
<style>


.img-back{
	width : 40px;
	height: 40px;
	float: left;
	margin-right: 10px;
}

.Commudetailtitle{
	font-family: 'KoPubWorldDotum';
	font-size : 23px;
	border: 0px;
	font-weight: bold;
	padding-top : 5px;
	padding-bottom : 10px;
}

a{
	font-family: 'KoPubWorldDotum';
	font-size: 13px;
	padding-right: 30px;
}

.Commudetailproperty{
	padding-bottom: 10px;
}

textarea{
	width: 100%;
	border: 0px;
	font-family: 'KoPubWorldDotum';
}

.updatebu{
	padding: 12px 20px; 
	font-size: 17px;
	border : 1px solid #749641;
	border-radius: 5px;
	background-color: #88b04b;
	color : #FFFFFF;
	font-family: 'MICEGothic Bold';
	margin-left: 50px;
}

.butarea{
	float: right;
}

.replyinsertbox{
	text-align: center;
}

.replybox{
	margin-left:20px;
	margin-right:10px;
	width: 70%;
	height: 70px;
}

.replytable td{
 	padding-top:10px;
 	padding-bottom: 10px;
 	padding-left: 50px;
 	
}

.replytable .replydate{
	text-align: right;
	padding-right: 80px;
}


</style>

<script>

$.ajax({
    url:'./getRpList.rp', //Controller에서 요청 받을 주소
    type:'post', //POST 방식으로 전달
    data:{rpList:rpList}, //지정이름:받을이름 key value
    success:function(list){ //컨트롤러에서 넘어온 cnt값을 받는다 
        if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
            $('.email_ok').css("display","inline-block"); 
            $('.email_already').css("display", "none");
        } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
            $('.email_already').css("display","inline-block");
            $('.email_ok').css("display", "none");
         
            $('#um_email').val(''); 
            $('#email').val('0'); 
        }
    },
    error:function(){
        alert("에러입니다");
    }
}); 
};




</script>


</head>
<body>

<header>
<%@ include file="./../header.jsp" %>
</header>
   
   <!-- 본문 -->
   
<div class ="outline">

<br>
<br>
   
    <div class="c_page">
    	<a href="getCommuList.zo">
      	<img class="img-back" src="img/back.png"/>
  		</a>
		<div class="title">반려 유치원</div>
	</div>
	<hr>
	<br>
	
      <form action="updateCommu.zo" method="post">
         <input name="cm_bdno" type="hidden" value="${commu.cm_bdno}" />
         
         <input name="cm_title" type="text" value="${commu.cm_title}" class = "Commudetailtitle"/>
         
         <div class = "Commudetailproperty">
         <a>${commu.cm_writer}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>｜</a>
         <a>${commu.cm_regdate}</a> &nbsp;&nbsp;&nbsp;&nbsp; <a>｜</a>
         <a>조회수 : ${commu.cm_cnt}</a>
         </div>
         
         <hr>
         
         <br>
         
         <textarea name="cm_desc">${commu.cm_desc}</textarea>
         
     	<hr>
          <br>
           
         
         <!-- 수정버튼 넣고 페이지 이동 > 수정 이거 근데 수정페이지 같은데... -->
         <div class = "butarea">
         <input type="submit" value="글  수정" class="updatebu"/>
         <button type="button" class="updatebu" onclick="location.href='getCommuList.zo'">목록으로</button>
      	</div>
      
      </form>   
         
         <br>
           <br>
            <br>
          
       <!-- 댓글구역 -->  
         <h1>댓글</h1>  
      <hr>
      <div class = "replyinsertbox">
      <form action="insertRp.rp" method="post">
      	 <input name="cm_bdno" type="hidden" value="${commu.cm_bdno}" />
         <input type="text" name="r_content" class="replybox"/>
         <input name="r_writer" type="hidden" value="지비" readonly/>
         <input type="submit" value=" 댓글 등록 " class="updatebu" />
     </form>
      </div>   
      <hr>
      
	<table class="replytable">
      <c:forEach items="${rpList}" var="rp">
      <tr>
      		<td>${rp.r_writer}</td>
      		<td>${rp.r_content}</td>
      		<td class="replydate">${rp.r_date}</td>
     </tr>
      </c:forEach>
   </table>
      
   
   
<br>
<br>
<br>
<br>
<br>
<br>
   
   </div>   
   
   
<footer>
<%@ include file="./../footer.jsp" %>
</footer>
   
</body>
</html>