<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>

<script>
	window.onload = function(){	
		document.getElementById('myForm').onsubmit=function(){
			var output = '';
			var strPo_status = '';
						
			var po_status = document.getElementsByName('po_status');
						
			for(var i=0; i<po_status.length;i++){
				if(po_status[i].checked == true){
					if(po_status[i].value == ""){
						strPo_status = "";
					}else if{
						strPo_status = "1";
					}else if{
						strPo_status = "2";
					}else if{
						strPo_status = "3";
					}else if{
						strPo_status = "4";
					}else if{
						strPo_status = "5";
					}else if{
						strPo_status = "6";
					}else{
						strPo_status = "7";
					}
				}
			}
			
			output += '주문상태 : '+strPo_status+'\n';
			
			alert(output);
			
		};
	};
	
	
</script>

</head>
<body>
<!-- CSS only -->


<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>



	
	<center>
		
		<!-- select 검색 시작 -->
		<div>
		<form action="getBuyList.po" method="post">
		
			<table border="1" cellpadding="5" cellspacing="0" width="1200" bgcolor="#92bd51;">
				<tr>
					<th align="left">검색어</th>
					<td align="left">
						<select name="searchCondition">
							<!-- conditionMap데이터를 option 변수에 저장 -->
							<c:forEach items="${conditionMap}" var="searching">	
								<option value="${searching.value}">${searching.key}</option>
							</c:forEach>
						</select>
						<input type="search" name="searchKeyword">	<!-- text를 search로 바꾼 상태 -->
						<input type="submit" value="검색">
					</td>
				</tr>
				</table>
			</form>
		</div>
		<!-- 검색 종료 -->
		
		<!-- select 검색 시작 -->
		<div>
		<form action="getBuyList.po" method="post" id="myForm">
			<table border="0" cellpadding="5" cellspacing="0" width="1200" bgcolor="">
				<tr>
					<th>주문상태</th>
					<td>
					<input type="radio" name="po_status" value="" checked>전체
					<input type="radio" name="po_status" value="1">입금 전
					<input type="radio" name="po_status" value="2">입금완료
					<input type="radio" name="po_status" value="3">배송전
					<input type="radio" name="po_status" value="4">배송중
					<input type="radio" name="po_status" value="5">배송완료
					<input type="radio" name="po_status" value="6">거래완료
					<input type="radio" name="po_status" value="7">환불
					<input type="submit" value="검색하기">
					</td>
				</tr>
				</table>
			</form>
		</div>
		<!-- 검색 종료 -->
				
		
		<br><br>
		
		<!-- 목록 출력 -->
		<form action="getBuyList.po" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="1200">
			<tr>
				<th bgcolor="#92bd51;" width="150">주문번호</th>
				<th bgcolor="#92bd51;" width="200">주문상품번호</th>
				<th bgcolor="#92bd51;" width="150">총가격</th>
				<th bgcolor="#92bd51;" width="150">포인트적용</th>
				<th bgcolor="#92bd51;" width="150">쿠폰적용번호</th>
				<th bgcolor="#92bd51;" width="150">배송업체번호</th>
				<th bgcolor="#92bd51;" width="150">배송요청사항</th>
				<th bgcolor="#92bd51;" width="150">결제금액</th>
				<th bgcolor="#92bd51;" width="150">결제수단코드</th>
				<th bgcolor="#92bd51;" width="150">수령자명</th>
				<th bgcolor="#92bd51;" width="150">수령자전화번호</th>
				<th bgcolor="#92bd51;" width="150">수령자 주소</th>
				<th bgcolor="#92bd51;" width="150">주문상태</th>
				<th bgcolor="#92bd51;" width="150">주문일시</th>
				
			</tr>
			<c:forEach items="${buyList}" var="buy">
				<tr>
					<td align="center"><a href="getBuy.po?po_no=${buy.po_no}">${buy.po_no}</a></td>
					<td align="center">${buy.o_odno}</td>
					<td align="center">${buy.po_total}</td>
					<td align="center">${buy.pa_no}</td>
					<td align="center">${buy.cpa_no}</td>
					<td align="center">${buy.d_dno}</td>
					<td align="center">${buy.po_drequest}</td>
					<td align="center">${buy.po_price}</td>
					<td align="center">${buy.po_ptype}</td>
					<td align="center">${buy.po_name}</td>
					<td align="center">${buy.po_number}</td>
					<td align="center">${buy.po_addr}</td>
					<td align="center">
					<c:set var="buy" value="${buy.po_status}" />
					<c:choose>
					    <c:when test="${buy==1}">
					        입금전
					    </c:when>
					    <c:when test="${buy==2}">
					        입금완료
					    </c:when>
					    <c:when test="${buy==3}">
					        배송전
					    </c:when>
					    <c:when test="${buy==4}">
					        배송중
					    </c:when>
					    <c:when test="${buy==5}">
					        배송완료
					    </c:when>
					    <c:when test="${buy==6}">
					        거래완료
					    </c:when>
					    <c:otherwise>
					        환불
					    </c:otherwise>
					</c:choose>
					</td>
					<td align="center">${buy.po_regdate}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertBuy.po">글쓰기</a>
		
	</center>
	<center>
	<img src="https://ycart.kr/data/editor/1701/fe7fbc1213411ac1c9db227ec2ed282c_1485221468_1848.png">
	</center>
<%@ include file = "/sharedFunction/footer.jsp" %>

</body>
</html>


