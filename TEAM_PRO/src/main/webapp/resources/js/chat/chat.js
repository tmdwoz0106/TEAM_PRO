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
   if (window.event.keyCode == 13) {
       // 엔터키가 눌렸을 때
    }
}
