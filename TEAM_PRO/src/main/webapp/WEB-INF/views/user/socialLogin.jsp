<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/socialLogin/naverLoginserv.js" ></script>
<script type="text/javascript">

		function sslogin() {
			$.ajax({
				//회원가입 창 넘어 갈 시 seesion 에 저장한 아이디를 가지고 회원번호 찾기
				url : "kakaoLogin.do",
				method : "POST",
				data : $("#sslogin").serialize(),
				dataType : "JSON",
				success : function(result) {
					console.log(result);
					location.href="redirect:login.do";
					var rs = result.result;
					if(rs == 0 ){
						console.log("아이디 없음 회원가입 해야함")
						location.href = "/userJoin.do";
						alert("회원가입으로 이동합니다.");
					}else if(rs > 0){
						console.log("아이디 있음 로그인 가능");
						location.href ="/";
						alert("반갑습니다 회원님");
					}
				}
			});
		} 

</script>

<script >
<!---------------------네이버 로그인 callback ------------------------->
/* var naver_id_login = new naver_id_login("u_PTkLzzH6Gzne3cO8hw", "http://localhost:8088/slogin.do");
										 // 접근 토큰 값 출력
 // 네이버 사용자 프로필 조회
 naver_id_login.get_naver_userprofile("naverSignInCallback()");
 // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
 function naverSignInCallback() {
	  email = naver_id_login.getProfileData('email');
	  console.log(email);
		if(email != null){
			url = "/test";
			fetch(url+"?userid="+email).then()
		}
  		 alert(email);
  
  		 location.href = "/slogin.do";
  		 window.$("#myHiddenForm").trigger("click");
  		 

 } */


  
</script>
 

</head>
<body>

			
			<form id="sslogin"  >
			<input type="hidden" name="user_id" value="${ssID}"  />
			</form>
			<button type="button" id="myHiddenForm" onclick="sslogin()" ></button>
			<script>
			$("#myHiddenForm").hide();
			
			function autoButton(){
				$("#myHiddenForm").trigger("click");
			}
			
			setTimeout(autoButton,1000);</script>
			
</html>