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
#searchbtn {
	background-color: #6c757d;
	color: white;
	border: 0px;
	outline: 0px;
	border-radius: 4px;
}
#searchbtn:hover {
	background-color: #5a6268;
	border-color: #545b62;
}
</style>
<link href="/resources/css/board/list.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./resources/js/board2/list.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/board/board.css" rel="stylesheet" type="text/css"/>
<jsp:include page="/resources/public/logo_div.jsp"></jsp:include>
</head>
<header>
<%@ include file="../haed/header.jsp" %>
</header>
<body id="body">
	<br />
	<br />
	<br />
	<form class="row justify-content-end my-3" action="">
		<input type="hidden" value="${board_Type }" id=board_Type />
		<div class="col-2 input-group">
			<select class="form-control" id="type">
				<option value="board_content">게시글</option>
				<option value="board_title">제목</option>
				<option value="user_nick">작성자</option>
				<option value="board_day">날짜</option>
			</select>
			</div>
			 <div class="col-4 input-group">
            <input type="text" class="form-control" id="keyword" placeholder="검색어를 입력하세요" value="">
             <div class="input-group-append"> 
             <button type="button" onclick="list(1)" id="searchbtn">검색</button>
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
	<c:if test="${user_no ne 0 }">
		<a href="/TypeInsert.do?board_type=${board_Type }" class="btn btn-secondary">글쓰기</a>
		<a href="/" class="btn btn-secondary">메인</a>
	</c:if>
	 <c:if test="${user_no == 0 }">
		<a href="/" class="btn btn-secondary">메인</a>
	</c:if>
	</div>
	
	<div id="paging" class="pagination justify-content-center"></div>
	
</body>
<footer>
<%@ include file="../foot/footer.jsp" %>
</footer>
</html>