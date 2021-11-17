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
// function autolink(){
//      var memo1 = $("#content").val();
//	  console.log(memo1);
// 
//      var userPatterns = {
//        'url'   : /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
//      }
// 
//      var userReplaceFunctions = {
//        'url'  : function(_url){return '<a href="' + _url + '">'+ _url +'</a>'}
//      }
//
//      var memo2 = memo1.replace(userPatterns['url'], userReplaceFunctions['url'])
////      document.write(memo2)
////      document.write("<br>") // a line BReak in text
//}