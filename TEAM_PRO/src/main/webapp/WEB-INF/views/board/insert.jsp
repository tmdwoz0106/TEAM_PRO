<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board/insert.js"></script>
</head>
<body>
<form id="insertForm">
<input type="hidden" name="board_no" value="${max}" readonly="readonly"/>
<input type="hidden" name="user_no" value="${user_no}" readonly="readonly"/>
<table border="1" width="50%">
	<tr>
		<td>분류</td>
		<td>제목</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>
			<select name="board_type">
				<option value="자유게시판">자유게시판</option>
				<option value="질문코너">질문코너</option>
				<option value="tip">tip</option>
				<option value="구인구직">구인구직</option>
				<option value="강의 영상">강의 영상</option>
			</select>
		</td>
		<td><input type="text" name="board_title" /></td>
		<td><input type="text" name="board_content" /></td>
	</tr>
</table>
</form>
<button type="button" onclick="insert()">게시물 추가</button> |
<a href="/"><button>홈</button></a>
</body>
</html>