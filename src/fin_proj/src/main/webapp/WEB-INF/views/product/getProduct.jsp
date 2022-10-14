<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세</title>
<style>
body {
	font-family: 'KoPubWorldDotum';
	width: 100%;
	height: 100%;
}

@font-face {
	font-family: 'twayair';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'MICEGothic Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

@font-face {
	font-family: 'KoPubWorldDotum';
	font-weight: 300;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot');
	src:
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot?#iefix')
		format('embedded-opentype'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff2')
		format('woff2'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff')
		format('woff'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.ttf')
		format("truetype");
	font-display: swap;
}

.form {
	margin-left: 100px;
	margin-right: 100px;
}

.title {
	font-family: 'MICEGothic Bold';
	font-size: xx-large;
}

.sub_txt {
	float: right;
	font-family: 'KoPubWorldDotum';
}

table {
	border-top: solid 2px #858C74;
	border-bottom: solid 2px #858C74;
	width: 65%;
	border-spacing: 0px;
}

th {
	padding: 20px;
	background-color: #92bd51;
	color: white;
	border-top: solid 1px #858C74;
	border-bottom: solid 1px #858C74;
}

td {
	/* border-top: solid 1px #858C74; */
	padding-left: 10px;
	border-bottom: solid 1px #858C74;
}

.tip_txt {
	font-size: x-small;
}

ul li {
	font-family: 'KoPubWorldDotum';
	list-style: none;
	list-style-type: none;
	display: inline;
	float: left;
}

.checkbutton {
	padding: 2px 8px;
	background-color: #92bd51;
	border-radius: 5px;
	border: 1px solid;
	font-size: smail;
}

.backbutton {
	padding: 12px 40px;
	font-size: 22px;
	border: 1px solid black;
	border-radius: 5px;
	background-color: #FFFFFF;
}

.submitbutton {
	padding: 12px 40px;
	font-size: 22px;
	border: 1px solid black;
	border-radius: 5px;
	background-color: black;
	color: #FFFFFF;
}
</style>
<script>
	function count(type) {
		// 결과를 표시할 element
		const resultElement = document.getElementById('result');

		// 현재 화면에 표시된 값
		let number = resultElement.innerText;

		// 더하기/빼기
		if (type === 'plus') {
			number = parseInt(number) + 1;
		} else if (type === 'minus') {
			number = parseInt(number) - 1;
		}

		// 결과 출력
		resultElement.innerText = number;
	}
</script>
</head>
<body>
	<%@ include file="./../header.jsp"%>

	<center>
		<h1>제품상세페이지</h1>
		<hr>
		<form action="insertProduct.do" method="post" enctype="multipart/form-data">
			<input name="p_pno" type="hidden" value="${product.p_pno}" />
			<table>
				<colgroup>
					<col width="150">
					<col width="*">
					<col width="150">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<td rowspan="10" class="ess"><img
							src="./MemberUpload/${product.p_pimg}" width="350" height="440"></td>

					</tr>


					<tr>
						<td class="ess"><span class="tit">제품명 |
								${product.p_name}</span></td>
						<td align="left"></td>

					</tr>

					<tr>
						<td class="ess"><span class="tit">판매가격 |
								${product.p_disprice}</span></td>
						<td align="left"></td>
					</tr>

					<tr>
						<td class="ess"><span class="tit">상세정보 |
								${product.p_detail}</span></td>
						<td align="left"></td>
					</tr>



					<tr>
						<td class="ess"><span class="tit">등록일시 |
								${product.p_regdate}</span></td>
						<td align="left"></td>
					</tr>



					<tr>

						<td class="ess"><span class="tit">A/S가능여부 |
								${product.p_as}</span></td>
						<td align="left"></td>
					</tr>



					<tr>
						<td class="ess"><span class="tit">반품가능여부 |
								${product.p_ox}</span></td>
						<td align="left"></td>
					</tr>
					
					<tr>
						<td class="ess">
						<ul>
						<li><span class="tit">수량 | </span></li>
						<li><div id='result'>${product.p_count}</div></li></td>
						</ul>
						<td>
						<input type='button' onclick='count("plus")' value='+' />
							<input type='button' onclick='count("minus")' value='-' />
							
							</td>
					</tr>



					<tr>
						<td class="ess"><span class="tit">총가격 |
								${product.p_disprice}</span></td>
						<td align="left"></td>
					</tr>

					<tr>
						<td>
							<button type='button'>
								<a href="getProduct2.do">구매하기</a>
							</button>&nbsp;&nbsp;&nbsp;
							<button type='button'>
								<a href="deleteProductService.do?p_pno=${product.p_pno}">글삭제</a>
							</button>&nbsp;&nbsp;&nbsp;
							<button type='button'>
								<a href="getProductList.do">글목록</a>
							</button>&nbsp;&nbsp;&nbsp;
							<button type='submit' class="button">
								<a href="getShoppingList.doo">장바구니</a>
							</button>&nbsp;&nbsp;&nbsp;


						</td>

					</tr>

				</tbody>
			</table>

		</form>
		<hr>

	</center>
	<%@ include file="./../footer.jsp"%>
</body>
</html>
