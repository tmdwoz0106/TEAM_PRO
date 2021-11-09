<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/user/joinus.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>locode :: 회원가입</title>

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
    <link href="/resources/css/user/joinus.css" rel="stylesheet">


</head>
<body>
	<header>
	 <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
        <div class="container">
          <div class="mainlogo">
          <a href="/main.do"><img src="/resources/img2/mainlogo.png" width="150" height="40" alt="Locode로고 이미지"></a>
        </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      
          <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">로코드</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="#">Locode 소개</a>
                  <a class="dropdown-item" href="#">Locode 이야기</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">강의</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="#">Front-End</a>
                  <a class="dropdown-item" href="#">Back-End</a>
                  <a class="dropdown-item" href="#">Server / DB</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="#">자유게시판</a>
                  <a class="dropdown-item" href="#">Q & A</a>
                  <a class="dropdown-item" href="#">Tip</a>
                  </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">채용정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">연구소</a>
              </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
              <a href="/login.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">로그인</button></a>
              <a href="/userJoin.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">회원가입</button></a>
            </form>
          </div>
        </div>
      </nav>
    </header>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    </header>

    <!--#################        JOINUS FORM         #################-->
        
 <div class="text-left"> 
 <div class="form-signin">
<form id="joinForm">
<h2 class="text-left">회원가입</h2>
<h6 class="mt-1 mb-4 text-left">로코드에서 다양한 가치를 얻으세요!</h6>
<input type="hidden" name="user_no" value="${max }" readonly="readonly" />
<c:if test="${ssID eq null}">
<label for="inputId">아이디
    <input type="text" name="user_id" class="form-control" id="user_ID" placeholder="8~25자 사이로 입력하세요." minlength="8" required maxlength="25" autocomplete="off"  required></label>
</c:if>
<c:if test="${ssID ne null}">
<label for="inputId">아이디
    <input type="text" name="user_id" value="${ssID}" class="form-control" id="user_ID" placeholder="8~25자 사이로 입력하세요." minlength="8" required maxlength="25" autocomplete="off"  required></label>
</c:if>
<label for="inputPassword">패스워드
    <input type="password" name="user_pw" class="form-control" id="user_PW" placeholder="소문자,특수문자 포함(4~14)" minlength="4" required maxlength="14" autocomplete="off"  required></label>    
<label for="inputName">이름
    <input type="text" name="user_name" class="form-control" placeholder="ex) 우디조" required></label>
<label for="inputNick">닉네임
    <input type="text" name="user_nick" class="form-control" placeholder="ex) 로코드" required></label>
<label for="inputBirth">생년월일
    <input type="text" name="user_birth" id="user_BIR" class="form-control" placeholder="ex) 950101" required></label>
<label for="inputPhone">전화번호
    <input type="text" name="user_phone" id="user_PHO" class="form-control" placeholder="ex) 01012341234" required></label>    
<!-- <table> -->
<!-- 	<tr> -->
<!-- 		<td>아이디</td> -->
<!-- 		<td>비밀번호</td> -->
<!-- 		<td>이름</td> -->
<!-- 		<td>닉네임</td> -->
<!-- 		<td>생년월일</td> -->
<!-- 		<td>핸드폰번호</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	<c:if test="${ssID ne null}"> --%>
<%-- 		<td><input type="text" name="user_id" value="${ssID}"/></td> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${ssID eq null}"> --%>
<!-- 		<td><input type="text" name="user_id" /></td> -->
<%-- 	</c:if> --%>
<!-- 		<td><input type="text" name="user_pw" /></td> -->
<!-- 		<td><input type="text" name="user_name" /></td> -->
<!-- 		<td><input type="text" name="user_nick" /></td> -->
<!-- 		<td><input type="text" name="user_birth" /></td> -->
<!-- 		<td><input type="text" name="user_phone" /></td> -->
<!-- 	</tr> -->
<!-- </table> -->
</form>

<button class="btn btn-lg btn-secondary btn-block" type="button" onclick="join()">가입하기</button>
<div class="checkbox mb-3">
    <h6 class="mt-3 mb-3 text-secondary">가입 시, 로코드의 이용약관, 개인정보취급방침에 동의합니다.</h6>
  <label>
    <input type="checkbox" value="remember-me"> 로코드의 다양한 소식 받아보기
  </label>
</div>
<div class="mt-2 mb-3 text-center">
<a class="text-muted" href="">비밀번호 찾기</a>  | 
<a class="text-muted" href="">회원가입</a>
</div>
<p class="mt-3 mb-3 text-muted">---------------- 간편 로그인 ----------------</p>
<div class="mt-3 mb-4 text-center">
    <a href="" target=""><img class="logo1" src="/resources/img2/ka.png" alt="kakao" width="35" height="35"></a>
    <a href="" target=""><img class="logo2" src="/resources/img2/goo.png" alt="google" width="35" height="35"></a>
    <a href="" target=""><img class="logo3" src="/resources/img2/na.png" alt="naver" width="35" height="35"></a>
</div>
</div>
</div>
          <!--#################        FOOTER         #################-->

          <footer class="container py-5 bg-light">
			<%@ include file="../foot/footer.jsp" %>
          </footer>
</body>
</html>