<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./resources/js/board/insert.js"></script>

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
    <link href="\resources\css\board\boardWrite.css" rel="stylesheet">
</head>
<body>
<header>
	<%@ include file="../haed/header.jsp" %>
</header>
  <div class="mt-4 mb-4 container">
              <div class="board-title">
                  <h2>이야기를 나눠요</h2>
                  <h4>62만명의 커뮤니티!! 함께 토론해봐요.</h4>
              </div>

              <div class="container mb-3 mt-4" role="main">
                  <form name="form" id="form" role="form" action="/InsertBoard.do" method="POST" enctype="multipart/form-data">                   
                    <input type="hidden" name="board_no" value="${max}" readonly="readonly"/>
					<input type="hidden" name="user_no" value="${user_no}" readonly="readonly"/>
                    <div class="mb-3">
                        <label for="tag"><b>분류</b></label>
                        <select class="form-inline" name="board_type" id="board_Type">
                            <option value="자유게시판">자유게시판</option>
							<option value="질문코너">질문코너</option>
							<option value="tip">tip</option>
							<option value="구인구직">구인구직</option>
							<option value="강의 영상">강의 영상</option> 
                        </select> 
                    </div>
            
                    <div class="mb-3">
                        <label for="title"><b>제목</b></label>
                        <input type="text" class="form-control" name="board_title" id="title" placeholder="제목을 입력해 주세요">
                    </div>    
            
                    <div class="mb-3">
                        <label for="content"><b>내용</b></label>
                        <textarea class="form-control" rows="5" name="board_content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
                    </div>   
            

                    <hr/>
                    
                    <div class="mb-2">
                        <label for="file"><b>파일첨부</b></label>
                        <input type="file" name="file" multiple="multiple" class="form-inline" />
                    </div>
                    
                <div class="text-right">
                    <button type="submit" class="btn btn-sm btn-secondary" id="btnSave" onclick="autolink(${content})">저장</button>
                    <a href="/"><button type="button" class="btn btn-sm btn-secondary" id="btnList">목록</button></a>
                </div>
                </form>
            </div>
            </div>
<footer>
	<%@ include file="../foot/footer.jsp" %>
</footer>
</body>
</html>