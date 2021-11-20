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
                    <a href="/eyong.do"><button type="button" class="btn btn-lg btn-outline-secondary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-text" viewBox="0 0 16 16">
                            <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
                            <path d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z"/>
                          </svg>
                        로코드 이용약관</button></a>
                    <a href="/inform.do"><button type="button" class="btn btn-lg btn-secondary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-check" viewBox="0 0 16 16">
                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                            <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                          </svg>
                        개인정보 취급방침</button></a>
            </div>
        </div>
        
        <main id="main">
          <section class="policy_container">
            <div class="container">
      
          <div class="content">
            <article class="policy-privacy__intro" style="box-sizing: inherit; color: #000a12; font-family: 'Noto Sans KR', -apple-system, system-ui, system-ui, 'Apple SD Gothic Neo', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', Helvetica; font-size: 16px; background-color: #ffffff;">
      <h1 style="box-sizing: inherit; margin: 0px 0px 0.5em; padding: 0px; font-size: 24px; color: #363636; line-height: 1.125;">개인정보 취급방침</h1>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">로코드 (이하 "회사")는 개인정보보호법, 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등을 준수하고 있습니다. "회사"는 본 개인정보취급방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드리고자 합니다.</p>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">본 개인정보취급방침은 정부의 법률 및 지침 변경이나 "회사"의 내부 방침 변경 등으로 인하여 수시로 변경될 수 있으며, 개정된 사항은 개인정보취급방침을 "회사"가 제공하는 서비스 페이지에 공지하도록 하겠습니다.</p>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"의 개인정보취급방침은 다음과 같은 내용을 포함하고 있습니다.</p>
      <ol style="box-sizing: inherit; margin: 1em 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px;">개인정보의 수집 및 이용 목적, 수집하는 개인정보의 항목 및 수집방법</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">개인정보의 제3자 제공</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">개인정보 보유 및 이용기간</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">회원의 권리와 행사 방법</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">개인정보 보호를 위한 기술적&middot;관리적 대책</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">개인정보 관리 책임자의 성명, 연락처, 부서</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">고지의 의무</li>
      </ol>
      <p></p>
      </article>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">1. 개인정보 수집의 이용 목적, 항목 및 수집방법</h2>
      <ol>
      <li style="list-style-type: none;">
      <ol>
      <li style="list-style-type: none;">
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li class="index-1" style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">
      <p class="개인정보란" style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">개인정보란 생존하는 개인에 관한 정보로서 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다.)를 말합니다.</p>
      </li>
      <li class="index-2 개인정보_수집_활용" style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"는 수집된 개인정보를 다음의 목적을 위해 활용합니다.</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">회원가입 및 의사소통에 관한 사항: 회원 본인확인, 부정 가입방지, 가입 의사확인, 연령확인, 고충상담 및 처리, 공지사항 안내 등</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">콘텐츠 및 서비스 제공에 관한 사항: 캐시 결제, 개인 및 법인사업자의 서비스 이용 및 판매대금 정산, 금융거래 시 본인 인증 및 금융서비스 등</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">이벤트 및 마케팅, 자료조사에 관한 사항: 이벤트 및 홍보성 정보전달, 서비스이용에 관한 통계조사 등</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">기타 서비스 제공 등</li>
      </ol>
      </li>
      <li class="index-3 개인정보_수집_대상" style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"는 위에 명시한 목적을 위해 다음과 같은 개인정보를 수집하고 있습니다.</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li class="회원_정보_수집" style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">
      <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">수강 회원 정보 수집</h4>
      <table style="box-sizing: inherit; border-collapse: collapse; border-spacing: 0px; width: 784px;">
      <thead style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">수집 시점</th>
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">수집 및 이용 목적</th>
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">수집 및 이용 항목</th>
      </tr>
      </thead>
      <tbody style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">회원 가입 시</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">회원가입, 회원 본인확인, 부정 가입방지, 가입 의사확인, 연령확인, 고충상담 및 처리, 공지사항 안내 등</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">필수 : 이름(실명), 이메일, 비밀번호, 생년월일<br style="box-sizing: inherit;" />추가 : 성별, 연령대, 출생연도, 생일</td>
      </tr>
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">서비스 이용 시</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">수강 신청 및 결제 등</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">필수 : 이름, 휴대폰번호, 이메일 등 구매 정보</td>
      </tr>
      </tbody>
      </table>
      </li>
      <li class="지식공유자_승인_회원_정보_수집" style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">
      <h4 style="box-sizing: inherit; margin: 1.5rem 0px 0.8em; padding: 0px; font-size: 1.1rem; color: #363636; line-height: 1.125;">지식공유자 승인 회원 정보 수집</h4>
      <table style="box-sizing: inherit; border-collapse: collapse; border-spacing: 0px; width: 784px; margin-bottom: 1em;">
      <thead style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">수집 시점</th>
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">수집 및 이용 목적</th>
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">수집 및 이용 항목</th>
      </tr>
      </thead>
      <tbody style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">회원 가입 시</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">회원가입, 회원 본인확인, 부정 가입방지, 가입 의사확인, 연령확인, 고충상담 및 처리, 공지사항 안내 등</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">필수 : 이름(실명), 이메일, 비밀번호, 생년월일</td>
      </tr>
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">서비스 이용 시</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">수강 신청 및 결제 등</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">필수 : 이름, 휴대폰번호, 이메일 등 구매 정보</td>
      </tr>
      </tbody>
      <tbody style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <td rowspan="2" style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">지식공유자 등록 시</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">사업자 등록을 하지 않은 개인의 지식공유자 등록, 정산</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">필수 : 이름(실명), 휴대폰번호, 우편번호, 주소<br style="box-sizing: inherit;" />추가 : 주민등록번호, 정산계좌정보(은행명, 계좌번호, 예금주)</td>
      </tr>
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">개인사업자, 법인사업자</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">필수 : 회사명, 사업자등록번호, 대표자명, 회사 전화번호, 우편번호, 주소, 담당자명, 담당자 휴대폰번호<br style="box-sizing: inherit;" />추가 : 통신판매업신고번호, 수익입금계좌정보(은행명, 계좌번호, 예금주)</td>
      </tr>
      </tbody>
      </table>
      <section class="instructor-confirmed-user__pagers" style="box-sizing: inherit;">
      <ul style="box-sizing: inherit; padding: 0px; list-style: none; margin: unset 0px 0px unset;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px;">
      <h5 style="box-sizing: inherit; margin: 1.5rem 0px 0.8888em; padding: 0px; font-size: 1.25rem; color: #363636; line-height: 1.125;">- 그 외 추가정보 입력 후 제출할 서류</h5>
      <ol style="box-sizing: inherit; margin: 1em 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px;">사업자 등록을 하지 않은 개인: 계좌사본, 신분증사본</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">사업자 등록을 한 개인사업자 및 법인사업자: 계좌사본, 사업자등록증사본, 통신판매업신고증사본</li>
      </ol>
      </li>
      </ul>
      </section>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">수집방법: 홈페이지(회원가입, 게시판 등), 모바일 어플리케이션, 팩스, 전화, 고객센터 문의, 이벤트 응모</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">서비스 이용과정이나 사업 처리 과정에서 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록, 이용정지 기록과 같은 정보들이 생성되어 수집 가능</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">부가서비스 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 관한 정보 (개인정보 추가 수집에 대한 동의를 받는 경우에 한정)</li>
      </ol>
      </li>
      <li class="index-4" style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">"회사"는 이용자의 개인정보의 수집할 경우 반드시 이용자의 동의를 얻어 수집하며, 이용자의 기본적 인권을 침해할 우려가 있는 인종, 출신지, 본적지, 사상, 정치적 성향, 범죄기록, 건강상태 등의 정보는 이용자의 동의 또는 법령의 규정에 의한 경우 이외에는 수집하지 않습니다.</p>
      </li>
      <li class="index-5" style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">"회사"는 회원 가입을 만 14세 이상인 경우에 가능하도록 하며 개인정보의 수집&middot;이용에 법정대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 수집하지 않습니다.</p>
      </li>
      <li class="index-6" style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"는 다음과 같은 방법으로 개인정보를 수집할 수 있습니다</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">홈페이지(회원가입, 게시판 등), 모바일 어플리케이션, 팩스, 전화, 고객센터 문의, 이벤트 응모</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">생성정보 수집 툴을 통한 자동 수집</li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">2. 개인정보의 제3자 제공</h2>
      <ol>
      <li style="list-style-type: none;">
      <ol>
      <li style="list-style-type: none;">
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">개인정보의 제3자 제공</p>
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">"회사"는 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.</p>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">개인정보 처리의 위탁</p>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"는 원활한 업무 처리를 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따른 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 회사의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다.</p>
      <table style="box-sizing: inherit; border-collapse: collapse; border-spacing: 0px; width: 816px;">
      <thead style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">제공받은 자</th>
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">제공하는 목적</th>
      <th style="box-sizing: inherit; padding: 0.5em 0.75em; text-align: left; vertical-align: top; color: #363636; border: 1px solid #d2cdcd; background-color: #ced4da;">제공하는 개인정보 항목</th>
      </tr>
      </thead>
      <tbody style="box-sizing: inherit;">
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">LGCNS</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">톡드림을 이용한 카카오톡 알림 서비스</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">사용자 이름, 연락처</td>
      </tr>
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">지식공유자</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">강의학습 정보 확인 및 발송</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">사용자 이름, 연락처</td>
      </tr>
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">나이스페이먼츠, JTNET, 네이버파이낸셜, 카카오, 토스페이먼츠</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">결제 서비스 제공</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">사용자 이름, 연락처, 이메일 등 구매정보</td>
      </tr>
      <tr style="box-sizing: inherit;">
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">엔에이치엔</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">문자 발송 대행</td>
      <td style="box-sizing: inherit; padding: 0.5em 0.75em; vertical-align: top; border: 1px solid #d2cdcd;">연락처</td>
      </tr>
      </tbody>
      </table>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">3. 개인정보 보유 및 이용기간</h2>
      <ol>
      <li style="list-style-type: none;">
      <ol>
      <li style="list-style-type: none;">
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">"회사"는 회원 가입 시 제공한 정보를 회원 가입시점부터 탈퇴 신청이 접수된 날까지 보관할 수 있습니다. 원칙적으로 회원 탈퇴 처리가 완료된 이후 회원 개인정보는 "회사"의 하드디스크에서 완전히 삭제되며, 문서의 경우 분쇄기로 분쇄하여 어떠한 용도로도 이용될 수 없도록 처리됩니다.</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 "회사"는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">개별적으로 회원의 동의를 받은 경우에는 약속한 보유기간</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">보존근거: 전자상거래 등에서의 소비자보호에 관한 법률, 통신비밀보호법</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">보존기간:</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: circle;">계약 또는 청약철회 등에 관한 기록(전자상거래법): 5년</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: circle; margin: unset 0px 0px 0px;">대금결제 및 재화 등의 서비스 등의 공급에 관한 기록(전자상거래법): 5년</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: circle; margin: unset 0px 0px 0px;">소비자의 불만 또는 분쟁처리에 관한 기록(전자상거래법): 3년</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: circle; margin: unset 0px 0px 0px;">접속에 관한 기록(통신비밀보호법): 3개월</li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">4. 회원 및 법정대리인의 권리와 행사 방법</h2>
      <ol>
      <li style="list-style-type: none;">
      <ol>
      <li style="list-style-type: none;">
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">회원 및 법정대리인은 언제든지 다음의 사항에 관하여 개인정보 열람, 수정 및 회원 탈퇴를 요구할 수 있습니다.</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">"회사"가 보유하고 있는 회원의 개인정보</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">"회사"가 이용자의 개인정보를 이용하거나 제3자에게 제공한 내역</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">"회사"에게 개인정보수집ㆍ이용ㆍ제공 등의 동의를 한 내역</li>
      </ol>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">회원 및 법정대리인은 "회사" 서비스에서 직접 자신의 정보를 열람, 정정을 할 수 있으며, 별도로 개인정보보호책임자에게 서면, 전화, 이메일 등을 통하여 개인정보의 열람, 정정을 요청할 수 있습니다.</p>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">회원 및 법정대리인은 언제든지 자신의 개인정보처리의 정지를 요구할 수 있습니다.</p>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">회원 및 법정대리인은 언제든지 회원가입 시 개인정보의 수집, 이용, 제공 등에 대해 동의하신 의사표시를 철회(회원탈퇴)할 수 있습니다.</p>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px; padding: 0px; line-height: 1.6;">회원 및 법정대리인이 "회사" 서비스에서 본인 확인 절차를 거친 후 직접 동의철회(회원탈퇴)를 하거나, 별도로 개인정보보호책임자에게 서면, 전화 또는 이메일 등을 통하여 연락하면 지체 없이 이용자의 개인정보를 파기하는 등 필요한 조치를 취합니다. 단, 동의철회(회원탈퇴)가 있더라도 관계법령에 따라 최소한의 정보가 보관됩니다.</p>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">5. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h2>
      <ol>
      <li style="list-style-type: none;">
      <ol>
      <li style="list-style-type: none;">
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"는 회원의 정보를 수시로 저장하고 불러오는 "쿠키"(cookie)를 사용합니다. "쿠키"는 웹사이트 이용 시 서버가 사용자의 웹브라우저에 보내는 작은 데이터 꾸러미로 회원의 컴퓨터의 하드디스크에 저장됩니다. "회사"는 다음과 같은 목적을 위해 "쿠키"를 사용합니다.</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">사용목적:</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: circle;">이용자의 접속 유지</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: circle; margin: unset 0px 0px 0px;">이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 횟수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공</li>
      </ol>
      </li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">이용자는 "쿠키" 설치에 대한 선택권을 가지고 있으며 웹브라우저에서 옵션을 설정함으로써 모든 "쿠키"를 허용하거나, "쿠키"가 저장될 때마다 확인을 거치거나, 아니면 모든 "쿠키"의 저장을 거부할 수 있음</li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">6. 개인정보 보호를 위한 기술적/관리적 대책</h2>
      <ol>
      <li style="list-style-type: none;">
      <ol>
      <li style="list-style-type: none;">
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-alpha;">회원의 개인정보는 비밀번호에 의해 철저히 보호되고 있으며 본인이 제공한 이메일주소에 매칭되는 비밀번호는 본인만이 알고 있습니다. 따라서 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">회원은 본인의 비밀번호를 누구에게도 알려주면 안됩니다. 이를 위해 "회사"에서는 기본적으로 PC에서의 사용을 마치신 후 온라인상에서 로그아웃(LOG-OUT)하고 웹 브라우저를 종료하도록 권장합니다.</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-alpha; margin: unset 0px 0px 0px;">
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">"회사"의 개인정보 보호를 위한 기술적/관리적 대책은 다음과 같습니다.</p>
      <ol style="box-sizing: inherit; margin: 0px 0px 0px 2em; padding: 0px; list-style-position: outside; list-style-image: initial;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px; list-style: lower-roman;">수집한 개인정보 중 비밀번호 등 본인임을 인증하는 정보에 대한 암호화 장치</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">컴퓨터 바이러스에 의한 개인정보의 침해를 막기 위한 백신소프트웨어 설치, 갱신, 점검 조치</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">개인정보 시스템에 대한 접근권한 설정, 관리 및 침입차단 시스템 등을 이용한 접근 통제장치</li>
      <li style="box-sizing: inherit; padding: 0px; list-style: lower-roman; margin: unset 0px 0px 0px;">개인정보 취급자에 대한 지정과 권한의 설정 및 교육, 개인정보의 안전한 관리</li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      </li>
      </ol>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">7. 개인정보 관리 책임자의 성명, 연락처, 부서</h2>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 "회사"는 개인정보관리책임자를 두고 있습니다.<br style="box-sizing: inherit;" />개인정보와 관련한 문의사항이 있으시면 아래의 개인정보관리책임자에게 연락 주시기 바랍니다.</p>
      <ul style="box-sizing: inherit; padding: 0px; list-style: disc; margin: unset 0px 1em unset;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px;">이 름: 구자유</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">소 속: 로코드</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">연락처: 010-0000-0000</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">E-mail: woonyoung@locode.com</li>
      </ul>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">기타 개인정보침해에 관한 상담이 필요한 경우에는 한국정보보호진흥원, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
      <ul>
      <li style="list-style-type: none;">
      <ul>
      <li style="list-style-type: none;">
      <ul style="box-sizing: inherit; padding: 0px; list-style: disc; margin: unset 0px 0px unset;">
      <li style="box-sizing: inherit; margin: 0px; padding: 0px;">한국정보보호진흥원 (1336)</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">대검찰청 인터넷범죄수사센터 (02-3480-3600)</li>
      <li style="box-sizing: inherit; padding: 0px; margin: unset 0px 0px 0px;">경찰청 사이버테러대응센터 (02-392-0330)</li>
      </ul>
      </li>
      </ul>
      </li>
      </ul>
      <p></p>
      <h2 style="box-sizing: inherit; margin: 0px 0px 0.5714em; padding: 0px; font-size: 20px; color: #363636; line-height: 1.125;">8. 고지의 의무</h2>
      <p style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; line-height: 1.6;">현재 개인정보 취급 방침에서 내용의 추가, 삭제 및 수정이 있을 시에는 변경사항의 시행일의 7일 전부터 "회사" 사이트의 공지사항을 통하여 고지 할 것 입니다. 다만, 회원의 권리 또는 의무에 중요한 내용의 변경은 최소 30일전에 고지하겠습니다.</p>
      <h6 style="box-sizing: inherit; margin: 0px 0px 1em; padding: 0px; font-size: 16px; color: #363636; line-height: 1.125;">- 시행일자: 2021년 11월 23일</h6>
          </div>
        </div>
        
      </section></main>
      </div>

          <!--#################        FOOTER         #################-->

          <footer>
         <%@ include file="../foot/footer.jsp" %>
        </footer>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        
</body>
</html>