<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board/modify.js"></script>
</head>
<body>
<h1>수정</h1>
<form id="modifyForm" action="/ModifyBoard.do" method="POST" enctype="multipart/form-data">
<input type="hidden" name="board_no" value="${vo.board_no }" />
<table>
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
		<td><input type="text" name="board_title" value="${vo.board_title }"/></td>
		<td><input type="text" name="board_content" value="${vo.board_content }"/></td>
	</tr>
</table>
<input type="file" name="file" multiple="multiple" />
<br>
<button type="submit">수정하기</button>
</form>
<a href="/"><button>홈으로</button></a>
<p>기존사진</p>
	<c:forEach var="vo" items="${list}">
		<img src="/resources/img/${vo.file_name }" style="width: 150px; height: 150px;">
	</c:forEach>
<br />
</body>
</html>