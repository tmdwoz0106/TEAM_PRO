<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <a href="" target=""><img class="logo1" src="/resources/img2/ka.png" alt="kakao" width="35" height="35"></a>
        <a href="" target=""><img class="logo2" src="/resources/img2/goo.png" alt="google" width="35" height="35"></a>
        <a href="" target=""><img class="logo3" src="/resources/img2/na.png" alt="naver" width="35" height="35"></a>
    </div>
</div>
</body>
</html>