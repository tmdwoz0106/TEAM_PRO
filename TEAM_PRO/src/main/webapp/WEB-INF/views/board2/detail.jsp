<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
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

.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
 <link href="/resources/css/board/detail.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/reply/reply_comment.js"></script>
<script type="text/javascript" src="/resources/js/reply/reply_delete.js"></script>
<script type="text/javascript" src="/resources/js/reply/reply_modify.js"></script>
<script type="text/javascript" src="/resources/js/like/like.js"></script>
<script type="text/javascript" src="/resources/js/board2/delete.js"></script>
<script type="text/javascript" src="./resources/js/board/detail.js"></script>
<jsp:include page="/resources/public/logo_div.jsp"></jsp:include>
<!-- <!-- <script type="text/javascript"> --> -->
<!-- // function content(){ -->
<!-- // var memo1 = $("#content").val(); -->
<!-- // console.log($("#content").val()); -->
<!-- // console.log(memo1); -->
<!-- // 	var userPatterns = { -->
<!-- // 	  'url'   : /^([A-Za-z]{1}[A-Za-z\d_]*\.)*[A-Za-z][A-Za-z\d_]*$/ -->
<!-- // 	} -->
	
<!-- // 	var userReplaceFunctions = { -->
<!-- // 	  'url'  : function(_url){return '<a href="' + _url + '">'+ _url +'</a>'} -->
<!-- // 	} -->
	
<!-- // 	var memo2 = memo1.replace(userPatterns['url'], userReplaceFunctions['url']) -->
<!-- // 	$("#autolink").append("<a href = memo2>"+memo2+"</a>"); -->
<!-- // } -->
<!-- // $(function(){ -->
<!-- // 	content(); -->
<!-- // }) -->

<!-- <!-- </script> --> -->
</head>
<header>
<%@include file="../haed/header.jsp" %>
</header>
<body>
<br />
<br />
<div class="mt-4 mb-4 container">
              <div class="board-title">
                  <h2>이야기를 나눠요</h2>
                  <h4>62만명의 커뮤니티!! 함께 토론해봐요.</h4>
              </div>
     <div class="container" role="detail">
                     
<form id="deleteForm" action="/TypeDelete.do" method="POST">
<input type="hidden" name="board_type" value="${board_type }" id="Board_Type" />
<input type="hidden" name="user_no" value="${vo.user_no }" readonly="readonly" />
<input type="hidden" name="board_no" value="${vo.board_no }" readonly="readonly" id="Board_NO"/>
</form>
                    <div class="mt-4 mb-4">
                        <h2>
                            <img src="/resources/img2/qna.png" alt="" width="40" height="40">
                            <c:out value=""/>${vo.board_title }
                        </h2>
                        <hr/>
                          <div class="mb-3">
                            <h5 class="board_">▶
                              <c:out value=""/>${vo.board_type}
                            </h5>
                          </div>
                          <div class="mb-2">
                            <span class="board_writer"><b><c:out value="작성자 : "/>${vo.user_nick }</b></span><h6></h6>
                            <span class="board_data text-muted"><c:out value="작성날 : "/>${vo.board_day }</span><h6></h6>
                            <span class="board_writer">조회수 : <c:out value="조회수 : "/>${vo.board_view }</span><h6></h6>
                            <span class="board_writer"><c:out value="좋아요 : "/>${like}</span>
                          </div>
                          <hr/>
                      </div>
                                        
                        <div class="board_content" id="autolink" style="width: 400px; height: 190px;" >
						<input type="hidden" name="board_content" id="content" value="${vo.board_content }" readonly="readonly" style="border: none; width: 400px;"  />
                        </div>
                        <hr />
                        <table>
                        <td>
                        <div id="IMG2">
                        		<c:forEach var="File" items="${file}">
									<img src="/resources/img/${File.file_name}" id="IMG" style="width: 300px; height: 350px;" onclick="big()"/>
								</c:forEach>
						</div>		
						</td>
						</table>
                          <hr/>
                          <div class="container text-right">
                          <c:if test="${likeBtn <= 0 and user_no ne 0}">
                            <button type="button" class="btn btn-sm btn-outline-danger" onclick="like(${vo.board_no},${user_no},${likeMax })">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg> Like</button>
        				 </c:if>
        				 <c:if test="${likeBtn > 0 and user_no ne 0}">
                            <button type="button" class="btn btn-sm btn-outline-danger" onclick="likeDelete(${vo.board_no},${user_no})"> 
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg> Bad</button>
        				 </c:if>
                          <c:if test="${user_no eq vo.user_no }">
                            <a href="/BoardModify.do?board_no=${vo.board_no }"><button type="button" class="btn btn-sm btn-outline-secondary" id="btnUpdate">수정</button></a>
                            <button type="button" class="btn btn-sm btn-outline-secondary" id="btnDelete" onclick="BoardDelete()">삭제</button>
                          </c:if>
                            <a href="/ListType.do?board_type=${vo.board_type}"><button type="button" class="btn btn-sm btn-outline-secondary" id="btnList">목록</button></a>
                          </div>
                          
                          <form id="commentForm" name="commentForm" method="post">
                            <br/>
                                    <div>
                                        <span><b>Comments</b></span><span id=""></span>
                                    </div>
                                    
                                        <table class="table">                    
                                            <tr>
                                                <td>
                                                    <textarea style="width: 1060px" rows="4" cols="30" id="TextArea" name="comment" placeholder="댓글을 입력하세요"></textarea>
                                                    <br>
                                                    <div class="text-right">
                                                    <c:if test="${user_no ne 0 }">
                                                        <a href='#' onclick="comment_add(0,0)" class="btn btn-sm btn-outline-secondary">등록</a>
                                                    </c:if>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <input type="hidden" id="" name="" value="" />        
                           </form>
                      </div>

	
	<div>
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
				<em class="comment_inbox">${user_nick }</em>
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


<form action="/replyInsert.do" id="reply_insert" method="get" style="display: none;">
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
<footer>
<%@ include file="../foot/footer.jsp" %>
</footer>
</body>
</html>