function userModify(){
	if (confirm("정말 변경하시겠습니까??") == true){    //확인
$.ajax({
		url:"/userModify.do",
		type:"POST",
		data:$("#deleteForm").serialize(),
		dataType:"JSON",
		success : function(){
			alert("수정 성공");
			location.href = "/userDetail.do?user_no="+$("#user_ID").val();
			}
		})
	}
}