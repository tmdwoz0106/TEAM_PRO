function BoardDelete(){
	if (confirm("정말 삭제하시겠습니까") == true){
		$.ajax({
			url:"/BoardDelete.do",
			type:"POST",
			data:$("#deleteForm").serialize(),
			dataType:"JSON",
			success : function(result){
				console.log($("#Board_Type").val());
				alert("삭제하였습니다");
				location.href = "/list.do";
			}
		})
	}
}