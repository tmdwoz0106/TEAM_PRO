<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.my-box 
{ border:1px solid;
  width: 500px;
  padding: 20px;
  margin: 30px;
  border-radius: 4px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function BoardDelete(){
	if (confirm("정말 삭제하시겠습니까") == true){
		$.ajax({
			url:"/BoardDelete.do",
			type:"POST",
			data:$("#deleteForm").serialize(),
			dataType:"JSON",
			success : function(result){
				alert("삭제하였습니다");
				location.href = "/";
			}
		})
	}
}
function like(board_no,user_no,like_no){
	$.ajax({
		url:"/like.do",
		type:"POST",
		data:{board_no:board_no , user_no:user_no , like_no:like_no},
		dataType:"JSON",
		success : function(result){
			location.href = "/BoardDetail.do?board_no="+$("#Board_NO").val();
		}
	})
}
function likeDelete(board_no,user_no){
	$.ajax({
		url:"/likeDelete.do",
		type:"POST",
		data:{board_no:board_no , user_no:user_no},
		dataType:"JSON",
		success : function(result){
			location.href = "/BoardDetail.do?board_no="+$("#Board_NO").val();
		}
	})
}
</script>
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
	 <c:if test="${likeBtn > 0 and user_no ne 0}">
		<button style="border: none; background: none; font-size: 13px;" onclick="likeDelete(${vo.board_no},${user_no})">싫어요~꾹</button>
	</c:if>
	<c:if test="${likeBtn <= 0 and user_no ne 0}">
		<button style="border: none; background: none; font-size: 13px;" onclick="like(${vo.board_no},${user_no},${likeMax })">좋아요~꾹</button>
	</c:if>
	
	<div>
	<c:forEach var="reply" items="${list }">
	
	</c:forEach>
	<div class="my-box">
			<em class="comment_inbox">${vo.user_nick }</em>
			<br />
			<textarea placeholder="댓글을 남겨주세요" class="comment_inbox" rows="1" style="overflow: hidden; overflow-wrap: break-word; height: 19px; margin: 0px -5px 0px 0px; border: none; width: 498px; font-size: 15px; outline: none; resize: none;"></textarea>
			<button style="border: none; background-color: none;">등록</button>
			<button>취소</button>
	</div>
	</div>
</form>
</body>
</html>