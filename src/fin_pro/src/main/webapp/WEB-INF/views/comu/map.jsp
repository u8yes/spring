<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지도</title>
<style>
<%@ include file = "/resources/css/basic.css"%>
<%@ include file = "/resources/css/map.css"%>
</style>
</head>
<body>
<head>
<jsp:include page="../header.jsp"></jsp:include>
</head>
<main>
	<div class= "outer">
		<h1 align="center">애완지도</h1>
	<div>
	<div id="map" style="width:1200px;height:600px;position:relative;overflow:hidden;border-radius:10px; margin-left:150px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=34f6d7a830534592dcf03e5a59a2afa6"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5666805, 126.9784147), // 지도의 중심좌표
        level: 6 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

var positions = [
    {
        content: '<div>펫밀리 마트</div>', 
        latlng: new kakao.maps.LatLng(37.569719, 126.984201)
    },
    {
        content: '<div>고양이 놀이터</div>', 
        latlng: new kakao.maps.LatLng(37.561935, 126.985467)
    },
    {
        content: '<div>강아지대학로</div>', 
        latlng: new kakao.maps.LatLng(37.580040, 127.003636)
    },
    {
        content: '<div>꾹꾹이</div>',
        latlng: new kakao.maps.LatLng(37.560724, 126.977186)
    }
];

for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng // 마커의 위치
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}

</script>
	
	</div>
	</div>
</main>
<br><br><br><br><br><br><br><br>
<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>