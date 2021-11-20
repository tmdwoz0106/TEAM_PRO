$("#sendBtn").click(function() {
		sendMessage();
		$('#message').val('')
	});

	/* "http://localhost:8080/echo/" */
	function connect() {
		sock = new SockJS("http://localhost:8089/echo/");
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
		var arr=[];
		arr = data.split(" || ");
		var eq = arr[0];
		
		if (data.indexOf("||") == -1) {
			$("#chatappend").append("<div><h3>" + data + "</h3></div>");
			$("#chatappend").append("<div></div>");
		}else if(user_nick == eq){
		console.log("오른쪽");
			//오른쪽 영역에 어팬드
		$("#chatappend").append("<div class='me'><h5 class='me_h5'>" + arr[0] + "</h5> <h5 class='me_h5'>" + arr[1] + "</h5> </div>");
		$("#chatappend").append("<div class='me'><h3 class='me_h3'>" + arr[2] + "</h3></div>");
		$("#chatappend").append("<div></div>");
		}else{
		$("#chatappend").append("<div><h5>" + arr[0] + "</h5> <h5>" + arr[1] + "</h5></div>");
		$("#chatappend").append("<div><h3>" + arr[2] + "</h3></div>");
		$("#chatappend").append("<div></div>");
		}
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		alert("연결을 끊었습니다.");
		sock.close();

	}
	window.onload = function() {
			connect();
		}