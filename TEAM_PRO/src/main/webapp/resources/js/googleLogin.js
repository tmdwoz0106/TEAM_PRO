// API KEY    ==  AIzaSyBZ-dh5Y8vW0hT8rJR3gfElGFoCrKt5ONo
//client ID  == 415549652819-r9tvjtsgkljq5v56dslamalkju2tjcoe.apps.googleusercontent.com

// <!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
// <meta name ="google-signin-client_id" content="415549652819-r9tvjtsgkljq5v56dslamalkju2tjcoe.apps.googleusercontent.com"></meta>

/*function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyBZ-dh5Y8vW0hT8rJR3gfElGFoCrKt5ONo', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile.getEmail());
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}*/

function googleSignout() {
	if(gapi.auth2 != null){
	 	var auth2 = gapi.auth2.getAuthInstance();
   		 auth2.signOut().then(function () {
    	  console.log('User signed out.');
    			});
		}
	auth2.disconnect();
}
function googleSignout2() {
	var auth2 = gapi.auth2.getAuthInstance();
			auth2.disconnect();
}

function onSignIn() {
	var profile = gapi.auth2.getAuthInstance().currentUser.get().getBasicProfile();
	/*var profile = googleUser.getBasicProfile();*/
	console.log(id = profile.getId());
	console.log(username = profile.getName());
	console.log(img = profile.getImageUrl());
	console.log(email = profile.getEmail());
	
	

					location.href = "/slogin.do";
	
						}
							
							
							
	/*			post_to_url(
	"/googleLogin.do",{ 'user_id': email} 
	  )	
						*/		
						



function post_to_url(path, params, method = 'post') {
	const form = document.createElement('form');
	form.method = method;
	form.action = path;
	
	for(const key in params) {
		if(params.hasOwnProperty(key)){
			const hiddenField = document.createElement('input');
			hiddenField.type ='hidden';
			hiddenField.name = key;
			hiddenField.value =params[key];
			form.appendChild(hiddenField);

		}
	}
	document.body.appendChild(form);
	form.submit();
}


{/* <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script> */}