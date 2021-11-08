function logout(){
	$.ajax({
		url:"/logout.do",
		type:"POST",
		dataType:"JSON",
		success : function(reuslt){
			alert("로그아웃");
			location.href = "/main.do";
		}
	})
}
