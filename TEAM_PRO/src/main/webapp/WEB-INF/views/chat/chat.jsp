<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
}

.chat {
	display: flex;
	flex-direction: row;
	font-size: 30px;
	height: 540px;
}

#chatbody {
	background-color: #DAD9FF;
	padding: 10px;
	flex: 90%;
}

#chatbox {
	background-color: #AF9DE0;
	padding: 10px;
	flex: 10%;
}

@media {
	.chat {
		flex-direction: column;
	}
	textarea {
		resize: none;
		border-radius: 5px;
		border: 0px;
		outline: 0px;
	}
	button {
		background-color: #5A1D8D;
		color: white;
		vertical-align: top;
		border-radius: 5px;
	}
	button:hover {
		background-color: #AF9DE0;
	}
	body::-webkit-scrollbar {
		width: 6px;
	}
	body::-webkit-scrollbar-track {
		background-color: transparent;
	}
	body::-webkit-scrollbar-thumb {
		border-radius: 5px;
		background-color: gray;
	}
	body::-webkit-scrollbar-button {
		width: 0;
		height: 0;
	}
	textarea::-webkit-scrollbar {
		width: 6px;
	}
	textarea::-webkit-scrollbar-track {
		background-color: transparent;
	}
	textarea::-webkit-scrollbar-thumb {
		border-radius: 5px;
		background-color: gray;
	}
	textarea::-webkit-scrollbar-button {
		width: 0;
		height: 0;
	}
	#chatappend>div>h3 {
		border: 0px;
		outline: 0px;
		border-radius: 5px;
		font-size: 18px;
		display: inline-block;
		background-color: white;
		word-break: break-all;
	}
	#chatappend>div {
		width: 75%;
		float: left;
	}
}
</style>

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
<script type="text/javascript" src="./resources/js/chat/chat.js"></script>
<!-- <link href="./resources/css/chat/chat.css" rel="stylesheet"> -->
</head>
<body>
	<script type="text/javascript">
		window.onload = function() {
			connect();
		}
	</script>
	<!-- <div>
<button type="button" onclick="location.href='list.do' ">사람 목록</button>
</div> -->
	<div class="chat">
		<div id="chatbody">
			<div id="chatappend">
			</div>
		</div>
		<div id="chatbox">
			<textarea placeholder="메세지를 입력해주세요." autofocus="autofocus" rows="3"
				cols="37" id="message"></textarea>
			<button id="sendBtn" onkeyup="enterkey()">전송</button>
		</div>
	</div>

	<script>
		function adjustHeight() {
			var textEle = $('textarea');
			textEle[0].style.height = 'auto';
			var textEleHeight = textEle.prop('scrollHeight');
			textEle.css('height', textEleHeight);
		};
		var textEle = $('textarea');
		textEle.on('keyup', function() {
			adjustHeight();
		});
		function enterkey() {
			if (window.event.keyCode == 13) {
				sendMessage();
			}
		}
	</script>




	<!-- 	<input type="text" id="message" /> -->
	<!-- 	<input type="button" id="sendBtn" value="submit"/> -->
	<!-- 	<div id="messageArea"></div> -->
	<!-- 	<input type="button" id="connect" onclick="connect()" value="입장"/> -->
	<!-- 	<input type="button" id="disconnect" onclick="onClose()" value="나가기"/> -->
	<!-- 	<button id="" onclick="chat()">채팅</button> -->


</body>

<script type="text/javascript">
	$("#sendBtn").click(function() {
		sendMessage();
		$('#message').val('')
	});

	/* "http://localhost:8080/echo/" */
	function connect() {
		sock = new SockJS("http://localhost:8088/echo/");
		console.log(sock);
		sock.onmessage = onMessage;
		sock.onclose = onClose;
		sock.onopen = onOpen;
	}

	function onOpen() {

	}

	// 메시지 전송
	function sendMessage() {
		sock.send(user_nick + " || " + today.getHours() + ":"
				+ today.getMinutes() + " || " + $("#message").val());
	}
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = msg.data;
		
		if (data.indexOf("||") == -1) {
			$("#chatappend").append("<div><h3>" + data + "</h3></div>");
		}
		else{
// 			#chatappend>div {
// 				width: 75%;
// 				float: left;
// 			}
		var arr=[];
		arr = data.split("||");
		if(user_nick === arr[0]){
			//오른쪽 영역에 어팬드
			$("#chatappend").append("<div><h3>" + arr[0] + "</h3><h3>" + arr[1] + "</h3></div>");
			$("#chatappend").append("<div><h3>" + arr[2] + "</h3></div>");
		}
		console.log(arr);
		$("#chatappend").style.float = "left";
		$("#chatappend").append("<div><h3>" + arr[0] + "</h3><h3>" + arr[1] + "</h3></div>");
		$("#chatappend").append("<div><h3>" + arr[2] + "</h3></div>");
		}
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		alert("연결을 끊었습니다.");
		sock.close();

	}
</script>