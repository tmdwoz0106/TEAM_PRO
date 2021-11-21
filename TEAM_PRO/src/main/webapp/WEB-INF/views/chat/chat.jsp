<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript">
	var user_nick = '<%=session.getAttribute("user_nick")%>'
	var serverIp='<%=session.getAttribute("serverIp")%>'
	console.log(serverIp);
	console.log(user_nick);
	var today = new Date();
	let sock;
	console.log(sock);
</script>
<script type="text/javascript" src="./resources/js/chat/chating.js"></script>
<script type="text/javascript" src="./resources/js/chat/messagebox.js"></script>
<link href="./resources/css/chat/chat.css" rel="stylesheet">
</head>
<body>
	<div class="chat">
		<div id="chatbody">
			<div id="chatappend">
			</div>
		</div>
		<div id="chatbox">
			<textarea placeholder="메세지를 입력해주세요." autofocus="autofocus" rows="3"cols="37" id="message" onkeyup="enterkey(this)"></textarea><button id="sendBtn">전송</button>
		</div>
	</div>
</body>