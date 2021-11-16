<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="/resources/js/user/delete.js"></script>
  <script type="text/javascript" src="/resources/js/user/modify.js"></script>
  <link href="/resources/css/user/joinus.css" rel="stylesheet">
	
</head>
<header>
<%@include file="../haed/header.jsp" %>
</header>
<body>
<div class="text-left"> 
<div  class="form-signin">
<form id="deleteForm">
<h2 class="text-left">내정보</h2>
<input type="hidden" value="${user_no}" name="user_no" readonly=readonly id="user_ID">
<label for="inputId">아이디 &nbsp;
    <input type="text" name="user_id" class="form-control" id="user_ID" value="${vo.user_id }" readonly="readonly" required></label>
<label for="inputPassword">패스워드
    <input type="password" name="user_pw" class="form-control" id="user_PW" value="${vo.user_pw }" required></label>    
<label for="inputName">이름
    <input type="text" name="user_name" class="form-control" value="${vo.user_name }" readonly="readonly" required></label>
<label for="inputNick">닉네임
    <input type="text" name="user_nick" class="form-control" value="${vo.user_nick }" required></label>
<label for="inputBirth">생년월일
    <input type="text" name="user_birth" class="form-control" value="${vo.user_birth }" readonly="readonly" required></label>
<label for="inputPhone">전화번호
    <input type="text" name="user_phone" class="form-control" value="${vo.user_phone }" readonly="readonly" required></label>    
<br>
<br>
</form>
<button class="btn btn-lg btn-secondary btn-block" type="button" onclick="userModify()">정보 수정</button>
<button class="btn btn-lg btn-secondary btn-block" type="button" onclick="userDelete()">회원탈퇴</button>
</div >
</div>
<footer>
<%@ include file="../foot/footer.jsp" %>
</footer>
</body>
</html>