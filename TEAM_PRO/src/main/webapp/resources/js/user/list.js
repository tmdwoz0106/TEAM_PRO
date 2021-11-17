function list(page){
	$.ajax({
		url:"/infoUser.do",
		type:"GET",
		data:{page:page, type:$("#type option:selected").val(), keyword:$("#keyword").val()},
		dataType:"JSON",
		success : function(result){
			console.log(result);
			var list = result.list;
			$("#tbody").empty();
			$("#paging").empty();
			for(var i = 0; i < list.length; i++){
				var html = "<tr>"
					html += "<td>"+list[i].user_no+"</td>"
					html += "<td>"+list[i].user_id+"</td>"
					html += "<td>"+list[i].user_nick+"</td>"
					html += "<td>"+list[i].user_name+"</td>"
					html += "<td>"+list[i].user_phone+"</td>"
					html += "<td><button onclick=userDelete("+list[i].user_no+")>삭제</button></td>"
					html += "</tr>"
					$("#tbody").append(html);
			}
			if(result.prev){
				$("#paging").append("<button onclick=list("+Number(page-1)+")>이전</button>")
			}for(var i = result.startPage; i <= result.endPage; i++){
				$("#paging").append("<button onclick=list("+i+")>"+i+"</button>");
			}if(result.next){
				$("#paging").append("<button onclick=list("+Number(page+1)+")>다음</button>");
			}
		}
		
	})
}
$(function(){
	list(1);
})

function userDelete(user_no){
	console.log(user_no);
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		$.ajax({
				url:"/deleteUser.do",
				type:"POST",
				data:{user_no:user_no},
				dataType:"JSON",
				success : function(result){
					alert("회원 삭제 완료");
					location.href = "/userInfo.do";
				}
			})
		}
}