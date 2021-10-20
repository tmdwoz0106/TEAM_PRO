<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function join(){
	$.ajax({
		url:"/JoinUser.do",
		type:"POST",
		data:$("#joinForm").serialize(),
		dataType:"JSON",
		success : function(result){
			var vo = result.msg;
			var result = result.result;
			
			alert(vo);
			
			if(result == 1){
				location.href = "/";
			}else{
				location.href = "/userJoin.do";
			}
		}
	})
}
</script>
</head>
<body>
<h1>회원가입</h1>
<form id="joinForm">
<input type="hidden" name="user_no" value="${max }" readonly="readonly" />
<table>
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>닉네임</td>
		<td>생년월일</td>
		<td>핸드폰번호</td>
	</tr>
	<tr>
	<c:if test="${ssID ne null}">
		<td><input type="text" name="user_id" value="${ssID}"/></td>
	</c:if>
	<c:if test="${ssID eq null}">
		<td><input type="text" name="user_id" /></td>
	</c:if>
		<td><input type="text" name="user_pw" /></td>
		<td><input type="text" name="user_name" /></td>
		<td><input type="text" name="user_nick" /></td>
		<td><input type="text" name="user_birth" /></td>
		<td><input type="text" name="user_phone" /></td>
	</tr>
</table>
</form>
<button type="button" onclick="join()">회원가입</button>
</body>
</html>