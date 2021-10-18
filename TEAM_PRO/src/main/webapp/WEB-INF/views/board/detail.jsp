<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
<input type="hidden" name="board_no" value="${vo.board_no }" readonly="readonly" />
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
			<td></td>
		</tr>
	</table>
</form>
</body>
</html>