function join(){  
	//id 검사
	var id = $("#user_ID").val();
    if (id == "")
    {
      	alert("아이디를 입력해야 합니다!");
      	id.focus();
      	return;
     }
     if (id.length < 8 || id.length > 30)
     {
        alert("아이디는 10~30자 이내로 입력 가능합니다!");
        id.select();
        return;
      }
	//비밀번호 검사
	var pw = $("#user_PW").val();
	var num = pw.search(/[0-9]/g);
 	var eng = pw.search(/[a-z]/ig);
 	var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	 if (pw == "")
            {
                 alert("패스워드를 입력 해야 합니다!");
                 pw.focus();
                 return;
            }
            if(pw.length < 4 || pw.length > 12){
  				alert("4자리 ~ 12자리 이내로 입력해주세요.");
				pw.select();
  				return;
 			}else if(pw.search(/\s/) != -1){
 				 alert("비밀번호는 공백 없이 입력해주세요.");
				 pw.select();
  				 return;
 			}else if(num < 0 || eng < 0 || spe < 0 ){
  				alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
				pw.select();
  				return;
 			}
	//생년월일검사	
	var birth = $("#user_BIR").val();
	var number =birth.search(/[0-9]/g);
		if(birth == ""){
			alert("생년월일을 입력 해야 합니다!");
            birth.focus();
            return;
		}
		else if(number < 0){
			alert("생년월일은 숫자로만 입력해주세요.");
			birth.select();
			return;
		}
		else if(birth.length != 6){
  				alert("생년월일은 6자로 입력해주세요.");
  				return;
		}
	//핸드폰 번호 검사
	var phone = $("#user_PHO").val();
	var phoNum = phone.search(/[0-9]/g);
	if(phone == ""){
			alert("핸드폰 번호를 입력 해야 합니다!");
            phone.focus();
            return;
		}
	else if(phoNum < 0){
  				alert("핸드폰 번호는 숫자로만 입력해주세요.");
				phone.select();
  				return;
		}
	else if(phone.length != 11){
				alert("핸드폰 번호는 11자로 입력해주세요.");
  				return;
		}
	else {
		joinus();
	}
}

function joinus(){
	$.ajax({
		url:"/JoinUser.do",
		type:"POST",
		data:$("#joinForm").serialize(),
		dataType:"JSON",
		success : function(result){
			var vo = result.msg;
			var result = result.result;
			
			alert(vo);
			
			if(result == 1){
				location.href = "/login.do";
			}else{
				location.href = "/userJoin.do";
			}
		}
	})
}