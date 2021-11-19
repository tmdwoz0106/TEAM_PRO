<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/board/modify.js"></script>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>locode :: 글쓰기</title>

    <style>
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

    
    <!-- Custom styles for this template -->
    <link href="./resources/css/board/boardModify.css" rel="stylesheet">
</head>
<body>
<%@ include file="../haed/header.jsp" %>
<br />
<br>
<form id="modifyForm" action="/ModifyBoard.do" method="POST" enctype="multipart/form-data">
<input type="hidden" name="board_no" value="${vo.board_no }" id="Board_NO"/>
<div class="mt-4 mb-4 container">
              <div class="board-title">
                  <h2>이야기를 나눠요</h2>
                  <h4>62만명의 커뮤니티!! 함께 토론해봐요.</h4>
              </div>

              <div class="container mb-3 mt-4" role="main">
<%--                   <form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">                    --%>
                    
                    <div class="mb-3">
                        <label for="tag"><b>분류</b></label>
                        <select class="form-inline" name="board_type">
                            <option value="자유게시판">자유게시판</option>
							<option value="질문코너">질문코너</option>
							<option value="tip">tip</option>
							<option value="구인구직">구인구직</option>
							<option value="강의 영상">강의 영상</option> 
                        </select> 
                    </div>
            
                    <div class="mb-3">
                        <label for="title"><b>제목</b></label>
                        <input type="text" class="form-control" name="board_title" value="${vo.board_title }">
                    </div>    
            
                    <div class="mb-3">
                        <label for="content"><b>내용</b></label>
                        <textarea class="form-control" rows="5" name="board_content"></textarea>
                    </div>   
                    
                    <div class="mb-2">
                        <label for="file"><b>파일첨부</b></label>
                        <input type="file" name="file" multiple="multiple" class="form-inline" id="File"/>
                    </div>
                    
                    <hr/>
                    
                    <div class="mb-4 shadow-sm">
                      <label for="imgCard"><b>기존 사진</b></label>
                        <div class="row">
                          <div class="col-md-4">
                            <div class="card mb-4 shadow-sm">
                              <!-- 기존 이미지가 들어갈 곳-->
                              <c:forEach var="vo" items="${list}">
									<img src="/resources/img/${vo.file_name }">
							  </c:forEach>
                            </div>
                          </div>
                        </div>
                    </div>
                
                  </form>
            
                <div class="text-right">
                    <button type="submit" class="btn btn-sm btn-secondary" id="btnSave">수정하기</button>
                    <a href="/"><button type="button" class="btn btn-sm btn-secondary" id="btnList">목록</button></a>
                </div>
            </div>
            </div>

<!-- <table> -->
<!-- 	<tr> -->
<!-- 		<td>분류</td> -->
<!-- 		<td>제목</td> -->
<!-- 		<td>내용</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td> -->
<!-- 			<select name="board_type"> -->
<!-- 				<option value="자유게시판">자유게시판</option> -->
<!-- 				<option value="질문코너">질문코너</option> -->
<!-- 				<option value="tip">tip</option> -->
<!-- 				<option value="구인구직">구인구직</option> -->
<!-- 				<option value="강의 영상">강의 영상</option> -->
<!-- 			</select> -->
<!-- 		</td> -->
<%-- 		<td><input type="text" name="board_title" value="${vo.board_title }"/></td> --%>
<%-- 		<td><input type="text" name="board_content" value="${vo.board_content }"/></td> --%>
<!-- 	</tr> -->
<!-- </table> -->
<!-- <input type="file" name="file" multiple="multiple" /> -->
<!-- <br> -->
<!-- <button type="submit">수정하기</button> -->
<!-- </form> -->
<!-- <a href="/"><button>홈으로</button></a> -->
<!-- <p>기존사진</p> -->
<%-- 	<c:forEach var="vo" items="${list}"> --%>
<%-- 		<img src="/resources/img/${vo.file_name }" style="width: 150px; height: 150px;"> --%>
<%-- 	</c:forEach> --%>
<!-- <br /> -->
</body>
</html>