function list(page){
	$.ajax({
		url:"/listType.do",
		type:"GET",
		data:{page:page, keyword:$("#keyword").val(), type:$("#type option:selected").val(), board_type:$("#board_Type").val()},
		dataType:"JSON",
		success : function(result){
			var list = result.list;
			console.log(list);
			$("#paging").empty();
			$("#tbody2").empty();
			for(var i = 0; i < list.length; i++){
				$.ajax({
					url:"/likeSu.do",
					type:"GET",
					data:{board_no:list[i].board_no},
					dataType:"JSON",
					async: false,
					success : function(likeSu){
					var html = "<tr>";
						html += "<td>"+list[i].board_type+"</td>";
						html += "<td><a href = /detailType.do?board_no="+list[i].board_no+">"+list[i].board_title+"</td>";
						html += "<td>"+list[i].user_nick+"</td>";
						html += "<td>"+list[i].board_day+"</td>";
						html += "<td>"+list[i].board_view+"</td>";
						html += "<td>"+likeSu.su+"</td>"
						$("#tbody2").append(html);
					}
				})
			}
			if(result.prev){
				$("#paging").append("<button onclick=list("+Number(page-1)+")>이전</button>")
			}
			for(var i = result.startPage; i <= result.endPage; i++){
				$("#paging").append("<button onclick=list("+i+")>"+i+"</button>")
			}
			if(result.next){
				$("#paging").append("<button onclick=list("+Number(page+1)+")>다음</button>")
			}
		}
	})
}

$(function(){
	list(1);
})