<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</body>
</html>