<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#body{
	margin: auto;
	width: 80%;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board2/typeList.js"></script>
<link href="/resources/css/board/list.css" rel="stylesheet" type="text/css"/>
<link href="/resources/css/board/board.css" rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<header>
<%@ include file="../haed/header.jsp" %>
</header>
<body id="body">
<input type="hidden" id="board_type" value="${board_type}" name="board_type"/>
<input type="hidden" id="board_content" value="${content }" name="board_content"/>
	<br />
	<br />
	<br />
<form class="row justify-content-end my-3" action="">
<div class="col-2 input-group">
	<select class="form-control" id="type">
		<option value="board_content">게시글</option>
		<option value="board_title">제목</option>
		<option value="user_nick">작성자</option>
		<option value="board_day">날짜</option>
	</select>
	</div>
	<div class="col-4 input-group">
	<input type="text" class="form-control" id="keyword" placeholder="검색어를 입력하세요"/>
	<div class="input-group-append">
		<button class="btn btn-secondary" type="button" onclick="list(1)">검색</button>
	</div> 
</div>
</form>
<table class="table table-hover">
		<tr>
			<td>타입</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
			<td>좋아요</td>
		</tr>
		<tbody id="tbody2"></tbody>
	</table>
	<hr />
	
	<div class="text-right">
	<c:if test="${user_no == 0 }">
		<a href="/" class="btn btn-secondary">메인</a>
	</c:if>
	<c:if test="${user_no != 0 }">
		<a href="/TypeInsert.do" class="btn btn-secondary">글쓰기</a>
		<a href="/main.do" class="btn btn-secondary">메인</a>
	</c:if>
	
	</div>
	<div id="paging">
	<ul class="pagination justify-content-center">
	<li class="page-item">
	 <a class="page-link" href="#" aria-label="Previous">
	 </a>
	 </li>
	 </ul>
	</div>
</body>
<footer>
<%@ include file="../foot/footer.jsp" %>
</footer>
</html>