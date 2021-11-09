function big(){
	$("#IMG").css({"width" : "400", "height" : "400"});
	console.log("빅")
	if($("#IMG").css({"width" : "400", "height" : "400"})){
		console.log("버튼")
		$("#IMG").append("<button id='Btn' class='btn btn-sm btn-outline-danger' onclick=small()>이전</button>");
	}
}	

function small(){
	$("#Btn").css("disply",none);
	$("#IMG").css({"width" : "150", "height" : "150"});
}