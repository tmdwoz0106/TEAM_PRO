 var i = 0;
 var max_length = 0;
 function Previous() {
 	if(i != 0){
 	--i
 	send();
 	}else{
 	i = max_length-1
 	send();
 	}
 	
 }
 function Next() {
 	if(max_length-1 > i){
 		++i
 	send();
 	}else{
 	i = 0;
 	send();
 	}
 }
 
 $(document).ready(function(){
 				$("#headerimg2").on("click", (e)=> {
				history.back();
				});
                $("#search").click(function(){
                	send();
                });
            });
function send() {
	 $.ajax({
		// 요청 정보
		method: "GET", // 전송 방식
		url: "https://dapi.kakao.com/v3/search/book?target=title", // 전송 주소
		// id가 bookName인 요소에 접근 다시 접근해서 val(밸류값)에 접근
		data: { query: $("#bookName").val() }, // 보낼 데이터
		headers: {Authorization: "KakaoAK 5549fbcd09db2958ecf5868aa03df0e1"}
	})
	.done(function (msg) {
	// 요청에 대한 응답이 오면 처리하는 실행문
	// let title = msg.documents[0].title;
	// let thumbnail = msg.documents[0].thumbnail;
	// console.log(msg.documents.length)
	// console.log(i)
	max_length = msg.documents.length;
	$("#bookbox").html(""); // 태그 초기화
	/* $("#bookbox").append( "<table border = "+1+" > "); */
	$("#bookbox").append( "<div><strong>제목 : "+msg.documents[i].title+"</strong></div>" );
	$("#bookbox").append( "<div class='thumbnail'><span class='btn_span'><button class='btn_p_n' onclick='Previous()'>이전</button></span><span><img src='"+msg.documents[i].thumbnail+"'/></span><span class='btn_span'><button class='btn_p_n' onclick='Next()'>다음</button></span></div>");
	$("#bookbox").append( "<div><strong>가격 : "+msg.documents[i].price+"</strong></div>");
	$("#bookbox").append( "<div><strong><a href='"+msg.documents[i].url+"' target='_blank'>상세정보</a></strong></div>");
	$("a").css('text-decoration','none');
	$("a:link").css('color','blue');
	$("a:visited").css('color','black');
	});
}