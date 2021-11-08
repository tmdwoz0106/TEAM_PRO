<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	
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
    <link href="\resources\css\main\main.css" rel="stylesheet">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="/resources/js/board/logout.js"></script>
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
                  <a class="dropdown-item" href="/locode.do">Locode 소개</a>
                  <a class="dropdown-item" href="#">Locode 이야기</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="/list.do?board_type=강의 영상" id="dropdown07" data-toggle="" aria-haspopup="true" aria-expanded="false">강의</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
<!--                   <a class="dropdown-item" href="#">Front-End</a> -->
<!--                   <a class="dropdown-item" href="#">Back-End</a> -->
<!--                   <a class="dropdown-item" href="#">Server / DB</a> -->
                  </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="/list.do?board_type=자유게시판">자유게시판</a>
                  <a class="dropdown-item" href="/list.do?board_type=질문코너">Q & A</a>
                  <a class="dropdown-item" href="/list.do?board_type=Tip">Tip</a>
                  </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/list.do?board_type=구인구직">채용정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">연구소</a>
              </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
			<c:if test="${user_no eq 0}">
              <a href="/login.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">로그인</button></a>
              <a href="/userJoin.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">회원가입</button></a>
            </c:if> 
            <c:if test="${user_no ne 0}">
              <button class="btn btn-outline-dark my-2 my-sm-2" type="button" onclick="logout()">로그아웃</button>
              <a href="/userDetail.do?user_no=${user_no }"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">내정보</button></a>
            </c:if>
            </form>
          </div>
        </div>
      </nav>
    </header>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>