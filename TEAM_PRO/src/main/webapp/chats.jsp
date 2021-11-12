<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>웹소켓 세션확인</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/ercg/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>

<style type="text/css">
#messagePop {
	width: 437px;
	height: 256px;
	border: solid 1px;
	background-color: lightgrey;
}

#msg {
	width: 200px;
	height: 30px;
}

.well {
	margin-left: 5px;
    margin-top: 10px;
}

#receiveId {
	height: 30px;
	width: 90px;
}

.pop {
	width: 400px;
	height: 180px;
	border: 1px solid gray;
	position: relative;
}

#popTitle {
	height: 50px;
	background-color: #4D85C5;
}

#popTitle h3 {
	margin: 0;
	padding-top: 13px;
	margin-left: 10px;
	color: white;
}

#popCont {
	margin: 17px;
    border: 1px solid white;
    padding: 1em;
    
}

#popCont .pContent {
    margin-bottom: 1em;
    padding: 0;
}

.popClose {
	width: 1em;
	height: 1em;
	right: 0;
	top: 0;
	position: absolute;
	cursor: pointer;
	margin-right: 0.1em;
	margin-top: 0.1em;
	border: 1px solid white;
}
</style>
<script language="javascript">

var socket = null;
connect();

function connect() {
	var ws = new WebSocket("ws://localhost:8088/echo.do");
	socket = ws;
	//이벤트 헨들러
	ws.onopen = function() {
		console.log('Info: connection opened.');
	};
	
	//소켓에 메시지를 보냈을 때(sess.sendMessage) 여기서 받아짐 
	ws.onmessage = function (event) {
		var sm = event.data;
		var sl = sm.split(',');
		$("#writer").text("보내는 이 : " + sl[0]);
		$("#receiver").text("받는 이 : " + sl[1]);
		$("#content").text("내용: " + sl[2]);
		
		console.log("ReceiveMessage:" + event.data+'\n');
	};
	
	ws.onclose = function (event) { 
		console.log('Info: connection closed'); 
		//setTimeout( function() {connect(); }, 1000); // retry connection!!
	};
	
	ws.onerror = function (err) { console.log('Error:', err); };
}

$(document).ready(function() {
	$('#btnSend').on('click', function(evt) {
		let receiveId = $('#receiveId').val();
		let msg = $('#msg').val();
		evt.preventDefault();
		if (socket.readyState !== 1 ) return;
		socket.send(gUserId + "," + receiveId + "," + msg);
	});
	
	$('#wsClose').on('click', function(e) {
		socket.onclose();
		
	});
});

</script>
</head>
<body>
	<div id="messagePop">
		<div class="well">
		<span class="popClose"><p>x</p></span>
			<input type="text" id="receiveId" value="" class="form-control" /> <input
				type="text" id="msg" value="" class="form-control" />
			<button class="btn btn-primary" id="btnSend">Send Message</button>
		</div>
		
		<div id="popCont">
			<p id="writer" class="pContent"></p>
			<p id="receiver" class="pContent"></p>
			<p id="content" class="pContent"></p>
		</div>
	</div>
</body>
</html>