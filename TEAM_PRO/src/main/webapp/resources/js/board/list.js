function list(page){
	$.ajax({
		url:"/listGET.do",
		type:"GET",
		data:{page:page, keyword:$("#keyword").val(), type:$("#type option:selected").val()},
		dataType:"JSON",
		success : function(result){
			console.log(result);
			console.log(result.list);
			$("#tbody").empty();
			$("#paging").empty();
			var list = result.list;
			for(var i = 0; i <list.length; i++){
				$.ajax({
					url:"/likeSu.do",
					type:"GET",
					data:{board_no:list[i].board_no},
					dataType:"JSON",
					async: false,
					success : function(likeSu){
						console.log(likeSu);
						var html = "<tr>"
				   		html += "<td>"+list[i].board_type+"</td>"
				   		html += "<td><a href = /BoardDetail.do?board_no="+list[i].board_no+">"+list[i].board_title+"</td>"
				    	html += "<td>"+list[i].user_nick+"</td>"
				    	html += "<td>"+list[i].board_day+"</td>"
				   	 	html += "<td>"+list[i].board_view+"</td>"
				   	    html += "<td>"+likeSu.su+"</td>"
						$("#tbody").append(html);				
					}
				})
				
			}
			if(result.prev){
				$("#paging").append("<button onclick = list("+Number(page-1)+")>이전</button>")
			}
			for(var i = result.startPage; i <= result.endPage; i++){
				$("#paging").append("<button class='Btn' onclick = list("+i+")>"+i+"</button>")
			}
			if(result.next){
				$("#paging").append("<button onclick = list("+Number(page+1)+")>다음</button>")
			}
		}
	})
}
$(function(){
	list(1);
})

function logout(){
	$.ajax({
		url:"/logout.do",
		type:"POST",
		dataType:"JSON",
		success : function(reuslt){
			alert("로그아웃");
			location.href = "/";
		}
	})
}