<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>

<style type="text/css">
	table{
		margin-left: 70px;
	}
	.totalList{
		margin-left: 200px;
	}
</style>

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
			
			output = '주문상태 : '+strPo_status+'\n';
			
			alert(strPo_status);
			
		};
	};
	
	
</script>

</head>
<body>
<!-- CSS only -->


<%@ include file = "./../header.jsp" %>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>

<br><br><br>

	<div class="totalList" bgcolor="gray" align="" style="background-color: gray; padding: 5px;">전체목록 | 전체주문내역 5건</div>
	<center>
	
	
		
		<!-- select 검색 시작 -->
		<div>
		<form action="getBuyList.po" method="post">
		
			<table border="0" cellpadding="5" cellspacing="0" width="1200" bgcolor="">
				<tr>
					
					<td align="left">
						<select name="searchCondition">
							<!-- conditionMap데이터를 option 변수에 저장 -->
							<c:forEach items="${conditionMap}" var="searching">	
								<option value="${searching.value}">${searching.key}</option>
							</c:forEach>
						</select>
						<input type="search" name="searchKeyword">	<!-- text를 search로 바꾼 상태 -->
						<input type="submit" value="검색" style="background-color: #996666;">
					</td>
				</tr>
				</table>
			</form>
		</div>
		<!-- 검색 종료 -->
		<hr>
		<!-- 검색 시작 -->
		<div>
		<form action="getBuyList.po" method="post" id="myForm">
			<table border="1" cellpadding="5" cellspacing="0" width="1200"">
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
					<input type="submit" value="검색하기" style="">
					</td>
				</tr>
				<tr>
					<th>결제수단</th>
					<td>
					<input type="radio" name="" value="" checked>전체       
					<input type="radio" name="" value="1">무통장
					<input type="radio" name="" value="2">가상계좌
					<input type="radio" name="" value="3">계좌이체
					<input type="radio" name="" value="4">휴대폰
					<input type="radio" name="" value="5">신용카드
					<input type="radio" name="" value="6">PG간편결제
					<input type="radio" name="" value="7">KAKAOPAY
					<input type="submit" value="검색하기" style="">
					</td>
				</tr>
				<tr>
					<th>기타선택</th>
					<td>
					<input type="radio" name="" value="" checked>전체       
					<input type="radio" name="" value="1">기타선택
					<input type="radio" name="" value="2">미수금
					<input type="radio" name="" value="3">반품,품절
					<input type="radio" name="" value="4">환불
					<input type="radio" name="" value="5">포인트주문
					<input type="radio" name="" value="6">쿠폰
					<input type="submit" value="검색하기" style="">
					</td>
				</tr>
				<tr>
					<th>주문일자</th>
					<td>
					<input type="date" name="" value=""> ~        
					<input type="date" name="" value="">
					<input type="button" name="" value="오늘">       
					<input type="button" name="" value="어제">
					<input type="button" name="" value="이번주">
					<input type="button" name="" value="이번달">
					<input type="button" name="" value="지난주">
					<input type="button" name="" value="지난달">
					<input type="button" name="" value="전체" checked>
					<input type="submit" value="검색하기" style="background-color: #996666;">
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
	
<%@ include file = "./../footer.jsp" %>

</body>
</html>


