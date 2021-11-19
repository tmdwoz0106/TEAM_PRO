function content(){
var memo1 = $("#content").val();
console.log($("#content").val());
console.log(memo1);
	var userPatterns = {
	  'url'   : /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
	}
// 	var userPatterns = {
// 	  'url'   : /(http(s)?:\/\/)([a-z0-9\w]+\.*)+[a-z0-9]/gi
// 	}
	
	var userReplaceFunctions = {
	  'url'  : function(_url){return $("#autolink").append('<a href="' + _url + '">'+ _url +'</a>')}
	}

	var memo2 = memo1.replace(userPatterns['url'], userReplaceFunctions['url'])
//	var memo2 = memo1.replace(userPatterns['url'], userReplaceFunctions['url'])
//	var memo2 = memo1.replace(userPatterns['url'] != url)
	console.log(memo2);
	
	$("#autolink").append("<p>"+memo2+"</p>");
}
$(function(){
	content();
})