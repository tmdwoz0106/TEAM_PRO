<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="google-signin-client_id"
	content="415549652819-r9tvjtsgkljq5v56dslamalkju2tjcoe.apps.googleusercontent.com"></meta>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="./resources/js/social/kakaoLogin.js"></script>
<script src="./resources/js/social/googleLogin.js"></script>
<script src="./resources/js/security/rsa.js"></script>
<script src="./resources/js/security/jsbn.js"></script>
<script src="./resources/js/security/prng4.js"></script>
<script src="./resources/js/security/rng.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./resources/js/user/login.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<title>locode :: 로그인</title>
<!-- Custom styles for this template -->
<link href="./resources/css/user/login.css" rel="stylesheet">
<link href="./resources/css/social/social.css" rel="stylesheet">
</head>
<body class="text-center">
	<%
	String a = (String) request.getAttribute("RSAModulus");
	String b = (String) request.getAttribute("RSAExponent");
	%>
	<div class="form-signin">
		<form class="" id="loginForm">
			<input type="hidden" id="encryptedID" name="encryptedID" /> <input
				type="hidden" id="encryptedPWD" name="encryptedPWD" /> <img
				class="mb-3" src="/resources/img2/logo_icon.png" alt="" width="90"
				height="72"> <label for="inputEmail" class="sr-only">id</label>
			<input type="text" id="user_id" class="form-control" placeholder="id"
				name="user_id" value="" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="user_pw" class="form-control"
				placeholder="Password" name="user_pw" value="" required>
			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					아이디 기억하기
				</label>
			</div>
		</form>
		<button class="btn btn-lg btn-secondary btn-block" type="button"
			id="encbtn">로그인</button>
		<div class="mt-2 mb-3 text-muted">
			<a class="text-muted" href="">비밀번호 찾기</a> | <a class="text-muted"
				href="/userJoin.do">회원가입</a>
		</div>
		<p class="mt-3 mb-3 text-muted">---------------- 간편 로그인----------------</p>
		<div id="loginlayout">
			<div>
				<a href="javascript:kakaoLogin();" target="">
				<img id="kakao_icon" src="./resources/img2/ka.png" alt="kakao">
				</a>
			</div>
			<div id="naver_id_login"></div>
			<div id="google_id_login" class="g-signin2" data-onsuccess="onSignIn"
				style="overflow: hidden;width: 40px; height: 40px;display: inline-block;">
			</div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById('encbtn').onclick=function(){
			var Modulus = '<%=a%>';
			var Exponent = '<%=b%>';
			var input = document.getElementsByTagName('input');
			console.log(input);

			var user_id = document.getElementById('user_id').value;
			console.log(user_id);
			var user_pw = document.getElementById('user_pw').value;
			console.log(user_pw);
			var rsa = new RSAKey();

			rsa.setPublic(Modulus, Exponent);

			document.getElementById("encryptedID").value = rsa.encrypt(user_id);
			document.getElementById("encryptedPWD").value = rsa
					.encrypt(user_pw);
			document.getElementById("user_id").value = "";
			document.getElementById("user_pw").value = "";

			// 			document.getElementById("loginForm").submit();

			login();
		};
	</script>
	<script src="./resources/js/social/naverLogin.js"></script>
</body>
</head>
</html>