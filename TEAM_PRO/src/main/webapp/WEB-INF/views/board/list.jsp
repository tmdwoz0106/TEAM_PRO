<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<!-- <script src="/resources/js/naver.js"></script> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function list(page){
	$.ajax({
		url:"/listGET.do",
		type:"GET",
		data:{page:page, keyword:$("#keyword").val(), type:$("#type option:selected").val()},
		dataType:"JSON",
		success : function(result){
			console.log(result.list);
			$("#tbody").empty();
			$("#paging").empty();
			var list = result.list;
			for(var i = 0; i <list.length; i++){
				$.ajax({
					url:"/likeSu.do",
					type:"GET",
					data:{board_no:list[i].board_no},
					dataType:"JSON",
					async: false,
					success : function(likeSu){
						console.log(likeSu);
						var html = "<tr>"
				   		html += "<td>"+list[i].board_type+"</td>"
				   		html += "<td><a href = /BoardDetail.do?board_no="+list[i].board_no+">"+list[i].board_title+"</td>"
				    	html += "<td>"+list[i].user_nick+"</td>"
				    	html += "<td>"+list[i].board_day+"</td>"
				   	 	html += "<td>"+list[i].board_view+"</td>"
				   	    html += "<td>"+likeSu.su+"</td>"
				     	html += "<td>"+list[i].user_no+"</td>"
						$("#tbody").append(html);				
					}
				})
				
			}
			if(result.prev){
				$("#paging").append("<button onclick = list("+Number(page-1)+")>이전</button>")
			}
			for(var i = result.startPage; i <= result.endPage; i++){
				$("#paging").append("<button onclick = list("+i+")>"+i+"</button>")
			}
			if(result.next){
				$("#paging").append("<button onclick = list("+Number(page+1)+")>다음</button>")
			}
		}
	})
}
$(function(){
	list(1);
})
function logout(){
	$.ajax({
		url:"/logout.do",
		type:"POST",
		dataType:"JSON",
		success : function(reuslt){
			naverLogout();
			alert("로그아웃!!");
			location.href = "/";
		}
	})
}
// function naverlogout(){
// 	$.ajax({
// 		url:"/nid.naver.com/nidlogin.logout",
// 		type:"POST",
// 		dataType:"JSON",
// 		success : function(reuslt){
// 			naverLogout();
// 			alert("네이버 로그아웃!!");
// 			location.href = "/";
// 		}
// 	})
// }

function naverLogout(){
	
	$(document).ready( function () {
		alert("네이버로그아웃!");
		location.href = "/http://nid.naver.com/nidlogin.logout";
	});
	
}

</script>
</head>
<body>
<h1>게시판</h1>
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
			<td>회원번호</td>
		</tr>
		<tbody id="tbody"></tbody>
	</table>
	
	<div id="paging"></div>
	<c:if test="${user_no ne null }">
		<a href="/BoardInsert.do"><button>게시글쓰기</button></a>
		<button type="button" onclick="logout()">로그아웃</button>
	</c:if>
	<c:if test="${user_no eq null }">
		<a href="/login.do"><button>로그인</button></a>
		
	</c:if>
	
	
	<script type="text/javascript">
    var naverLogin = new naver.LoginWithNaverId(
            {
                clientId: "Kxm25o90mXmhCTTosotq", 
                //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                callbackUrl: "http://localhost:8088/login.do",
                // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                isPopup: false,
                callbackHandle: true
            }
        );	


    naverLogin.init();

    window.addEventListener('load', function () {
    naverLogin.getLoginStatus(function (status) {
        if (status) {
            var email = naverLogin.user.getEmail();
            // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
            //console.log(email);
            alert(email);
            let url ='/test';
            fetch(url+"?user_id="+email)
            .then()
           location.href="/nlogin.do";
            
            
            if( email == undefined || email == null) {
                alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                naverLogin.reprompt();
                return;
            }
        } else {
            console.log("callback 처리에 실패하였습니다.");
        }
    });
    });


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
    setTimeout(function() {
        closePopUp();
        }, 1000);

    }
	
	
	</script>
	
</body>
</html>