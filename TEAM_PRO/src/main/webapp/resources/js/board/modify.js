	function modify(){
		$.ajax({
			url:"/ModifyBoard.do",
			type:"POST",
			data:$("#modifyForm").serialize(),
			dataType:"JSON",
			success : function(result){
				alert("수정하였습니다");
				location.href = "/"
			}
		})
	}