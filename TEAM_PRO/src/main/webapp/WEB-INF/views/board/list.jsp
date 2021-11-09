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
<link href="/resources/css/board/board.css" rel="stylesheet" type="text/css"/>
<%@ include file="/WEB-INF/views/haed/header.jsp" %>
<script type="text/javascript">
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
<form class="row justify-content-end my-3" action="">
<div class="col-2 input-group">
            <select class="form-control" id="type">
                <option value="board_content">게시글</option>
                <option value="board_title">제목</option>   
                <option value="user_nick">작성자</option>   
                <option value="board_type">분류</option>   
            </select>  
            </div>
            <div class="col-4 input-group">
            <input type="text" class="form-control" id="keyword" placeholder="검색어를 입력하세요" value="">
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
		<tbody id="tbody"></tbody>
	</table>
	<hr/>

    <div class="text-right">
    <c:if test="${user_no != 0 }">
        <a href="/BoardInsert.do" class="btn btn-secondary">글쓰기</a>
        <a href="/main.do" class="btn btn-secondary">메인</a>
    </c:if>
    <c:if test="${user_no == 0 }">
		<a href="/main.do" class="page-item active">메인</a>
	</c:if>
    </div>
    
	<div id="paging" class="pagination justify-content-center"></div>

	<button value="1"></button>

	<%@ include file="/WEB-INF/views/foot/footer.jsp" %>
</body>
</html>