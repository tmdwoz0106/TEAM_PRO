<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/haed/header.jsp" %>
<style type="text/css">
#body{
	margin: auto;
	width: 80%;
}
button{
	border: 0;
	outline: 0;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/user/list.js"></script>
<!-- <script type="text/javascript" src="resources/js/user/userDelete"></script> -->
</head>
<body id="body">
<br />
<br />
<br />
<form class="row justify-content-end my-3" action="">
<div class="col-2 input-group">
            <select class="form-control" id="type">
                <option value="user_id">아이디</option>
                <option value="user_phone">전화번호</option>   
                <option value="user_nick">닉네임</option>   
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
			<td>번호</td>
			<td>아이디</td>
			<td>닉네임</td>
			<td>생년월일</td>
			<td>전화번호</td>
			<td></td>
		</tr>
		<tbody id="tbody"></tbody>
	</table>
	<hr/>

    <div class="text-right">
    </div>
    
	<div id="paging" class="pagination justify-content-center"></div>

	<%@ include file="/WEB-INF/views/foot/footer.jsp" %>

</body>
</html>