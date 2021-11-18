// API KEY    ==  AIzaSyBZ-dh5Y8vW0hT8rJR3gfElGFoCrKt5ONo
//client ID  == 415549652819-r9tvjtsgkljq5v56dslamalkju2tjcoe.apps.googleusercontent.com

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
