var naver_id_login = new naver_id_login("u_PTkLzzH6Gzne3cO8hw", "http://localhost:8088/slogin.do");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("green", 1,40);
	  	naver_id_login.setDomain("http://localhost:8088");
	  	naver_id_login.setState(state);
	  	//naver_id_login.setPopup();
	  	naver_id_login.init_naver_id_login();

	  	var testPopUp;
	  	function openPopUp() {
	  	    testPopUp= window.open("https://nid.naver.com/nidlogin.logout",
	  	          "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
	  	}
	  	
	  	function closePopUp(){
	  	    testPopUp.close();
	  	}

	  	function naverLogout() {
	  	   openPopUp();
	  	   setTimeout(function() {
	  	      closePopUp();
	  	      }, 100);
	  	   
	  	}
