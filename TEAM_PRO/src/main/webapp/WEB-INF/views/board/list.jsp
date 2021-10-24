<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board/list.js">
function logout(){
	$.ajax({
		url:"/logout.do",
		type:"POST",
		dataType:"JSON",
		success : function(reuslt){
			alert("로그아웃");
			location.href = "/";
		}
	})
}
</script>
</head>
<body>
<h1>게시판</h1>
<label>검색</label>
	<select id="type">
		<option value="board_content">게시글</option>
		<option value="board_title">제목</option>
		<option value="user_nick">작성자</option>
		<option value="board_type">분류</option>
	</select>
<label>검색</label>
	<input type="text" id="keyword" />
	<button type="button" onclick="list(1)">검색</button>
	
	<table border="1" width = "70%">
		<tr>
			<td>타입</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
			<td>좋아요</td>
		</tr>
		<tbody id="tbody"></tbody>
	</table>
	
	<div id="paging"></div>
	<c:if test="${user_no ne null }">
		<a href="/BoardInsert.do"><button>게시글쓰기</button></a>
		<button type="button" onclick="logout()">로그아웃</button>
	</c:if>
	<c:if test="${user_no eq null }">
		<a href="/login.do"><button>로그인</button></a>
	</c:if>
	
</body>
</html>