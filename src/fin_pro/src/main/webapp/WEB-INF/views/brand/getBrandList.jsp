<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>브랜드 리스트</title>
    <!-- <link rel="stylesheet" href="css/sidebar.css"> -->
    <%@ include file="/resources/css/basic.css" %>
    <style>
/* 브랜드 박스 관련 CSS */
	.brand{
        border-radius: 10px;
        width: 250px;
        height: 250px;
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
    margin-left: 100px;
	}
		/*마우스커서over 브랜드 부각, 다른브랜드 밀리기   */
	.brand:hover{
  transform: translateY(-.5rem);

	}
	.brand:hover ~ .brand{
  transform: translateX(1rem);
	}
	img{
	display: inline-block;
	width: 200px;
    height: 200px;
	}
	.sidebar{
  margin-top : 170px;
  padding-top : 50px;
  position:absolute;
  top : 0px;
  left : 0px;
  width : 120px;
  height : 80%;
  top : 0;
  left: 0;
  bottom : 0;
  background-color : #88b04b;
  overflow: auto;
}
.sidebar a{
  display : block;
  font-family: 'MICEGothic Bold';
  text-decoration: none;
  color : white;
  font-size : 15px;
  text-align: center;
  padding-top : 15px;
  padding-bottom : 5px;
}

.sidebar a:hover{
	background-color: #749641;
}

.title{
	padding-left: 100px;
}	

hr {
	width: 85%;
}

.brand_box1{
	margin-left : 15px;
	margin-right: 15px;
}

.brand_listarea{
	display: flex;
}

.brand_name{
	font-size : 30px;
	text-align: center;
	font-family: 'twayair';

}

    </style>
  </head>
<body>
<header>
<%-- <%@ include file="../../../header.jsp" %> --%>
<jsp:include page="../header.jsp"></jsp:include>
</header>
<main>
<div class ="sidebar">
    <a href="brand1.bt">슈펫</a>
    <a href="brand2.bt">이누마루</a>
    <a href="brand3.bt">채셔캣</a>
    <a href="brand4.bt">알로하네코</a>
    <a href="brand5.bt">달나라토끼마을</a>
    <a href="brand6.bt">도치나라</a>
   </div>
</main> 


<div class="outline">

<br>
<br>
<div class="b_page">
		<div class="title">브랜드관</div>
	</div>
	<hr>
	<br>
	<br>
	<div class="brand_list">
		<div class="brand_listarea">
		<div class = "brand_box1" style="border: 2px solid #FBF2B0; border-radius: 20px;">
		<a href="brand1.bt"><img class="brand" src="resources/brandlogo/brandlogo1.png" alt="슈펫"></a>
		<h1 class="brand_name"> 슈펫</h1>
		</div>
		<div class = "brand_box1" style="border: 2px solid #C1B8D9; border-radius: 20px;">
		<a href="brand2.bt"><img class="brand" src="resources/brandlogo/brandlogo2.png"></a>
		<h1 class="brand_name"> 이누마루</h1>
		</div>
		<div class = "brand_box1" style="border: 2px solid #B5AC9E; border-radius: 20px;">
		<a href="brand3.bt"><img class="brand" src="resources/brandlogo/brandlogo3.png"></a>
		<h1 class="brand_name"> 체셔캣</h1>
		</div> </div> <br>
		
		<div class="brand_listarea">
		<div class = "brand_box1" style="border: 2px solid #2B3E5E; border-radius: 20px;">
		<a href="brand4.bt"><img class="brand" src="resources/brandlogo/brandlogo4.png" alt="슈펫"></a>
		<h1 class="brand_name"> 알로하네코</h1>
		</div>
		<div class = "brand_box1" style="border: 2px solid #FDCDD2; border-radius: 20px;">
		<a href="brand5.bt"><img class="brand" src="resources/brandlogo/brandlogo5.png"></a>
		<h1 class="brand_name"> 달나라토끼마을</h1>
		</div>
		<div class = "brand_box1" style="border: 2px solid #FDCDD2; border-radius: 20px;">
		<a href="brand6.bt"><img class="brand" src="resources/brandlogo/brandlogo6.png"></a>
		<h1 class="brand_name"> 도치나라</h1>
		</div> </div> <br>
		
		<!-- <ul class="brand_ul">
		<li><a href="brand1.bt"><img class="brand" src="img/brandlogo1.png"></a></li>
		<li><a href="brand2.bt"><img class="brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40uiu186G3wH1OAsQRFLlWoAHOADoULSp_w&usqp=CAU"></a></li>
		<li><a href="brand3.bt"><img class="brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40uiu186G3wH1OAsQRFLlWoAHOADoULSp_w&usqp=CAU"></a></li>
		<li><a href="brand4.bt"><img class="brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40uiu186G3wH1OAsQRFLlWoAHOADoULSp_w&usqp=CAU"></a></li>
		<li><a href="brand5.bt"><img class="brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40uiu186G3wH1OAsQRFLlWoAHOADoULSp_w&usqp=CAU"></a></li>
		<li><a href="brand6.bt"><img class="brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40uiu186G3wH1OAsQRFLlWoAHOADoULSp_w&usqp=CAU"></a></li>
		<li><a href="#"><img class="brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40uiu186G3wH1OAsQRFLlWoAHOADoULSp_w&usqp=CAU"></a></li>
		</ul>	 -->
	</div>
	<div>
	
	
	
	</div>


</div> 
<footer>
<%-- <%@ include file = "../../../footer.jsp" %> --%>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>
</body>
</html>