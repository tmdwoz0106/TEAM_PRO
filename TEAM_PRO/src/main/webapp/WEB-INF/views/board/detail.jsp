<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.my-box 
{ border:1px solid;
  border-color: gray;
  width: 500px;
  padding: 20px;
  margin: 10px;
  border-radius: 4px;
}
textarea{
font-family : "돋움";
color : #666666;
border : 1px #c9c9c9 solid;
}
.searchModal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 10; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.search-modal-content {
background-color: #fefefe;
margin: 15% auto; /* 15% from the top and centered */
padding: 20px;
border: 1px solid #888;
width: 25%; /* Could be more or less, depending on screen size */
}

출처: https://newehblog.tistory.com/28 [웹쟁이의 일상]

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/reply/reply_comment.js"></script>
<script type="text/javascript" src="/resources/js/reply/reply_delete.js"></script>
<script type="text/javascript" src="/resources/js/reply/reply_modify.js"></script>
<script type="text/javascript" src="/resources/js/like/like.js"></script>
<script type="text/javascript" src="/resources/js/board/delete.js"></script>
</head>
<body>
<c:if test="${user_no eq vo.user_no }">
<a href="/BoardModify.do?board_no=${vo.board_no }"><button>수정</button></a> |
<button type="button" onclick="BoardDelete()">삭제</button> |
</c:if>
<a href="/"><button>홈</button></a>
<form id="deleteForm">
<input type="hidden" name="user_no" value="${vo.user_no }" readonly="readonly" />
<input type="hidden" name="board_no" value="${vo.board_no }" readonly="readonly" id="Board_NO"/>
	<table border="1">
		<tr>
			<td>분류</td>
			<td><input type="text" name="board_type" value="${vo.board_type }" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="board_title" value="${vo.board_title }" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="board_content" value="${vo.board_content }" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="user_nick" value="${vo.user_nick }" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><input type="text" name="board_day" value="${vo.board_day }" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>조회수</td>
			<td><input type="text" name="board_view" value="${vo.board_view }" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>좋아요</td>
			<td><input type="text" name="board_like" value="${like}" readonly="readonly" /></td>
		</tr>
	</table>
	</form>
	 <c:if test="${likeBtn > 0 and user_no ne 0}">
		<button style="border: none; background: none; font-size: 13px;" onclick="likeDelete(${vo.board_no},${user_no})">싫어요~꾹</button>
	</c:if>
	<c:if test="${likeBtn <= 0 and user_no ne 0}">
		<button style="border: none; background: none; font-size: 13px;" onclick="like(${vo.board_no},${user_no},${likeMax })">좋아요~꾹</button>
	</c:if>
	
	<div>
	<c:if test="${user_no ne 0 }">
	<div class="my-box" id="reply_box">
			<em class="comment_inbox">${vo.user_nick }</em>
			<textarea placeholder="댓글을 남겨주세요" class="comment_inbox" rows="2" cols="3" style="height: 19px; margin: 0px -5px 0px 0px; border: none; width: 498px; font-size: 15px; outline: none; resize: none; max-height: 500px;" id="TextArea"></textarea>
			<button style="font-size: 13px; color: #b7b7b7; background: none; border: none;" onclick="comment_add(0,0)">등록</button>
	</div>
	</c:if>
	<c:forEach var="reply" items="${list }">
		<c:forEach begin="0" end="${reply.reply_depth }">
		<c:if test="${reply.reply_group == 0}">
		<div class="my-box" id="reply_box" style="border: none;">
			<div style="font-size: 17px;">${reply.user_nick}</div>
			<div style="font-size: 17px;">${reply.reply_content}</div>
			<div style="font-size: 14px;">${reply.reply_day}<button style="background: none; border: none;" onclick="reply_open(${reply.reply_no},${reply.reply_depth+1})">답글</button>
					<div id="reply_li"></div>
        		    <c:forEach begin="${reply.reply_no }" end="${reply.reply_no }">
        		    <a class="menu" style="background: none;"><img src="/resources/메뉴바1.png" width="13" height="13" onclick="menu(${reply.reply_no})" id="reply_img"/></a>
            			<ul class="hide" style="display: none;">
                			<li onclick="reply_modify(${reply.reply_no})">수정</li>
                			<li onclick="reply_delete(${reply.reply_no})">삭제</li>
                			<li onclick="reply_content_open()">댓글 보기</li>
            			</ul>
            		</c:forEach>
			</div>
		</div>
			</c:if>
			<div class="my-box" style="display: none;" id="reply_open_box">
				<em class="comment_inbox">${vo.user_nick }</em>
				<textarea placeholder="댓글을 남겨주세요" class="comment_inbox" rows="2" cols="3" style="height: 19px; margin: 0px -5px 0px 0px; border: none; width: 498px; font-size: 15px; outline: none; resize: none; max-height: 500px;" id="reply_TextArea"></textarea>
				<button style="font-size: 13px; color: #b7b7b7; background: none; border: none;" onclick="reply_comment_add()">등록</button>
				<button style="font-size: 13px; color: #b7b7b7; background: none; border: none;" onclick="comment_cancle()">취소</button>
			</div>
	</c:forEach>

		<div>
		<c:if test="${reply.reply_depth != 0 }">
			<div style="font-size: 17px;">&nbsp;&nbsp;&nbsp;&nbsp;${reply.user_nick}</div>
			<div style="font-size: 17px;">&nbsp;&nbsp;&nbsp;&nbsp;${reply.reply_content}</div>
			<div style="font-size: 14px;">&nbsp;&nbsp;&nbsp;&nbsp;${reply.reply_day}</div>
		</c:if>
		</div>
	</c:forEach>
	</div>

	<div id="modal" class="searchModal">
		<div class="search-modal-content">
			<div class="page-header">
				<h1>댓글</h1>
			</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="row">
				<div class="col-sm-12">
					<textarea id="textArea" style="width: 375px; height: 83px; resize: none;"></textarea>
				</div>
				</div>
			</div>
		</div>
			<hr>
				<div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px; width: 100px" onClick="closeModal();">
				<span class="pop_bt modalCloseBtn" style="font-size: 13pt;" onclick="reply_modify_add()">수정</span> | 
				<span class="pop_bt modalCloseBtn" style="font-size: 13pt;" onclick="reply_modify_cancle()">취소</span>
			</div>
		</div>
		</div>


<form action="/replyInsert.do" id="reply_insert" method="get">
	<input type="text" name="reply_no" value="${replyMax }"/>
	<input type="text" name="board_no" value="${vo.board_no }"/>
	<input type="text" name="user_no" value="${user_no }" />
	<input type="text" name="reply_content" id="content" />
	<input type="text" name="reply_day" />
	<input type="text" name="reply_group" value="0" id="reply_group"/>
	<input type="text" name="reply_depth" value="0" id="reply_depth"/>
</form>

<!-- <form action="/replyModify.do" id="reply_modify" method="get"> -->
<!-- 	<input type="text" name="reply_no" id="reply_NO"/> -->
<%-- 	<input type="text" name="board_no" value="${vo.board_no }"/> --%>
<%-- 	<input type="text" name="user_no" value="${user_no }" /> --%>
<!-- 	<input type="text" name="reply_content" id="content" /> -->
<!-- 	<input type="text" name="reply_day" /> -->
<!-- </form> -->
</body>
</html>