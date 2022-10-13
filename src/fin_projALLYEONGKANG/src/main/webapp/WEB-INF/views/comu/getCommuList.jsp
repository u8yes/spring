<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 리스트</title>
<link rel="stylesheet" href="/css/basic.css">
<%@ include file="/resources/css/basic.css" %>

<style>

th{
	padding-top: 10px;
	padding-bottom: 10px;
}

td{
	padding-top:5px;
	padding-bottom: 5px;
}

.writebuttonsecc{
	text-align: right;
	padding-bottom: 10px;
}

.writebutton{
	font-family: 'MICEGothic Bold';
	width : 100px;
	height : 40px;
	padding: 1px 8px; 
	background-color: #92bd51;
	border-radius: 5px;
	border : 2px solid #749641;
	font-size: 18px;
	color : white;
}

.search{
	text-align: center;
}

.search input{
	font-siae:16px;
	width : 325px;
	padding : 9px;
	border: 2px solid #749641;
	outline: none;

}

.search select{
	font-family: 'MICEGothic Bold';
	padding: 8px;
	border : 2px solid #749641;
}

.searchbutton{
	font-family: 'MICEGothic Bold';
	width : 100px;
	height : 40px;
	padding: 1px 8px; 
	background-color: #92bd51;
	border-radius: 5px;
	border : 2px solid #749641;
	font-size: 18px;
	color : white;
}


</style>

</head>
<body>
<header>
<%@ include file="./../header.jsp" %>
</header>

<div class ="outline">

<br>
<br>
		
			<!-- ◆공통페이지 타이틀 -->
			<div class="c_page">
				<div class="title">반려 유치원</div>
			</div>

	<hr>
	
	<br>

	<div class="writebuttonsecc">
	<button class="writebutton" onclick="location.href='insertCommu.zo'">글쓰기</button>
	</div>
	
	
<!-- 목록 출력 -->
<table>
         <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>등록일</th>
            <th>조회수</th>
         </tr>
         <c:forEach items="${commuList}" var="commu"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
            <tr>
               <td align="center">${commu.cm_bdno}</td>
               <td><a href="getCommu.zo?cm_bdno=${commu.cm_bdno}">${commu.cm_title}</a></td>
               <td align="center">${commu.cm_writer}</td>
               <td align="center">${commu.cm_update}</td>
               <td align="center">${commu.cm_cnt}</td>
            </tr>
         </c:forEach>
      </table>
<br>
<br>
<!-- 검색 기능 -->

	<form action="getCommuList.zo" method="post">
		<div class="search">
			<select name="searchCondition" class="">
                     <c:forEach items="${conditionMap}" var="option">
                        <option value="${option.value}">${option.key}</option>
                     </c:forEach>
             </select>
                  <input type="text" name="searchKeyword" placeholder="검색어를 입력하세요.">
                  <button type="submit" value="검색" class="searchbutton">검색</button>
                  <!-- <input type="submit" value="검색" class="searchbutton"> -->
		</div>	
        <%--  <table class="search">
            <tr>
               <td>
                  <select name="searchCondition">
                     <c:forEach items="${conditionMap}" var="option">
                        <option value="${option.value}">${option.key}</option>
                     </c:forEach>
                  </select>
                  <input type="text" name="searchKeyword">
                  <input type="submit" value="검색">
               </td>
            </tr>
         </table> --%>
      </form>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- outline 닫는 태그 -->
</div>

<footer>
<%@ include file="./../footer.jsp" %>
</footer>


</body>
</html>