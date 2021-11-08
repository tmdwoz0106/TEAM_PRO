<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name ="google-signin-client_id" content="415549652819-r9tvjtsgkljq5v56dslamalkju2tjcoe.apps.googleusercontent.com"></meta>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="/resources/js/socialLogin/kakaoLogin.js"></script>
<script src="/resources/js/socialLogin/googleLogin.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
	<button type="button" onclick="login()">로그인</button> |
	<a href="/userJoin.do"><button>회원가입</button></a>
<!--   카카오 소셜로그인   -->	
<div>
	<a href="javascript:kakaoLogin();" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQOJtNpYFKTS1T5QdhIDFFgLzQO93BuFjFw&usqp=CAU" style="width:200px"/></a>
	<a href="javascript:다른사용자()">카카오 자동로그인 연결끊기</a>
<!--    구글 소셜로그인    -->
	<div class="g-signin2" data-onsuccess="onSignIn"></div>
	<a href="#" onclick="googleSignout2()">구글 로그아웃</a>
</div>
<!--  네이버 소셜로그인  -->
	<div id="naver_id_login"></div>
	<a href="javascript:void(0)" onclick="naverLogout(); return false;">네이버로그아웃</a>
     <script src="/resources/js/socialLogin/naverLogin.js"></script>
     
</body>
</html>