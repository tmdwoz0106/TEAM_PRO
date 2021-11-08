function userDelete(){
	if (confirm("정말 탈퇴하시겠습니까??") == true){    //확인
		$.ajax({
			url:"/userDelete.do",
			type:"POST",
			data:$("#deleteForm").serialize(),
			dataType:"JSON",
			success:function(result){
				alert("그동안 감사했습니다!");
				location.href = "/main.do";
			}		
		})
}
}