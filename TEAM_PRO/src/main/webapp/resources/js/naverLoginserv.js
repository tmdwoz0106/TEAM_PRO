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

var naver_id_login = new naver_id_login("u_PTkLzzH6Gzne3cO8hw", "http://localhost:8088/slogin.do");
										 // 접근 토큰 값 출력
									
 // 네이버 사용자 프로필 조회
 naver_id_login.get_naver_userprofile("naverSignInCallback()");
 // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
 function naverSignInCallback() {
	  email = naver_id_login.getProfileData('email');
	  console.log(email);
		if(email != null){
			url = "/test";
			fetch(url+"?userid="+email).then()
		}
  		 alert(email);
  		
  		 location.href = "/slogin.do";

naverLogout();return false;
  		 
 }
