<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board2/list.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<header>
<%@ include file="../haed/header.jsp" %>
</header>
<body>
	<br />
	<br />
	<br />
	<br />
	<br />
<input type="hidden" value="${type }" id="type" />
<label>검색</label>
	<select id="type">
		<option value="board_content">게시글</option>
		<option value="board_title">제목</option>
		<option value="user_nick">작성자</option>
		<option value="board_day">날짜</option>
	</select>
<label>검색</label>
	<input type="text" id="keyword"/>
	<button type="button" onclick="list(1)">검색</button>
	
<table border="1" width = "70%">
		<tr>
			<td>타입</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<tbody id="tbody2"></tbody>
	</table>
	<div id="paging"></div>
</body>
<footer>
<%@ include file="../foot/footer.jsp" %>
</footer>
</html>