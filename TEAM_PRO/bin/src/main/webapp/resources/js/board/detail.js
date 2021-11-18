function content(){
var memo1 = $("#content").val();
console.log($("#content").val());
console.log(memo1);
	var userPatterns = {
	  'url'   : /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
	}
	
	var userReplaceFunctions = {
	  'url'  : function(_url){return '<a href="' + _url + '">'+ _url +'</a>'}
	}
	
	var memo2 = memo1.replace(userPatterns['url'], userReplaceFunctions['url'])
	$("#autolink").append("<a href = memo2>"+memo2+"</a>");
}
$(function(){
	content();
})