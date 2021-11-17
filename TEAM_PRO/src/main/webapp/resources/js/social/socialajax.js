		function sslogin() {
			$.ajax({
				//회원가입 창 넘어 갈 시 seesion 에 저장한 아이디를 가지고 회원번호 찾기
				url : "social.do",
				method : "POST",
				data : $("#sslogin").serialize(),
				dataType : "JSON",
				success : function(result) {
					console.log(result);
					location.href="redirect:login.do";
					var rs = result.result;
					if(rs == 0 ){
						console.log("아이디 없음 회원가입 해야함")
						location.href = "/userJoin.do";
						alert("회원가입으로 이동합니다.");
					}else if(rs > 0){
						console.log("아이디 있음 로그인 가능");
						location.href ="/";
						alert("반갑습니다 회원님");
					}
				}
			});
		}
		$("#myHiddenForm").hide();
			
			function autoButton(){
				$("#myHiddenForm").trigger("click");
			}
			
			setTimeout(autoButton,1000);