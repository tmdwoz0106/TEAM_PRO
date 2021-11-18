$(document).ready (function(){
		$(".btn").on("click", (e)=> {
			var btn = {"id":e.target.value};			
			var answer;
			/* fetch("/faqtest.do?btn="+btn).then() */
		 	$.ajax({
				type: "GET", //요청 메소드 방식
				url:"/faqtest.do",
				data:btn,
				dataType:"json", //서버가 요청 URL을 통해서 응답하는 내용의 타입
				success : function(result){
					var message = new Array();
					message = result;
					var n = 1;
					
					function userbox() {
						for(var i=0; i<1; i++) {
							var messagebox = document.createElement("div");
							messagebox.style.float = "right";
							var writebox = document.createElement("h3");
							writebox.style.backgroundColor = "#d7cedd";
							writebox.style.float = "right";
							writebox.style.marginRight = "5%";
							$('#guidetext').append(messagebox);
							$(messagebox).append(writebox);
							$(writebox).append(message.result[i]);
							var slowdown = $('#layoutin2');
							slowdown.scrollTop(slowdown[0].scrollHeight);
						};
					};
					function nothing(){
						console.log("시발");
					}
					function servicebox() {
						var i=1;
						var interval = setInterval(function() {
							$('#guidetext').append("<div><h3>"+message.result[i]+"</h3></div>");
							$('#layoutin2').scrollTop($('#layoutin2')[0].scrollHeight);
							i++;
							if (i == message.result.length) {
							    clearInterval(interval);
							    };
						}, 1000);
					};
				 	setTimeout(userbox,500);
					/* setTimeout(servicebox,1000); */
					servicebox();
				},
				error : function(){
					alert("실패했다잉");
				}
			}); 
		});
	});