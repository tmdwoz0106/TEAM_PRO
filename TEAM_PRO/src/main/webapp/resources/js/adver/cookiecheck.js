function setPopUpStart(obj) {
	if (obj.checked == true) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() + 1);
		document.cookie = "notShowPop=" + "true" + ";path=/; expires=" + expireDate.toGMTString();
		window.close();
	}
}