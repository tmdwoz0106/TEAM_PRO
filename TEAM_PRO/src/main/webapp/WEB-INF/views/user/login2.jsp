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
</html>