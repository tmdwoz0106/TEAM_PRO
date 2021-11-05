<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" 
src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

function naverLogin() {
	
	
	$.ajax({
		url:"/naverlogin.do",
		type:"POST",
		data:$("#naver").serialize(),
		dataType:"JSON",
		success : function(result){
			var vo=result.result;
			location.href="redirect:login.do";
			
			console.log(vo);
			if(vo==0){
				alert("아이디가없습니다!");
				//console.log("아이디가 없습니다");
				location.href="/userJoin.do"
			}else if(vo>0){
				location.href ="/";
				alert("반갑습니다 회원님 로그인 성공");
			}
			
		}
	})
	
}


</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>네이버 소셜 로그인 </h1>

           <form  id="naver">
          
          아이디  <input type="text" name="user_id" value="${ssid}" />
          
          </form>
          
          <button type="button" onclick="naverLogin()">로그인</button>
</body>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("Kxm25o90mXmhCTTosotq", "http://localhost:8088/slogin.do");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
     email = naver_id_login.getProfileData('email');
      if(email != null){
         url = "/test";
         fetch(url+"?user_id="+email).then()
      }
    alert(email);
    location.href = "/slogin.do";
    
    naverLogout();
    
  }
  
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
        }, 3000);
     
  }

  
</script>
</html>