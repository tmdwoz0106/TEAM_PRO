function comment_add(reply_group,reply_depth){
	$("#reply_group").val(reply_group);
	$("#reply_depth").val(reply_depth);
	var reply = $("#TextArea").val();
	console.log(reply);
	$("#REPLY_content").val(reply);
	$("#reply_insert").submit();
}

function reply_open(reply_group,reply_depth){
	$("#reply_group").val(reply_group);
	$("#reply_depth").val(reply_depth);
//	$("#reply_box").hide();
	$("#reply_open_box").show();
}

function comment_cancle(){
	$("#content").val("");
	$("#reply_open_box").hide();
}

function reply_comment_add(){
	var reply = $("#reply_TextArea").val();
	console.log(reply);
	$("#REPLY_content").val(reply);
	$("#reply_insert").submit();	
}

//$(document).ready(function(){
//        $(".menu").click(function(reply_no){
//            var menu = $(".menu").next("ul").$("#reply_no").val(reply_no);
// 
//            if( menu.is(":visible") ){
//                menu.slideUp();
//            }else{
//                menu.slideDown();
//            }
//        });
//    });

function menu(reply_no){
	 var menu = $(".hide").val(reply_no);
            if( menu.is(":visible")	 ){
				for(var i = 0; i  < menu; i++){
					$("#reply_li").append(menu);
				}
                menu.slideUp();
            }else{
                menu.slideDown();
				for(var i = 0; i < menu; i++){
					$("#reply_li").append(menu);
				}
				
            }
}