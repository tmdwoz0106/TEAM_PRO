<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!-- 	<script type="text/javascript" src="/resources/js/user/login.js"></script> -->

	</script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	
    <title>locode :: 메인홈페이지</title>

    <!-- Custom styles for this template -->
    <link href="/resources/css/main/main.css" rel="stylesheet">
    <link href="./resources/css/main/main2.css" rel="stylesheet">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="./resources/js/board/logout.js"></script>
	<script>
function chat(){
   window.open("/chat.do","pop","width=370, height=550, history=no, scrollbars=no, menubar=no, directories=no");
}
</script>
	
	<jsp:include page="/resources/public/logo_div.jsp"></jsp:include>
  </head>
  <body>

    <!-- #################    Header    ################# -->

    <header>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
        <div class="container">
          <div class="mainlogo">
          <a href="/"><img src="./resources/img2/mainlogo.png" width="150" height="40" alt="Locode로고 이미지"></a>
        </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      
          <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">로코드</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="/locode.do">Locode 소개</a>
                  <a class="dropdown-item" href="/list.do">Locode 전체글</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">강의</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="/typeList.do?board_type=강의 영상&board_content=Front">Front-End</a>
                  <a class="dropdown-item" href="/typeList.do?board_type=강의 영상&board_content=Back">Back-End</a>
                  <a class="dropdown-item" href="/typeList.do?board_type=강의 영상&board_content=Server">Server / DB</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
                <div class="dropdown-menu" aria-labelledby="dropdown07">
                  <a class="dropdown-item" href="/list.do?board_type=자유게시판">자유게시판</a>
                  <a class="dropdown-item" href="/list.do?board_type=Q&A">Q & A</a>
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
			<c:if test="${user_no == 0 }">
              <a href="/login.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">로그인</button></a>
              <a href="/userJoin.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">회원가입</button></a>
            </c:if> 
            <c:if test="${user_no != 0 and user_no != 1}">
              <button id="" onclick="chat()">채팅</button>
              <button class="btn btn-outline-dark my-2 my-sm-2" type="button" onclick="logout()">로그아웃</button>
              <a href="userDetail.do?user_no=${user_no }"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">내정보</button></a>
            </c:if>
            <c:if test="${user_no == 1}">
              <a href="/chat.do">입장</a>
              <button class="btn btn-outline-dark my-2 my-sm-2" type="button" onclick="logout()">로그아웃</button>
              <a href="userDetail.do?user_no=${user_no }"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">내정보</button></a>
              <a href="/userInfo.do"><button class="btn btn-outline-dark my-2 my-sm-2" type="button">회원 정보</button></a>
            </c:if>
            </form>
          </div>
        </div>
      </nav>
    </header>

      <main role="main">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="/resources/img/123.png" alt="배너"/>
              <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
      
              <div class="container">
                <div class="carousel-caption text-left">
                <h1>Locode 소개 배너</h1>
	                  <p id="ddd">우리는 성장기회의 평등을 추구합니다.</p>
	                  <p><a class="btn btn-lg btn-light"href="/locode.do">Locode는</a></p>
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <img src="/resources/img/123.png" alt="배너" />
              <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
      
              <div class="container">
                <div class="carousel-caption">
                  <h1>11월 추천 강의 배너</h1>
                  <p>11월엔 로코드와 함께! MD 추천 새 강의</p>
                  <p><a class="btn btn-lg btn-light" href="/list.do?board_type=강의 영상">Learn more</a></p>
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <img src="/resources/img/123.png" alt="배너" />
              <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
      
              <div class="container">
                <div class="carousel-caption text-right">
                  <h1>채용공고 정보 배너</h1>
                  <p>함께 성장할 동료를 찾아요! Hello:) we are hiring!</p>
                  <p><a class="btn btn-lg btn-light" href="/list.do?board_type=구인구직">함께 해요</a></p>
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <main role="main">

          

          <div class="container">
            <!-- Example row of columns -->
          

            <div class="row mb-2">
              <div class="col-md-6">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                  <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">버전정보</strong>
                    <h3 class="mb-0">뭐가 바꼇을까?</h3>
                    <div class="mb-1 text-muted">Nov 12</div>
                    <p class="card-text mb-auto">뉴스?</p>
                    <a href="/list.do?board_type=Tip" class="stretched-link">패치정보 보기</a>
                  </div>
                  <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                  <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">Design</strong>
                    <h3 class="mb-0">여기는 뭘할까</h3>
                    <div class="mb-1 text-muted">Nov 11</div>
                    <p class="mb-auto">뭐지?</p>
                    <a href="#" class="stretched-link">연구소 가기</a>
                  </div>
                  <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          
                  </div>
                </div>
              </div>
            </div>
          </div>

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
              <div class="container">
                <h1 class="display-3">Locode와 지식공유!</h1>
                <p>지식을 나눠주세요. 쉽게 물어보고 다양한 답변을 받을 수 있어요.</p>
                <p><a class="btn btn-dark btn-lg" href="/list.do" role="button">지식공유 알아보기 &raquo;</a></p>
              </div>
            </div>

            <div class="container">
            <div class="row">
              <div class="col-md-4">
                <h2>정보1</h2>
                <p>정보1</p>
                <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
              </div>
              <div class="col-md-4">
                <h2>정보2</h2>
                <p>정보2</p>
                <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
              </div>
              <div class="col-md-4">
                <h2>정보3</h2>
                <p>정보3</p>
                <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
              </div>
            </div>
          
              <hr>
          
            </div> <!-- /container -->
          
          </main>
        

          <!--#################        FOOTER         #################-->

          <footer class="container py-5">
            <div class="row">
              <div class="col-12 col-md">
                <img src="/resources/img2/logo_icon.png" width="80" height="60" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mb-2" role="img" viewBox="0 0 24 24" focusable="false"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
                <small class="d-block mb-3 text-muted">(주)로코드 | 대표자: 우디조</small>
                <small class="d-block mb-3 text-muted">주소: 서울시 금천구 가산디지털로</small>
                <small class="d-block mb-3 text-muted">&copy; LOCODE.ALL RIGHTS RESERVED</small>
              </div>
              <div class="col-6 col-md">
                <h5>로코드</h5>
                <ul class="list-unstyled text-small">
                  <li><a class="text-muted" href="#">공지사항</a></li>
                  <li><a class="text-muted" href="/locode.do">로코드 소개</a></li>
                  <li><a class="text-muted" href="#">로코드 연구소</a></li>
                </ul>
              </div>
              <div class="col-6 col-md">
                <h5>채용정보</h5>
                <ul class="list-unstyled text-small">
                  <li><a class="text-muted" href="/typeList.do?board_type=구인구직&board_content=로코드">로코드 채용</a></li>
                  <li><a class="text-muted" href="/typeList.do?board_type=구인구직&board_content=기업">기업 채용</a></li>
                  <li><a class="text-muted" href="/typeList.do?board_type=구인구직&board_content=채용">채용 안내</a></li>
                </ul>
              </div>
              <div class="col-6 col-md">
                <h5>학습하기</h5>
                <ul class="list-unstyled text-small">
                  <li><a class="text-muted" href="/typeList.do?board_type=강의 영상&board_content=Front">Front-End</a></li>
                  <li><a class="text-muted" href="/typeList.do?board_type=강의 영상&board_content=Back">Back-End</a></li>
                  <li><a class="text-muted" href="/typeList.do?board_type=강의 영상&board_content=Server">Server / DB</a></li>
                </ul>
              </div>
              <div class="col-6 col-md">
                <h5>고객센터</h5>
                <ul class="list-unstyled text-small">
                  <li><a class="text-muted" href="#">자주묻는 질문</a></li>
                  <li><a class="text-muted" href="#">이용약관</a></li>
                  <li><a class="text-muted" href="#">개인정보취급방침</a></li>
                </ul>
              </div>
            </div>
          </footer>
        
        
<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>