 $(document).ready(function(){
                $("#search").click(function(){
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
                            console.log(msg)
                            $("#bookbox").html(""); // 태그 초기화
                            /* $("#bookbox").append( "<table border = "+1+" > "); */
                            $("#bookbox").append( "<div><strong>제목 : "+msg.documents[0].title+"</strong></div>" );
                            $("#bookbox").append( "<div><img src='"+msg.documents[0].thumbnail+"'/><button id='bookbtn' value='0'>다음</button></div>");
                            $("#bookbox").append( "<div><strong>가격 : "+msg.documents[0].price+"</strong></div>");
                            $("#bookbox").append( "<div><strong><a href='"+msg.documents[0].url+"' target='_blank'>상세정보</a></strong></div>");
                            $("a").css('text-decoration','none');
                            $("a:link").css('color','blue');
                            $("a:visited").css('color','black');
                            document.getElementById('bookbox').style.textAlign = "center";
                           	document.getElementById('bookbtn').style.border = "0px";
                            document.getElementById('bookbtn').style.outline = "0px";
                        });
                });
            });