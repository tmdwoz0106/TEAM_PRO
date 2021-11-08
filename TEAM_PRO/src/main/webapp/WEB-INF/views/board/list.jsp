<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#body{
	margin: auto;
	width: 80%;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/board/list.css" rel="stylesheet" type="text/css"/>
<script src="/resources/js/googleLogin.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="/resources/js/kakaoLogin.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board/list.js">
<script type="text/javascript" src="/resources/js/board/logout.js"></script>
<%@ include file="/WEB-INF/views/haed/header.jsp" %>
<script type="text/javascript">
// function list(page){
// 	$.ajax({
// 		url:"/listGET.do",
// 		type:"GET",
// 		data:{page:page, keyword:$("#keyword").val(), type:$("#type option:selected").val()},
// 		dataType:"JSON",
// 		success : function(result){
// 			console.log(result.list);
// 			$("#tbody").empty();
// 			$("#paging").empty();
// 			var list = result.list;
// 			for(var i = 0; i<list.length; i++){
// 				var html ="<tr>"
// 				    html +="<td>"+list[i].board_type+"</td>"
// 				    html +="<td><a href = /BoardDetail.do?board_no="+list[i].board_no+">"+list[i].board_title+"<a></td>"
// 				    html +="<td>"+list[i].user_nick+"</td>"
// 				    html +="<td>"+list[i].board_day+"</td>"
// 				    html +="<td>"+list[i].board_view+"</td>"
// 				    html +="<td></td>"
// 				    $("#tbody").append(html);
// 			}
// 			if(result.prev){
// 				$("#paging").append("<button onclick = list("+Number(page-1)+")>이전</button>")
// 			}
// 			for(var i = result.startPage; i <= result.endPage; i++){
// 				$("#paging").append("<button onclick = list("+i+")>"+i+"</button>")
// 			}
// 			if(result.next){
// 				$("#paging").append("<button onclick = list("+Number(page+1)+")>다음</button>")
// 			}
// 		}
// 	})
// }

// $(function(){
// 	list(1);
//   })

// function logout(){
// 	$.ajax({
// 		url:"/logout.do",
// 		type:"POST",
// 		dataType:"JSON",
// 		success : function(reuslt){
// 			alert("로그아웃");
// 			location.href = "/";
// 		}
// 	})
// }

var testPopUp;
	function openPopUp() {
	    testPopUp= window.open("https://nid.naver.com/nidlogin.logout",
	          "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
	}
	function closePopUp(){
	    testPopUp.close();
	}

	function naverLogout() {
	   openPopUp();
	   setTimeout(function(){
	      closePopUp();
	      }, 1000);
	}
	

</script>
</head>
<body id="body">
<br />
<br />
<br />
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
	<c:if test="${user_no != 0 }">
		<a href="/BoardInsert.do"><button>게시글쓰기</button></a>
		<a href="/main.do"><button>메인</button></a>
		<button type="button" onclick="logout()">로그아웃</button>
		
	</c:if>
	<c:if test="${user_no == 0 }">
		<a href="/main.do"><button>메인</button></a>
	</c:if>
	<%@ include file="/WEB-INF/views/foot/footer.jsp" %>
</body>
</html>