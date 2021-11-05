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
<button type="button" onclick="login()">로그인</button>

		
<a href="/userJoin.do"><button>회원가입</button></a>



  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  
   <div id="naver_id_login"></div>

  
      <a href="javascript:void(0)" onclick="naverLogout(); return false;">
      <img alt="" src="/resources/image/btnG_로그아웃.png"  width="100">
      </a>

     <script type="text/javascript">
        var naver_id_login = new naver_id_login("Kxm25o90mXmhCTTosotq", "http://localhost:8088/slogin.do");
        var state = naver_id_login.getUniqState();
        naver_id_login.setButton("white", 2,40);
        naver_id_login.setDomain("http://localhost:8088");
        naver_id_login.setState(state);
        //naver_id_login.setPopup();
        naver_id_login.init_naver_id_login();

//         var testPopUp;
//         function openPopUp() {
//             testPopUp= window.open("https://nid.naver.com/nidlogin.logout",
//                   "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
//         }
//         function closePopUp(){
//             testPopUp.close();
//         }

//         function naverLogout() {
//            openPopUp();
//            setTimeout(function() {
//               closePopUp();
//               }, 3000);
           
//         }
      

  </script>

</body>
</html>