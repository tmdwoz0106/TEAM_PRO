<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/webhelper/iframe.css" type="text/css">
<link rel="stylesheet" href="/resources/css/webhelper/webhelper.css" type="text/css">
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
			<div id="layoutin2">
				<div id="guidetext">
					<div>
						<h3>
						안녕하세요!! locode입니다.<br>
						방문해주셔서 감사합니다 :)<br>
						무엇을 도와드릴까요?<br>
						밑에 원하시는 해당 버튼을<br>
						눌러주세요.
						</h3>
					</div>
				</div>
			</div>
			<div class="btn">
				<button onclick="location.href='/faq.do'">자주 묻는 질문</button>
				<button onclick="location.href='/booksearch.do'">책 검색</button>
			</div>
		</div>
	</div>
</body>
</html>