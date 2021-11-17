$(document).ready(function(){
	pageLoad();
});
   function pageLoad(){
      
      notShowPop = getCookieVal();
      if(notShowPop != "true"){
         window.open("adverpop.do","pop","width=1010, height=340, history=no, resizavle=no, status=no, scrollbars=no, menubar=no, location=no, toolbar=no");
      }
      
   }
   
   function getCookieVal(){
      
      var result = "false";
      if(document.cookie != ""){
         cookie = document.cookie.split(";");
         for(var i =0; i<cookie.length; i++){
            element = cookie[i].split("=");
            value = element[0];
            value = value.replace(/^\s*/,'');
            if(value == "notShowPop"){
               result = element[1];
            }
         }
         
      }
      return result;
   }
   
   function deleteCookie(){
      document.cookie = "notShowPop=" + "false" + ";path=/; expires=-1";
   }
