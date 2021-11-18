	// 윈도우 온로드시 요소들을 변수에 집어넣음
	window.onload = function () {
		var icon = document.getElementById('icon');
		var checknum;
		var quitbtn = document.getElementById('quitbtn');
		// var quitbtn;
		// 자바스크립트로 아이프레임 생성
		function createiframe() {
			//console.log('createiframe');
			var iframe = document.createElement("iframe");
			iframe.id = 'helper';
			iframe.style.boxShadow ="5px 5px 15px";
			iframe.style.border = "0";
			iframe.style.outline = "0";
			iframe.style.backgroundColor = "#d7cedd";
			iframe.style.borderRadius = "15px" ;
			iframe.style.right = "10px";
			iframe.style.bottom = "10px";
			iframe.style.position = "fixed";
			iframe.style.height = "550px";
			iframe.style.width = "370px";
			iframe.src='/iframehome.do';
			document.body.appendChild(iframe);
			iframe.style.zIndex = "2000";
			checknum = 1;

			iframe.contentWindow.onload = function() {
				var subDocBody = iframe.contentWindow.document.body;
				var header = subDocBody.getElementsByClassName('header')[0];
				console.dir(header);
				//header.onclick = function(event) {
				//	alert('심봤다');
				//}
			}
		}
		
		// 요소를 숨기는 스타일 태그 적용
		function hideicon() {
			icon.style.visibility
			="hidden";
			icon.style.display
			="none";
		}

		function showicon() {
			icon.style.visibility
			= "inherit";
			icon.style.display
			= "block";
		}

		function hideframe() {
			helper.style.visibility
			= "hidden";
			helper.style.display
			= "none";
		}

		function btnshow() {
			quitbtn.style.visibility
			= "inherit";
			quitbtn.style.display
			= "block";
		}

		function btnhide() {
			quitbtn.style.visibility
			= "hidden";
			quitbtn.style.display
			= "none";
		}
				
		//  클릭 이벤트 // 아이프레임 생성과 아이콘 숨기기
	 	icon.onclick = function() {
			if(checknum != 1){
				createiframe();
				hideicon();
				btnshow();
				console.log(checknum+"클릭시");
				console.log(document.getElementsByTagName("iframe"));
			}			
		}
		
		quitbtn.onclick = function() {
			if(checknum == 1){
				hideframe();
				showicon();
				btnhide();
				checknum = 0;
				document.getElementById('helper').remove();
				console.log(checknum+"닫을시");
			}
		}

		// $(function() {
		// 	$('#helper').toggle();
		// 	$('#icon').click(function() {
		// 		$('#helper').toggle();
		// 		createiframe();
		// 		hideicon();
		// 	});
		// });
		
		document.getElementById('helper')
	}