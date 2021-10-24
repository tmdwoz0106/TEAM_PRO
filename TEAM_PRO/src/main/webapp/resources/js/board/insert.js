function insert(){
	$.ajax({
		url:"/InsertBoard.do",
		type:"POST",
		data:$("#insertForm").serialize(),
		dataType:"JSON",
		success : function(result){
			alert("추가 성공");
			location.href = "/";
		}
	})
}