<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/webhelper/iframe.css" type="text/css">
<link rel="stylesheet" href="./resources/css/webhelper/bookSearch.css" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="header">
		<img id="headerimg" alt="logo"
			src="./resources/webhelperimg/chatbot_logo_bgx_black.png" />
	</header>
	<div class="layout">
		<div id="layoutin">
			<h1>책 검색</h1>
			<input id="bookName" value="" type="text">
			<button id="search">검색</button>
			<hr/>
			<div id="bookbox">
				<div id="booxbox2"></div>
			</div>
		</div>
	</div>
	<script src="./resources/js/webhelper/book.js"></script>
</body>
</html>