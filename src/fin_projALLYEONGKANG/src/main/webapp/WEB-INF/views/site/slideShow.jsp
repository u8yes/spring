<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Swipe CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<!-- CSS 파일 연결 -->
<!-- <script src="css/slideShow.css"></script> -->
<style>
<%@ include file = "/resources/css/slideShow.css" %>
</style>
<title>슬라이드 쇼</title>
</head>
<body>
<!-- Slider main container -->
<div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide"><img src="https://cdn.pixabay.com/photo/2016/05/27/08/51/mobile-phone-1419275__480.jpg"></div>
    <div class="swiper-slide"><img src="https://cdn.pixabay.com/photo/2015/11/10/08/31/banner-1036483__340.jpg"></div>
    <div class="swiper-slide"><img src="https://cdn.pixabay.com/photo/2015/09/17/10/30/banner-943866__340.jpg"></div>
  </div>
  <!-- If we need pagination -->
  <div class="swiper-pagination"></div>

  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- If we need scrollbar -->
  <div class="swiper-scrollbar"></div>
  <script src="/resources/js/slideShow.js"></script>
</div>
</body>
</html>