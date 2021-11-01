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

*/

function googleSignout() {
	if(gapi.auth2 != null){
	 	var auth2 = gapi.auth2.getAuthInstance();
   		 auth2.signOut().then(function () {
    	  console.log('User signed out.');
			sessionStorage.clear();
		console.log("sessionStrage clear");
    			});
		}
	auth2.disconnect();
}

function googleSignout2() {
	var auth2 = gapi.auth2.getAuthInstance();
			auth2.disconnect();
}

function onSignIn(googleUser) {
  var id_token = googleUser.getAuthResponse().id_token;
  var profile = googleUser.getBasicProfile();
   var Email = profile.getEmail();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + Email); // This is null if the 'email' scope is not present.
  get_to_url("/slogin2.do",{'user_id': Email});		
var auth2 = gapi.auth2.getAuthInstance();
			auth2.disconnect();	
}
	
function get_to_url(path, params, method = 'get') {
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
