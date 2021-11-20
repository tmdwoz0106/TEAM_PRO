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
                    <a href="/qna.do"><button type="button" class="btn btn-lg btn-outline-secondary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-patch-question" viewBox="0 0 16 16">
                            <path d="M8.05 9.6c.336 0 .504-.24.554-.627.04-.534.198-.815.847-1.26.673-.475 1.049-1.09 1.049-1.986 0-1.325-.92-2.227-2.262-2.227-1.02 0-1.792.492-2.1 1.29A1.71 1.71 0 0 0 6 5.48c0 .393.203.64.545.64.272 0 .455-.147.564-.51.158-.592.525-.915 1.074-.915.61 0 1.03.446 1.03 1.084 0 .563-.208.885-.822 1.325-.619.433-.926.914-.926 1.64v.111c0 .428.208.745.585.745z"/>
                            <path d="m10.273 2.513-.921-.944.715-.698.622.637.89-.011a2.89 2.89 0 0 1 2.924 2.924l-.01.89.636.622a2.89 2.89 0 0 1 0 4.134l-.637.622.011.89a2.89 2.89 0 0 1-2.924 2.924l-.89-.01-.622.636a2.89 2.89 0 0 1-4.134 0l-.622-.637-.89.011a2.89 2.89 0 0 1-2.924-2.924l.01-.89-.636-.622a2.89 2.89 0 0 1 0-4.134l.637-.622-.011-.89a2.89 2.89 0 0 1 2.924-2.924l.89.01.622-.636a2.89 2.89 0 0 1 4.134 0l-.715.698a1.89 1.89 0 0 0-2.704 0l-.92.944-1.32-.016a1.89 1.89 0 0 0-1.911 1.912l.016 1.318-.944.921a1.89 1.89 0 0 0 0 2.704l.944.92-.016 1.32a1.89 1.89 0 0 0 1.912 1.911l1.318-.016.921.944a1.89 1.89 0 0 0 2.704 0l.92-.944 1.32.016a1.89 1.89 0 0 0 1.911-1.912l-.016-1.318.944-.921a1.89 1.89 0 0 0 0-2.704l-.944-.92.016-1.32a1.89 1.89 0 0 0-1.912-1.911l-1.318.016z"/>
                            <path d="M7.001 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0z"/>
                          </svg>
                        자주 묻는 질문</button></a>
                    <a href="/eyong.do"><button type="button" class="btn btn-lg btn-secondary">
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
        
        <div class="content"><div style="box-sizing: inherit; color: #000a12; font-family: 'Noto Sans KR', -apple-system, system-ui, system-ui, 'Apple SD Gothic Neo', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', Helvetica; font-size: 16px; background-color: #ffffff;">
            <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">1장. 약관 및 계약</h4>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제1조. 목적</b></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">이 이용약관(이하 &lsquo;약관&rsquo;)은 로코드(이하 &lsquo;회사&rsquo;)가 제공하는 로코드 및 로코드 관련 제반 서비스(이하 &lsquo;서비스&rsquo;)를 이용고객(이하 &lsquo;회원&rsquo;)이 이용함에 있어 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.</p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제2조. 용어의 정의</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">&ldquo;서비스&rdquo;라 함은 구현되는 단말기와 상관없이 &ldquo;회원&rdquo; 혹은 웹사이트 방문자가 이용할 수 있는 로코드 서비스를 의미합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;이란 &ldquo;회사&rdquo;의 서비스에 접속하여 본 약관에 따라 회사와 이용계약을 체결하고 &ldquo;회사&rdquo;가 제공하는 &ldquo;서비스&rdquo;를 이용하는 고객을 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;이용계약&rdquo;이란 이 약관을 포함하여 서비스 이용과 관련하여 회사와 회원 간에 체결하는 모든 계약을 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;아이디(ID)&rdquo;라 함은 회원의 식별 및 서비스 이용을 위하여 회원의 신청에 따라 회사가 회원 별로 부여하는 고유한 문자와 숫자의 조합을 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;이메일&rdquo;은 회원가입이나 로그인 등에 사용되는 단일한 이메일 주소를 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;비밀번호(Password)&rdquo;란 아이디(ID)로 식별되는 회원의 본인 여부를 검증하기 위하여 회원이 설정하여 회사에 등록한 고유의 문자와 숫자의 조합을 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;유료서비스&rdquo;라 함은 회사가 유료로 제공하는 각종 온라인디지털콘텐츠(동영상 강의 열람, 프리미엄 교육 정보, 기타 유료 콘텐츠를 포함.) 및 제반 서비스를 의미합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;해지&rdquo;라 함은 회사 또는 회원이 이용계약을 해약하는 것을 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강의&rdquo;라 함은 &ldquo;회사&rdquo;가 제공하는 &ldquo;서비스&rdquo;내에 제공하는 공간으로서, 동영상 업로드, 동영상 스트리밍, 관리, 과제 및 퀴즈, 설문 등의 교육 활동 전반과 &ldquo;수강생&rdquo; 관리를 할 수 있는 공간을 말합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;멘토링&rdquo;이라 함은 &ldquo;회사&rdquo;가 제공하는 &ldquo;서비스&rdquo;를 통하여 강사와 회원 간 독립적으로 학습 상담 및 지도가 가능하도록 중개하는 것을 의미합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;라 함은 &ldquo;서비스&rdquo;에 교육용 동영상 강의, 과제, 퀴즈 등을 올리고 강의를 개설하는 회원입니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">"수강생"이란 "서비스"에 접속하여 본 "약관"에 동의함으로써 "회사"와 이용계약을 체결하고 "회사"가 제공하는 정보와 "서비스"를 지속적으로 이용할 수 있는 자로 &ldquo;강의&rdquo; 혹은 제반 서비스를 이용하는 회원을 의미합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;게시물&rdquo;이라 함은 &ldquo;회원&rdquo;이 &ldquo;서비스&rdquo;를 이용함에 있어 &ldquo;서비스&rdquo; 상에 게시한 글, 사진, 동영상 및 각종 파일과 링크를 의미합니다.</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">이 약관에서 사용하는 용어 중 제1항에서 정하지 아니한 것은 관계 법령 및 서비스 별 안내에서 정하는 바에 따르며, 그 외에는 일반 관례에 따릅니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제3조. 약관 효력 및 변경</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">"회사&rdquo;는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 서비스 초기 화면 또는 링크로 연결된 화면에 게시합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;약관의규제에관한법률&rdquo;, &ldquo;정보통신망이용촉진및정보보호등에관한법률(이하 &ldquo;정보통신망법&rdquo;)&rdquo; 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리한 약관의 개정의 경우에는 최소 30일 전에 공지 하고, 서비스 내 전자우편, 전자쪽지, 로그인시 동의창 등의 전자적 수단을 통해 개별적으로 명확히 통지하도록 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;가 전 항에 따라 개정약관을 공지 또는 통지하면서 회원에게 위 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지 하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;이 개정약관의 적용에 동의하지 않는 경우 &ldquo;회사&rdquo;는 개정 약관의 내용을 적용할 수 없으며, 이 경우 &ldquo;회사&rdquo; 또는 &ldquo;회원&rdquo;은 이용계약을 해지할 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제4조 . 약관 외 준칙</b></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">회사는 필요한 경우 서비스 내의 개별항목에 대하여 개별약관 또는 운영원칙(이하 &lsquo;서비스 별 안내&rsquo;라 합니다.)를 정할 수 있으며, 회원은 각 서비스 별 안내에 대해 회원가입과 동시에 동의한 것으로 간주합니다. 본 약관과 서비스 별 안내의 내용이 상충되는 경우에는 서비스 별 안내의 내용을 우선하여 적용합니다.</p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제5조. 이용계약 체결</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">이용계약은 &ldquo;회원&rdquo;이 되고자 하는 자(이하 &ldquo;가입신청자&rdquo;)가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 &ldquo;회사&rdquo;가 이러한 신청에 대하여 승낙함으로써 체결됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;가입신청자&rdquo;의 신청에 대하여 &ldquo;서비스&rdquo; 이용을 승낙함을 원칙으로 합니다. 다만, &ldquo;회사&rdquo;는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">가입 신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 &ldquo;회사&rdquo;의 회원 재가입 승낙을 얻은 경우에는 예외로 함.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">실명이 아니거나 타인의 명의를 이용한 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">허위의 정보를 기재하거나, &ldquo;회사&rdquo;가 제시하는 내용을 기재하지 않은 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">"서비스"의 위상이나 명예에 부정적인 영향을 줄 수 있는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">부정한 행위나 과정을 통해 공공질서 및 미풍양속에 저해되는 활동을 하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">영리를 추구할 목적으로 "서비스"를 악용하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">"서비스"의 운영을 고의로 방해한 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">서비스를 제공하지 않는 국가에서 비정상적이거나 우회적인 방법을 통해 서비스를 이용하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">임시 이메일 서비스를 이용하여 회원가입을 하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">기타 이 약관에 위배되는 무리한 요청을 하는 경우</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">제1항에 따른 신청에 있어 &ldquo;회사&rdquo;는 &ldquo;회원&rdquo;의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, &ldquo;회사&rdquo;는 원칙적으로 이를 가입신청자에게 알리도록 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">이용계약의 성립 시기는 &ldquo;회사&rdquo;가 가입완료를 신청절차 상에서 표시한 시점으로 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사&rdquo;는 &ldquo;회원&rdquo;에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;에 대하여 &ldquo;영화및비디오물의진흥에관한법률&rdquo; 및 &ldquo;청소년보호법&rdquo;등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;"></p>
            </div>
            <div style="box-sizing: inherit; color: #000a12; font-family: 'Noto Sans KR', -apple-system, system-ui, system-ui, 'Apple SD Gothic Neo', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', Helvetica; font-size: 16px; background-color: #ffffff;">
            <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">제 2장. 정보 및 서비스</h4>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제6조. 회원정보 변경</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회원&rdquo;은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 아이디등은 수정이 불가능합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 &ldquo;회사&rdquo;에 대하여 그 변경사항을 알려야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">제2항의 변경사항을 &ldquo;회사&rdquo;에 알리지 않아 발생한 불이익에 대하여 &ldquo;회사&rdquo;는 책임지지 않습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제7조. 개인정보보호 의무</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">회사는 회원에게 서비스를 제공하는 과정에서 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련법령이 규정한 절차와 방법에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 이용에 대해서는 관련법령 및 회사의 개인정보처리방침이 적용됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">서비스 외의 단순히 링크된 제3자 제공의 서비스에 대하여는 회사의 개인정보처리방침이 적용되지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 회원의 귀책사유로 인하여 노출된 회원의 회원정보를 포함한 모든 정보에 대해서 일체의 책임을 지지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 동법 시행령에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 보호하기 위해 개인정보 파기 등 필요한 조치를 취합니다. 또한, 회사는 객관적으로 계정정보 도용 피해가 우려되는 경우에는 회원정보의 보호 및 운영의 효율성을 위해 임시조치, 이용제한, 계정정보 삭제 등 필요한 조치를 취할 수 있습니다. 본 항에 따른 조치가 취해지는 경우, 회사는 조치일 30일 전까지 개인정보 파기 등 필요한 조치가 취해진다는 사실, 일시 및 항목을 명시하여 제19조에 따라 통지합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제8조. &ldquo;회원&rdquo;의 개인정보 관리</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회원&rdquo;의 &ldquo;아이디&rdquo;와 &ldquo;비밀번호&rdquo; 그리고 &ldquo;이메일&rdquo;에 관한 관리책임은 &ldquo;회원&rdquo;에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;의 &ldquo;아이디&rdquo;가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 &ldquo;회사&rdquo; 및 &ldquo;회사&rdquo;의 운영자로 오인한 우려가 있는 경우, 해당 &ldquo;아이디&rdquo;의 이용을 제한할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;은 &ldquo;아이디&rdquo; 및 &ldquo;비밀번호&rdquo;가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 &ldquo;회사&rdquo;에 통지하고 &ldquo;회사&rdquo;의 안내에 따라야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">제3항의 경우에 해당 &ldquo;회원&rdquo;이 &ldquo;회사&rdquo;에 그 사실을 통지하지 않거나, 통지한 경우에도 &ldquo;회사&rdquo;의 안내에 따르지 않아 발생한 불이익에 대하여 &ldquo;회사&rdquo;는 책임지지 않습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제9조. &ldquo;회원&rdquo;에 대한 통지</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;가 &ldquo;회원&rdquo;에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo; 전체에 대한 통지의 경우 7일 이상 &ldquo;회사&rdquo;의 게시판에 게시함으로서 제1항의 통지에 갈음할 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제10조. &ldquo;회사&rdquo;의 의무</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 &ldquo;서비스&rdquo;를 제공하기 위하여 최선을 다하여 노력합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;이 안전하게 &ldquo;서비스&rdquo;를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 서비스이용과 관련하여 &ldquo;회원&rdquo;으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. &ldquo;회원&rdquo;이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 &ldquo;회원&rdquo;에게 처리과정 및 결과를 전달합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제11조. &ldquo;회원&rdquo;의 의무</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회원&rdquo;은 다음 행위를 하여서는 안 됩니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">신청 또는 변경 시 허위내용의 등록</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">타인의 정보도용</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;가 게시한 정보의 변경</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;와 기타 제3자의 저작권 등 지적재산권에 대한 침해</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo; 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 &ldquo;서비스&rdquo;에 공개 또는 게시하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">회사의 동의 없이 영리를 목적으로 &ldquo;서비스&rdquo;를 사용하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">이 약관에 위배되는 내용을 &ldquo;회사&rdquo;에 요구하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">기타 불법적이거나 부당한 행위</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;은 관계법, 이 약관의 규정, 이용안내 및 &ldquo;서비스&rdquo;와 관련하여 공지한 주의사항, &ldquo;회사&rdquo;가 통지하는 사항 등을 준수하여야 하며, 기타 &ldquo;회사&rdquo;의 업무에 방해되는 행위를 하여서는 안 됩니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제12조. 강사 및 수강생의 역할과 권한</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;강사&rdquo;는 &ldquo;서비스&rdquo;에서 아래와 같은 역할 및 권한과 의무를 가집니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">&ldquo;강사&rdquo;는 법령과 이 약관을 준수하는 범위 내에서 강의의 구성원을 설정할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;는 해당 강의를 수강할 대상들을 초대할 수 있으며, 수강 신청 대상 중 승인 또는 반려할 수 있고, 수강생 중 수업에 위해가 될 경우 &ldquo;회사&rdquo;의 동의하에 강제 탈퇴 시킬 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;, &ldquo;수강생&rdquo; 등 모든 회원은 어떠한 경우에도 회원의 사전 서면 허락 없이 개인의 개인정보를 타인에게 공개할 수 없으며, 이를 위반하여 발생하는 모든 법적 책임은 위반하는 회원에게 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;는 강의 공간을 해당 교육을 위한 합법적인 목적 이외 개인의 영리추구, 불법 또는 사기 등과 같은 서비스 목적에 합당하지 않은 용도로 이용을 할 수 없습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;가 "서비스" 회원 탈퇴를 한 경우, &ldquo;강사&rdquo;로서의 모든 권한은 상실 됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;는 강의 성격에 부합하지 않은 게시물이 신고된 경우 임의로 삭제할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사&rdquo;는 양질의 교육 환경과 교육 컨텐츠를 제공하는데 성실히 역할을 이행합니다.</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;수강생&rdquo;은 &ldquo;서비스&rdquo;에서 아래와 같은 역할 및 권한과 의무를 가집니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">본인 이외의 계정으로 서비스에 접근하지 않으며, 타인이 본인의 계정을 사용하도록 허용하지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">과제나 퀴즈, 설문, 동료 평가 등과 같은 강의 내 학습 진행 시 불법 복제, 허위사실 기재 등의 부정행위를 하지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">본인이 수강 중인 강의에 강의의 성격에 부합하지 않는 게시물을 게시하지 않으며, 이를 위반하여 신고된 경우 삭제조치 될 수 있음에 동의합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">강의에 대한 수료 시, 추후 수료증이 발급될 경우 불법 복제를 하거나 수료자의 명의 변경 등과 같은 행동을 일체 하지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강사" 및 &ldquo;회사"의 명예를 손상시키거나 업무를 방해하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">이 약관에 위배되는 내용을 &ldquo;회사&rdquo;에 요구하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">본 항의 각 수강생의 역할을 이행하지 않은 경우, "회사"는 회원 자격을 박탈하고 "서비스" 접근 또는 참여를 제한할 수 있습니다.</li>
            </ol>
            </li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제13조. 서비스의 제공</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">회사는 회원에게 아래와 같은 서비스를 제공합니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">온라인 동영상 강의 서비스</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">동영상 외 텍스트 강의, 강의 관련 다양한 형태의 교육용 서비스</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">LMS 서비스(토론, 퀴즈, 과제, 평가, 수료)</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">강의제작 지원 서비스</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">기타 &ldquo;회사&rdquo;가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 &ldquo;회원&rdquo;에게 제공하는 일체의 서비스</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">서비스 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 일부 서비스의 이용 가능 시간을 별도로 정할 수 있습니다. 이 경우 서비스 이용안내를 통해 공지합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제14조. 서비스 제공의 변경 및 중지</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">"회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 "서비스"의 전부 또는 일부를 변경할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"서비스"의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시하여야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 &ldquo;회원&rdquo;에게 별도의 보상을 하지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"회사&rdquo;는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 이 경우 "회사"는 제9조에 정한 방법으로 "회원"에게 통지합니다. 다만, &ldquo;회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우, 해당 사유가 해소된 후 즉시 사후에 통지할 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제15조. 회원의 게시물 관리</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">회원이 서비스에 등록하는 게시물 등으로 인하여 본인 또는 타인에게 손해나 기타 문제가 발생하는 경우, 회원은 이에 대한 전적인 책임을 지게 되며, 회사는 이에 대하여 어떤 경우에도 책임을 지지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 다음 각 호에 해당하는 게시물 등을 회원의 사전 동의 없이 임시게시 중단, 수정, 삭제, 이동 또는 등록 거부 등의 관련 조치를 취할 수 있습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">불법복제 또는 해킹을 조장하는 내용인 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">영리를 목적으로 하는 광고일 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">범죄와 결부된다고 객관적으로 인정되는 내용일 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;의 자체적 판단 아래 해당 &ldquo;게시물&rdquo;이 &ldquo;서비스&rdquo;의 성격에 부합하지 않는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">기타 관계법령에 위배된다고 판단되는 경우</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 게시물 등에 대하여 제3자로부터 명예훼손, 지적재산권 등의 권리 침해를 이유로 게시중단 요청을 받은 경우 이를 임시로 삭제 할 수 있으며, 이의를 제기한 자와 게시물 등록자 간에 소송, 합의 등을 통해 당해 게시물에 관한 법적 문제가 종결된 후 이를 근거로 회사에 신청이 있는 경우에만 상기 임시 삭제된 게시물은 다시 등록될 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제16조. 정보의 편집 및 삭제</b></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">&ldquo;회사&rdquo;는 다음 각 호의 경우, "강사"와 협의를 통해 이를 추가, 수정, 변경 또는 삭제할 수 있도록 요청할 수 있습니다. 다만, "강사"가 합리적인 사유 없이 이를 거부하거나, 현저한 정책위반 또는 불법성이 명백한 경우 등 사전 협의절차를 거치기에 부적절하다고 판단될 경우, "회사&rdquo;는 &ldquo;강사&rdquo;의 사전승인 없이 추가, 수정, 변경 또는 삭제할 수 있으며, "강사"에게 사후에 이메일로 통보합니다.</p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">"강사"가 운영하는 "강의"의 강의 컨텐츠가 속한 "카테고리" 등의 정보가 적절하지 않다고 판단될 경우</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"강의"와 관련된 강의 제목, 동영상 제목, 강사 프로필 이미지, 강의 커버 이미지 등이 "회사"의 정책에 부합하지 않거나 사회 통념상 적절하지 않다고 판단할 경우</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"강의"에 속한 내용이나 운영사항 또는 "강의"에 속한 동영상의 내용이 "회사&rdquo;의 정책에 부합하지 않을 경우</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제17조. 게시물에 대한 저작권</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">"회원"이 "서비스" 내에 게시한 "게시물"의 저작권은 해당 게시물의 저작자에게 귀속됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"회원"은 "회사"가 제공하는 "서비스"를 이용함으로써 얻은 정보를 저작권자의 사전 승낙 없이 녹화ㆍ복제ㆍ편집ㆍ전시ㆍ전송ㆍ배포ㆍ판매ㆍ방송ㆍ공연하는 등의 행위로 저작권을 침해하여서는 안됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"회원"이 "서비스" 내에 게시하는 "게시물"은 검색 엔진 내지 "서비스" 및 관련 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수 있습니다. 이 경우, &ldquo;회사&rdquo;는 저작권법 규정을 준수하며, "회원"은 언제든지 고객문의 또는 "서비스" 내 관리기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회원이 올린 &ldquo;게시물&rdquo;이 회원의 동의 없이 타인에 의해 무단, 불법 복제되어 회원뿐 아니라 회사의 이익에 상충할 경우 회사는 회원을 대리해 저작권을 행사할 수 있습니다. 단, 이 경우 회사는 회원에게 개별적 동의를 구합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 본 조 제 4항 이외의 목적으로 회원의 게시물을 사용하고자 하는 경우 사전에 회원의 동의를 얻어 사용합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제18조. 정보의 제공</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">회사는 회원에게 서비스 이용에 필요가 있다고 인정되는 각종 정보에 대해서 전자우편이나 서신, 우편, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 관련 법령에 따라 추가적인 개인 정보를 수집할 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;"></p>
            </div>
            <div style="box-sizing: inherit; color: #000a12; font-family: 'Noto Sans KR', -apple-system, system-ui, system-ui, 'Apple SD Gothic Neo', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', Helvetica; font-size: 16px; background-color: #ffffff;">
            <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">제 3장. 유료 서비스</h4>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제 19조. 유료서비스의 제공</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회원&rdquo;은 &ldquo;회사&rdquo;가 제공하는 절차에 의하여 유료서비스 이용계약(이하 &ldquo;청약&rdquo;을 신청합니다. &ldquo;회사&rdquo;는 원칙적으로 &ldquo;회원&rdquo;의 청약 신청을 승낙합니다. 다만, 다음 각 호에 해당하는 경우에는 승낙하지 않거나 승낙을 유보할 수 있습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">실명이 아니거나 타인의 명의를 이용한 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">허위의 정보를 기재하거나, "회사&rdquo;가 제시하는 내용을 기재하지 않은 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">미성년자가 청소년보호법 등 관련법에 의해서 이용이 금지되는 유료 서비스를 이용하고자 하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">"서비스"의 위상이나 명예에 부정적인 영향을 줄 수 있는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;유료서비스"에서 제공하는 서비스의 공급량의 제한의 이유로 "서비스"를 제공할 수 없는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">이 약관에 위배되는 내용을 &ldquo;회사&rdquo;에 요구한 이력이 있는 &ldquo;회원&rdquo;일 경우</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">질문에 대한 권리는 &ldquo;유료서비스&rdquo;에 포함되지 않습니다</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">청약의 성립시기는 결제가 완료된 시점으로 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 계약 체결 전에 &ldquo;회원&rdquo;이 청약의 내용을 확인하고, 정정 또는 취소할 수 있도록 적절한 절차를 갖추어야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;는 계약 전에 이 약관 및 개별 안내 페이지에서 &ldquo;회사&rdquo;가 안내하는 사항을 숙지하여 착오 없이 거래할 수 있도록 하여야 합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제 20조. 청약철회</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;의 &ldquo;유료서비스&rdquo;는 청약철회가 가능한 것과 청약철회가 제한되는 것으로 구분되어 제공되며, 이러한 내용은 이 약관 또는 &ldquo;회원&rdquo;의 &ldquo;결제&rdquo; 시 고지됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">청약철회가 가능한 &ldquo;유료서비스&rdquo;를 &ldquo;결제&rdquo;한 &ldquo;회원&rdquo;은 &ldquo;결제&rdquo; 시부터 7일 이내에 &ldquo;회사&rdquo;의 고객센터에 청약 철회를 할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;은 전항의 &ldquo;청약철회&rdquo; 기간이 경과되거나 전자상거래 등에서의 소비자 보호에 관한 법률, 콘텐츠 산업 진흥원, 온라인 디지털 콘텐츠 이용자 보호 지침 등 관련 법령에서 정한 청약철회 제한 사유에 해당하는 &ldquo;유료서비스&rdquo;의 경우 청약철회를 할 수 없습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회원은 청약철회 의사를 고객센터 등을 통하여 회사에 그 의사를 표시하여야 하며, 회사는 환불요청을 접수하고 회원의 요청과 환불규정 확인 후, 3영업일 이내에 환불하여 드립니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사의 환불 원칙은 다음과 같습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">강의 구매일 1주 이내에 진도율 7% 미만일 경우 전액 환불이 가능합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">강의 구매일이 1주일이 넘었거나, 진도율이 7% 이상일 경우 환불이 불가합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">1강으로 구성된 개별강의는 원칙적으로 환불이 불가능 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">강의자료를 다운로드 받는 경우, 환불이 불가합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;멘토링&rdquo; 예약일 6일 이전 취소 시 전액 환불이 가능하며, 5일 ~ 1일 전 취소 시 30% 환불 가능, 당일 취소 시 환불이 불가합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">특별강의는 이벤트성 강의, 비정규 강의, 특별기획 강의 등으로서 이는 별도의 수강 취소, 변경 및 환불규정이 적용될 수 있습니다.</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사의 환불 예외사항은 다음과 같습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">회원이 관계법령 및 본 약관의 규정을 위반하여 회사로부터 강제탈퇴 처리가 되는 경우에는 본 조의 환불규정이 적용되지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">타인으로부터 양도받은(선물받은) 사이버머니에 대해서는 환불이 불가능합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">회사가 회원에게 무료로 지급한 사이버머니나 할인쿠폰 등으로 인해 회원이 획득하게 된 금액에 대해서는 환불되지 않습니다.</li>
            </ol>
            </li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제 21조. 청약철회 시 대금의 환급</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;는 &ldquo;유료서비스&rdquo;를 &ldquo;결제&rdquo;한 &ldquo;회원&rdquo;에게 해당 &ldquo;유료서비스&rdquo;를 공급하기 곤란하다는 것을 알았을 때, 즉시 해당 사실을 해당 &ldquo;회원&rdquo;에게 통보하고 해당 &ldquo;회원&rdquo;의 동의를 얻은 후 취소하여야 하며, &ldquo;회사&rdquo;는 해당&ldquo;회원&rdquo;의 결제일로부터 3영업일 이내에 환불 및 환불에 필요한 조치를 취해야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">결제대금의 환불은&ldquo;회사&rdquo;가 환불을 승인한 날로부터 3영업일 이내에 대금의 &ldquo;결제&rdquo;와 동일한 방법(신용카드 결제취소 등)으로 이루어집니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">신용카드를 통한 &ldquo;결제&rdquo; 대금 환불 시 &ldquo;결제&rdquo; 수단의 전자 결제 대행 사업자, 전자 결제 대행 또는 중개서비스 사업자의 정책 상 특정 기간이 지나 동일한 결제수단의 취소가 불가능한 경우에는 환불 정산액으로 환불이 진행됩니다. 환불정산액의 경우 회원정보 수집 및 내부 프로세스에 따라 영업일 15일 이내 처리될 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">휴대폰소액결제의 경우, 이동통신사 정책에 따라 결제승인 및 취소는 해당 월 내에만 가능하며 익월로 넘어갈 경우 계좌이체로 처리됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">할인 쿠폰을 사용한 강의를 환불할 시 사용된 쿠폰은 소멸됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">환불 과정에서 금융수수료가 발생하는 경우, 관련 법률에 따라 결제금액의 10%를 공제하고 환불할 수 있습니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;"></p>
            </div>
            <div style="box-sizing: inherit; color: #000a12; font-family: 'Noto Sans KR', -apple-system, system-ui, system-ui, 'Apple SD Gothic Neo', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', Helvetica; font-size: 16px; background-color: #ffffff;">
            <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">제 4장. 계약 해지 및 이용 제한</h4>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제22조. 계약해제, 해지 등</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회원&rdquo;은 언제든지 고객센터 또는 회원 정보 관리 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, &ldquo;회사&rdquo;는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 &ldquo;회사&rdquo;가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 &ldquo;회원&rdquo;의 개인정보 데이터는 소멸됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"회원"이 계약을 해지하는 경우, "회원"이 서비스 내에서 직접 작성한 "게시물" 및 덧글과 같이 본인 계정으로 등록된 게시물 일체는 삭제되지 않으므로, 본인이 직접 사전에 삭제 후 탈퇴 하시기 바랍니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">타인에 의해 담기, 스크랩 등이 되어 재게시 되거나, 공용게시판에 등록된 "게시물" 또한 삭제되지 않으니, 본인이 직접 절차에 의해 삭제 처리를 해야 합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제23조. 마일리지</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;는 서비스의 효율적 이용 및 운영을 위해 회원 가입, 충전, 이벤트 당첨 시에 회원에게 사이버 머니를 무상으로 제공할 수 있습니다. 단, 무상으로 제공된 사이버머니는 사전 공지 후 일부 또는 전부를 조정할 수 있으며, 회사가 정한 기간에 따라 주기적으로 소멸할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">무상으로 제공된 사이버머니는 회원이 현금으로 충전 또는 디지털콘텐츠 판매로 획득한 다른 기타 사이버머니 및 현금과 달리, 회원 탈퇴 시 전부 소멸되며 복구가 불가능합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제24조. 이용제한 등</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;이 이 약관의 의무를 위반하거나 &ldquo;서비스&rdquo;의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 &ldquo;서비스&rdquo; 이용을 제한할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 전항에도 불구하고, &ldquo;주민등록법&rdquo;을 위반한 명의도용 및 결제도용, &ldquo;저작권법&rdquo; 및 &ldquo;컴퓨터프로그램보호법&rdquo;을 위반한 불법프로그램의 제공 및 운영방해, &ldquo;정보통신망법&rdquo;을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있습니다. 본 항에 따른 영구이용정지 시 &ldquo;서비스&rdquo; 이용을 통해 획득한 수익 등 기타 혜택 등도 모두 소멸되며, &ldquo;회사&rdquo;는 이에 대해 별도로 보상하지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 본 조의 이용제한 범위 내에서 제한의 조건 및 세부내용은 이용제한정책 및 개별 서비스상의 운영정책에서 정하는 바에 의합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">본 조에 따라 &ldquo;서비스&rdquo; 이용을 제한하거나 계약을 해지하는 경우에는 &ldquo;회사&rdquo;는 그 사유 및 제한기간 등을 회원에게 9조에 따라 알려야 합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회원&rdquo;은 본 조에 따른 이용제한 등에 대해 &ldquo;회사&rdquo;가 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 &ldquo;회사&rdquo;가 인정하는 경우 &ldquo;회사&rdquo;는 즉시 &ldquo;서비스&rdquo;의 이용을 재개합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제25조. 부정이용 금지 및 차단</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">회사는 다음 각호에 해당하는 경우를 부정 이용행위로 봅니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">동일한 ID로 2대 이상의 기기에서 동시접속이 발생하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">동일한 ID로 다수의 PC 또는 IP에서 서비스를 이용하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">자신의 ID 및 강의 등의 서비스를 타인이 이용하도록 하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">자신의 ID 및 강의 등의 서비스를 타인에게 판매, 대여, 양도하는 행위 및 이를 광고하는 행위</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">서비스 이용 중, 복제프로그램을 실행하는 경우 또는 녹화를 하거나 시도하는 경우</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">&ldquo;강의&rdquo;의 &ldquo;게시물&rdquo;을 재배포 하는경우</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회사는 전항에 따른 부정 이용자가 발견 되었을 경우, 다음 각호에 따른 조치를 취할 수 있습니다.
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">[1차 발견 시] 전자우편, 쪽지, 팝업창을 통하여 경고합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">[2차 발견 시] 강제 탈퇴 처리되며 &ldquo;회사&rdquo;의 법률 대리인을 통한 고발조치와 민사소송을 진행하게 됩니다.</li>
            </ol>
            </li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회원은 전항 제2호의 조치를 이유로, 서비스 이용기간의 연장을 요구할 수 없습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회원은 회사로부터의 본 조 제2항의 조치에 이의가 있는 경우, 회사의 법률 대리인을 통해 소명할 수 있습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">부정이용 식별방법 및 차단
            <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">회사는 회원의 서비스 이용 중에 수집ㆍ확인된 IP정보 등의 자료를 토대로, 서버를 통하여 부정이용 여부를 분류, 확인합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">회사는 이용자가 서비스 이용 중에 복제프로그램을 실행시키거나 동일한 ID로 동시 접속을 하는 경우, 서비스 이용 접속을 강제로 종료 시킵니다.</li>
            </ol>
            </li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제26조. 면책</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">&ldquo;회사&rdquo;는 천재지변 또는 이에 준하는 불가항력으로 인하여 &ldquo;서비스&rdquo;를 제공할 수 없는 경우에는 &ldquo;서비스&rdquo; 제공에 관한 책임이 면제됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;의 귀책사유로 인한 &ldquo;서비스&rdquo; 이용의 장애에 대하여는 책임을 지지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo;이 &ldquo;서비스&rdquo;와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 &ldquo;회원&rdquo; 간 또는 &ldquo;회원&rdquo;과 제3자 상호간에 &ldquo;서비스&rdquo;를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">&ldquo;회사&rdquo;는 CP가 제공하거나 회원이 작성하는 등의 방법으로 서비스에 게재된 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며 이로 인해 발생한 회원의 손해에 대하여는 책임을 부담하지 아니합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"></p>
            <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;"><b style="box-sizing: inherit;">제27조. 준거법 및 재판관할</b></p>
            <ol style="box-sizing: inherit; margin: 1em 0px 1em 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
            <li style="box-sizing: inherit; margin: 0px; padding: 0px;">본 약관은 대한민국법령에 의하여 규정되고 이행됩니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">본 약관에 명시되지 않은 사항에 대해서는 관련법령에 의하고, 법에 명시되지 않은 부분에 대하여는 관습에 의합니다.</li>
            <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">"회사"와 "회원"간 발생한 분쟁에 관한 소송은 제소 당시의 "회사"의 주소에 의한 관할 지방법원을 전속관할로 합니다.</li>
            </ol>
            <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;"></p>
            </div>
            <div style="box-sizing: inherit; color: #000a12; font-family: 'Noto Sans KR', -apple-system, system-ui, system-ui, 'Apple SD Gothic Neo', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', Helvetica; font-size: 16px; background-color: #ffffff;">
            <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">[부칙]</h4>
            <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">본 약관은 2021년 11월 23일부터 적용됩니다.</p>
            </div></div>
                </div>
              </section></main>
              </div>

          <!--#################        FOOTER         #################-->

		<footer>
         <%@ include file="../foot/footer.jsp" %>
        </footer>
        
<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        
</body>
</html>