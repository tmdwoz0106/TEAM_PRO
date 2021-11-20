<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>locode :: 고객센터</title>

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
    <link href="./resources/css/main/gogak.css" rel="stylesheet">


  </head>
  <body>

    <!-- #################    Header    ################# -->

    <header>
     <%@ include file="../haed/header.jsp" %>
    </header>

    <!--#################        BOARD FORM         #################-->

    <div class="mt-4 mb-4 container"> 
        <div class="board-title">
            <h2>이야기를 나눠요</h2>
            <h4>62만명의 커뮤니티!! 함께 토론해봐요.</h4>
        </div>

        <div class="container">
            <div class="mt-3 text-center">
                    <a href="/qna.do"><button type="button" class="btn btn-lg btn-secondary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-patch-question" viewBox="0 0 16 16">
                            <path d="M8.05 9.6c.336 0 .504-.24.554-.627.04-.534.198-.815.847-1.26.673-.475 1.049-1.09 1.049-1.986 0-1.325-.92-2.227-2.262-2.227-1.02 0-1.792.492-2.1 1.29A1.71 1.71 0 0 0 6 5.48c0 .393.203.64.545.64.272 0 .455-.147.564-.51.158-.592.525-.915 1.074-.915.61 0 1.03.446 1.03 1.084 0 .563-.208.885-.822 1.325-.619.433-.926.914-.926 1.64v.111c0 .428.208.745.585.745z"/>
                            <path d="m10.273 2.513-.921-.944.715-.698.622.637.89-.011a2.89 2.89 0 0 1 2.924 2.924l-.01.89.636.622a2.89 2.89 0 0 1 0 4.134l-.637.622.011.89a2.89 2.89 0 0 1-2.924 2.924l-.89-.01-.622.636a2.89 2.89 0 0 1-4.134 0l-.622-.637-.89.011a2.89 2.89 0 0 1-2.924-2.924l.01-.89-.636-.622a2.89 2.89 0 0 1 0-4.134l.637-.622-.011-.89a2.89 2.89 0 0 1 2.924-2.924l.89.01.622-.636a2.89 2.89 0 0 1 4.134 0l-.715.698a1.89 1.89 0 0 0-2.704 0l-.92.944-1.32-.016a1.89 1.89 0 0 0-1.911 1.912l.016 1.318-.944.921a1.89 1.89 0 0 0 0 2.704l.944.92-.016 1.32a1.89 1.89 0 0 0 1.912 1.911l1.318-.016.921.944a1.89 1.89 0 0 0 2.704 0l.92-.944 1.32.016a1.89 1.89 0 0 0 1.911-1.912l-.016-1.318.944-.921a1.89 1.89 0 0 0 0-2.704l-.944-.92.016-1.32a1.89 1.89 0 0 0-1.912-1.911l-1.318.016z"/>
                            <path d="M7.001 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0z"/>
                          </svg>
                        자주 묻는 질문</button></a>
                    <a href="/eyong.do"><button type="button" class="btn btn-lg btn-outline-secondary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-text" viewBox="0 0 16 16">
                            <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
                            <path d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z"/>
                          </svg>
                        로코드 이용약관</button></a>
                    <a href="/inform.do"><button type="button" class="btn btn-lg btn-outline-secondary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-check" viewBox="0 0 16 16">
                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                            <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                          </svg>
                        개인정보 취급방침</button></a>
            </div>
        </div>
    
    <p class="mt-3 text-center"><b>궁금한 점이 있으신가요?</b> <br/><b>먼저 아래의 자주 묻는 질문 FAQ 리스트를 확인 해주세요!</b></p>

    <div class="accordion" id="accordionExample">
        <div class="card">
          <div class="card-header" id="headingOne">
            <h2 class="mb-0">
              <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                [강의] 동시 접속이 가능한가요?
              </button>
            </h2>
          </div>
      
          <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
              <strong>동시 접속 가능합니다.</strong>
              <br>
              저희 로코드에서 듣는 강의들은 Youtube와 연동되어 사이트를 이동하여 직접 학습할 수 있기 때문에 문제가 없습니다.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingTwo">
            <h2 class="mb-0">
              <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                [강의] 한 계정에 기기 등록은 몇 대까지 가능한가요?
              </button>
            </h2>
          </div>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body">
                <strong>현재는 기기 등록 기능을 지원하지 않습니다.</strong>
                <br>
                Youtube를 통한 강의 수강이기 때문에 자체적으로 기기 등록이 필요하지않고, Yotube를 통해 수강이 얼마든지 가능하십니다.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingThree">
            <h2 class="mb-0">
              <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                [강의] 수강평은 어디서 작성할 수 있나요?
              </button>
            </h2>
          </div>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
            <div class="card-body">
                <strong>Youtube 내에서 가능하십니다.</strong>
                <br>
                로코드 내 자체 강의는 제작 계획이 없어 별도의 수강평 작성없이 Youtube 에서 평을 남기실 수 있습니다.
            </div>
          </div>
        </div>

        <div class="card">
            <div class="card-header" id="headingFour">
              <h2 class="mb-0">
                <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                  [계정] 계정 정보를 변경하고 싶어요.
                </button>
              </h2>
            </div>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
              <div class="card-body">
                <strong>현재는 닉네임과 비밀번호 정보 변경이 가능합니다.</strong>
              <br>
              '내 정보'에서 닉네임과 비밀번호 변경이 가능합니다.
              </div>
            </div>
          </div>


          <div class="card">
            <div class="card-header" id="headingFive">
              <h2 class="mb-0">
                <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                  [계정] 비밀번호를 찾고 싶어요.
                </button>
              </h2>
            </div>
        
            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
              <div class="card-body">
                <strong>현재까지는 비밀번호 찾기 기능을 지원하지않고 있습니다.</strong>
                <br>
                로코드 계정으로 문의주시면 실명확인을 거쳐 이전 계정 삭제가 가능합니다.
              </div>
            </div>
          </div>

          <div class="card">
            <div class="card-header" id="headingSix">
              <h2 class="mb-0">
                <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                  [서비스오류] 로코드 이용 중 오류가 발생해요.
                </button>
              </h2>
            </div>
        
            <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
              <div class="card-body">
                 <strong>로코드는 구글 크롬 브라우저에 최적화되어 있어요.</strong>
                 <br>
                 강의 시청, 게시판 등 서비스 이용 중 오류가 발생할 경우 크롬 브라우저에서 다시 진행해 주세요.
                 <br>
                 <br>
                 ※ 로코드는 Internet Explorer, Edge 등 크롬 외 브라우저는 지원하지 않아요.
                 <br>
              </div>
            </div>
          </div>

          <div class="card">
            <div class="card-header" id="headingSeven">
              <h2 class="mb-0">
                <button class="btn btn-light btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                  [탈퇴] 로코드를 탈퇴하고 싶어요.
                </button>
              </h2>
            </div>
        
            <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
              <div class="card-body">
                <strong>탈퇴는 내 정보란에서 가능하십니다.</strong>
                <br>
                <br>
                ※ 탈퇴할 경우 해당 계정의 모든 데이터가 삭제되며 복구가 불가능하니 신중히 결정하시는 것을 권장 드려요.
              </div>
            </div>
          </div>


      </div>
      </div>

          <!--#################        FOOTER         #################-->

        <footer>
         <%@ include file="../foot/footer.jsp" %>
        </footer>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        
</body>
</html>