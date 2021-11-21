function adjustHeight() {
	var textEle = $('textarea');
	textEle[0].style.height = 'auto';
	var textEleHeight = textEle.prop('scrollHeight');
	textEle.css('height', textEleHeight);
};
var textEle = $('textarea');
	textEle.on('keyup', function() {
	adjustHeight();
});
function enterkey() {
var keycode = event.keyCode;
	if (keycode == 13) {
	sendMessage();
	$('#message').val('');
	}
}