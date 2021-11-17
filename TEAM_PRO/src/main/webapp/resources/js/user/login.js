function login(){
	$.ajax({
		url:"/loginPost.do",
		type:"POST",
		data:$("#loginForm").serialize(),
		dataType:"JSON",
		success : function(result){
			var vo = result.vo;
			console.log(vo);
			console.log(vo.user_id);
			if(vo.msg != null){
				alert(vo.msg);
				location.href = "/login.do";
			}else if(vo.user_id==="tmdwoz0106"){
				alert("환영합니다 관리자님");
				location.href = "/";
			}
			else if(vo.msg == null){
				alert("환영합니다 회원님");
				location.href = "/";
			}
			
		}
	})
}
