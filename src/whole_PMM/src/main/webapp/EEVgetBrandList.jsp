<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BrandList</title>
<style type="text/css">
	/* header */
	header{
		height: 100px;
		background-color: red; 
		
	}
	/* body */
	.container{
	
		height: 800px;
		background-color: gold;
	}
		
	/* sidebar */
	
	.aside1{
		width: 250px;
		height: 800px;
		background-color: blue; 
		float: left;
	}

	.aside2{
	
	}
	
	.aside3{
		list-style: none;
	}
	
	/* content */
	.content{
		background-color: purple;
	}
	
	.content_searching{
		height: 150px;
		background-color: green;
		
	}
	
	.content_rec{
		height: 200px;
		background-color: aqua;
	}
	
	
	.content_rec > div{
		float: left;
		border: 1px solid;
		border-radius: 50px;
	}
	
	.rec_brand1{
				
	}
	
	.rec_brand2{
		
	}
	
	.rec_brand3{
		
	}
	
	.content_entire{
		height: 200px;
		background-color: lime;
	}
	
	.content_entire > div{
		float: left;
		border: 1px solid;
	}
	/* footer */
	
	footer{
		background-color: red;
	
	
	}
</style>

</head>
<body>


<!-- header 시작 -->
<header>
	<div>Header</div>
</header>

<div class="container">
	<div class="aside1">sidebar
		<div class="aside2">
		<ul class="aside3">
			<li>brand1</li>
			<li>brand2</li>
			<li>brand3</li>
			<li>brand4</li>
			<li>brand5</li>
			<li>brand6</li>
			<li>brand7</li>
			<li>brand8</li>
			<li>brand9</li>
			<li>brand10</li>
		</ul>
		</div>
	</div> <!-- sidebar 종료 -->
	
	<div class="content">
		<div class="content_searching">ㄱ ㄴ ㄷ ㄹ ㅁ ㅂ ㅅ ㅇ ㅈ ㅊ ㅋ ㅌ ㅍ ㅎ</div>
		<div class="content_rec">recommendation
			<div class="rec_brand1"><p>rec_brand1</p></div>
			<div class="rec_brand2"><p>rec_brand2</p></div>
			<div class="rec_brand3"><p>rec_brand3</p></div>
		</div>
		<div class="content_entire">
			<div class="entire_brand1"><p>entire brand1</p></div>
			<div class="entire_brand2"><p>entire brand2</p></div>
			<div class="entire_brand3"><p>entire brand3</p></div>
			<div class="entire_brand4"><p>entire brand4</p></div>
			<div class="entire_brand5"><p>entire brand5</p></div>
			<br><br><br>
			<div class="entire_brand6"><p>entire brand6</p></div>
			<div class="entire_brand7"><p>entire brand7</p></div>
			<div class="entire_brand8"><p>entire brand8</p></div>
			<div class="entire_brand9"><p>entire brand9</p></div>
			<div class="entire_brand10"><p>entire brand10</p></div>
		</div>
	</div> <!-- content 종료 -->



</div> <!-- container 종료 -->

<!-- footer 시작 -->

<footer>
<div>footer</div>

</footer>
</body>
</html>