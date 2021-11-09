<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name ="google-signin-client_id" content="415549652819-r9tvjtsgkljq5v56dslamalkju2tjcoe.apps.googleusercontent.com"></meta>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="/resources/js/kakaoLogin.js"></script>
<script src="/resources/js/googleLogin.js"></script>
<script src="/resources/js/naverLogin.js"></script>
<!-- <script type="text/javascript" src="/resources/js/naverLoginserv.js"></script>  -->
 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/user/login.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>locode :: 로그인</title>
   
    <style>
        .bd-placeholder-img {
          font-size: 1.125rem;
          text-anchor: middle;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
        }
  
        @media (min-width: 768px) {
          .bd-placeholder-img-lg {
            font-size: 3.5rem;
          }
        }
      </style>
  
      
      <!-- Custom styles for this template -->
      <link href="/resources/css/user/login.css" rel="stylesheet">
    </head>
    <body class="text-center">
    <div class="form-signin">  
    <form class="" id="loginForm">
    <img class="mb-3" src="/resources/img2/logo_icon.png" alt="" width="90" height="72">
    <label for="inputEmail" class="sr-only">id</label>
    <input type="text" id="inputEmail" class="form-control" placeholder="id" name="user_id" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="user_pw" required>
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> 아이디 기억하기
      </label>
    </div>
    </form>
    <button class="btn btn-lg btn-secondary btn-block" type="button" onclick="login()">로그인</button>
    <div class="mt-2 mb-3 text-muted">
    <a class="text-muted" href="">비밀번호 찾기</a>  | 
    <a class="text-muted" href="/userJoin.do">회원가입</a>
</div>
    <p class="mt-3 mb-3 text-muted">---------------- 간편 로그인 ----------------</p>
    <div class="social-icons">
        <a href="javascript:kakaoLogin();" target=""><button class="logo1" style="width: 35px; border: 0; outline: 0;"><img  src="/resources/img2/ka.png" alt="kakao" width="35" height="35"></button></a>
		<button class="g-signin2 logo2" data-onsuccess="onSignIn" style="width: 35px; border: 0; outline: 0;"><img  src="/resources/img2/goo.png" alt="google" width="35" height="35"></button>
      	<div id="naver_id_login"><button class="logo3" style="width: 35px; border: 0; outline: 0;"><img style="width: 35; height: 35;" src="/resources/img2/na.png" alt="naver" width="35" height="35"></button></div>
    </div>
</div>
<!-- 	<a href="javascript:다른사용자()">카카오 자동로그인 연결끊기</a> -->
	
<!--    구글 소셜로그인    -->
<!-- 	<div class="g-signin2" data-onsuccess="onSignIn" style="width: 35; height: 35;"></div> -->
<!-- 	<a href="#" onclick="googleSignout2()">구글 로그아웃</a> -->
<!-- </div> -->
<!--  네이버 소셜로그인  -->
<!-- 	<div id="naver_id_login"></div> -->
<!-- 	<a href="javascript:void(0)" onclick="naverLogout(); return false;">네이버로그아웃</a> -->
<!--      <script src="/resources/js/socialLogin/naverLogin.js"></script> -->
    

</head>
</html>