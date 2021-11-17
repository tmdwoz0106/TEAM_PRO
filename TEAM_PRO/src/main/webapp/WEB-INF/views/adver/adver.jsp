<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="./resources/js/adver/cookiecheck.js"></script>
<link rel="stylesheet" href="./resources/css/adver/popup.css" 
type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="thumbnail">
		<a href="https://www.ikosmo.co.kr/" target="_blank">
		<img id="thumbnail2"src="./resources/adverimg/kosmoadver.jpg">
		</a>
	</div>
	
	<form class="noshow">
		<div>
		오늘 더 이상 광고 보지 않기
		<input type=checkbox onclick="setPopUpStart(this)">
		</div>
	</form>
</body>
</html>