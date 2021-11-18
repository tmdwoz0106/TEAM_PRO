<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="./resources/js/social/naverLoginserv.js" ></script>
<script type="text/javascript" src="./resources/js/social/socialajax.js" ></script>

</head>
<body>		
	<form id="sslogin"  >
	<input type="hidden" name="user_id" value="${ssID}"  />
	</form>
	<button type="button" id="myHiddenForm" onclick="sslogin()" ></button>
</html>