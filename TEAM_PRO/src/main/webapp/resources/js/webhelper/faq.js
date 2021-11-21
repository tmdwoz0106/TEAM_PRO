$(document).ready (function(){
		$("#headerimg2").on("click", (e)=> {
			history.back();
		});
		$(".btn").on("click", (e)=> {
			var btn = {"id":e.target.id};			
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
					function change (){
						var btn_value = message.result[0];
						var btn0 = document.getElementById('btn0');
						var btn1 = document.getElementById('btn1');
						var btn2 = document.getElementById('btn2');
						var btn3 = document.getElementById('btn3');
						switch(btn_value) {
							case "계정" :
								btn0.style.display = "none";
								btn1.style.height = "40px";
								btn1.style.width = "80px";
								btn2.style.height = "40px";
								btn2.style.width = "80px";
								btn3.style.height = "40px";
								btn3.style.width = "80px";

								btn1.value = '정보 변경';
								btn2.value = '비밀번호';
								btn3.value = '계정 탈퇴';
								btn1.id = 'btn21';
								btn2.id = 'btn22';
								btn3.id = 'btn23';
								break;
								
							case "강의" :
								btn0.style.display = "none";
								btn1.style.height = "40px";
								btn1.style.width = "80px";
								btn2.style.height = "40px";
								btn2.style.width = "80px";
								btn3.style.height = "40px";
								btn3.style.width = "80px";
								
								btn1.value = '동시 접속';
								btn2.value = '최대 기기';
								btn3.value = '수강평';
								btn1.id = 'btn31';
								btn2.id = 'btn32';
								btn3.id = 'btn33';
								break;
							default:
								break;
						}	
					}
					change();
					
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
					alert("실패");
				}
			}); 
		});
	});