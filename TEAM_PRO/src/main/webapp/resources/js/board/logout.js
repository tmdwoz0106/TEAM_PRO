function logout(){
	$.ajax({
		url:"/logout.do",
		type:"POST",
		dataType:"JSON",
		success : function(reuslt){
			alert("๋ก๊ทธ์์");
			location.href = "/main.do";
		}
	})
}
