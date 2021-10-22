//316e09adcb8c6b0ca831d8169c4e67c2    
window.Kakao.init('316e09adcb8c6b0ca831d8169c4e67c2');


displayToken()
  function displayToken() {
    const token = getCookie('reauthenticate-access-token')
    if(token) {
      Kakao.Auth.setAccessToken(token)
      Kakao.Auth.getStatusInfo(({ status }) => {
        if(status === 'connected') {
          document.getElementById('token-result').innerText = 'login success. token: ' + Kakao.Auth.getAccessToken()
        } else {
          Kakao.Auth.setAccessToken(null)
        }
      })
    }
  }
  function getCookie(name) {
    const value = "; " + document.cookie;
    const parts = value.split("; " + name + "=");
    if (parts.length === 2) return parts.pop().split(";").shift();
  }

function kakaoLogin() {
	window.Kakao.Auth.login({
		scope: 'account_email',	
		success: (authObj) => {
			console.log(authObj);
			Kakao.API.request({
				url: '/v2/user/me',
				success: function(res) {
			var jsonid = JSON.stringify(res.kakao_account.email);
			          alert(jsonid);
					var id = res.kakao_account.email;
					console.log(id);
					let url = '/test';
					fetch(url + "?userid=" + id)
						.then()
					location.href = "/slogin.do";
				}
			});
		},
		fail: (err) => {
			console.error(err);
		},
	});
}


function 다른사용자(){
			Kakao.API.request({
				url: '/v1/user/unlink',
				success: function(response) {
					console.log(response);
				},
				fail: function(error) {
					console.log(error);
				},
			});
}


function kakaoLogout() {
	if (Kakao.Auth.getAccessToken()) {
		console.log('카카오 인증 엑세스 토큰이 존재합니다.', Kakao.Auth.getAccessToken())
		Kakao.Auth.logout(() => {
			console.log('로그아웃 되셨습니다.', Kakao.Auth.getAccessToken());

		});
	}
}