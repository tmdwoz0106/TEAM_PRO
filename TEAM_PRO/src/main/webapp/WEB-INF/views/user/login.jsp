<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script src="/resources/js/naver.js"></script> -->
<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript">


function login(){
	$.ajax({
		url:"/loginPost.do",
		type:"POST",
		data:$("#loginForm").serialize(),
		dataType:"JSON",
		success : function(result){
			var vo = result.vo;
			console.log(vo);
	
			if(vo.msg != null){
				alert(vo.msg);
				location.href = "/";
			}else{
				alert("환영합니다 회원님");
				location.href = "/";
			}
			
		}
	})
}
</script>
</head>
<body>
<h1>로그인</h1>
  <!-- 네이버아이디로로그인 버튼 노출 영역 -->
  <div id="naver_id_login"></div>
<form id="loginForm">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="user_id" value="test"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="user_pw" value="test"/></td>
		</tr>
	</table>
</form>
<button type="button" onclick="login()">로그인</button>

		
<a href="/userJoin.do"><button>회원가입</button></a>


<h1>네이버 소셜 로그인 </h1>

<ul>
	<li>
      <!-- 아래와같이 아이디를 꼭 써준다. -->
      <a id="naverIdLogin_loginButton" href="javascript:void(0)">
      <!-- 네이버로그인이미지 -->
           <img alt="" width="200" src="/resources/image/btnG_완성형.png" >
      </a>
	</li>
	<li onclick="naverLogout(); return false;">
      <a href="javascript:void(0)">
       <!-- 네이버로그아웃 이미지 -->
        <img alt="" width="130" src="/resources/image/btnG_로그아웃.png" >
      </a>
	</li>

</ul>

<script type="text/javascript">

    var naverLogin = new naver.LoginWithNaverId(
        {
            clientId: "Kxm25o90mXmhCTTosotq", 
            //내 애플리케이션 정보에 cliendId를 입력해줍니다.
            callbackUrl:"http://localhost:8088/nlogin.do",
            // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
            isPopup: false,
            callbackHandle: true
        }
    );	


naverLogin.init();

window.addEventListener('load', function () {
naverLogin.getLoginStatus(function (status) {
    if (status) {
        var email = naverLogin.user.getEmail();
        // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
        //console.log(email);
        // alert(email);
        let url ='/test';
        fetch(url+"?user_id="+email)
        .then()
        //location.href="/login.do";
        
        
        if( email == undefined || email == null) {
            alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
            naverLogin.reprompt();
            return;
        }
    } else {
        console.log("callback 처리에 실패하였습니다.");
    }
});
});


var testPopUp;
function openPopUp() {
testPopUp= window.open("https://nid.naver.com/nidlogin.logout",
        "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
testPopUp.close();
}

function naverLogout() {
openPopUp();
setTimeout(function() {
    closePopUp();
    }, 1000);

}


</script>

</body>
</html>