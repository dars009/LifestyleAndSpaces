/*

function checkUserDetails()
{
    var userid = document.getElementById("usrNameOrMobNo").value;
    var pass =   document.getElementById("password").value;  
    var loginuser =   document.getElementById("loginuser").value;
    //alert(loginuser);
    var details = "false";
  
	$.ajax({
        type: "POST",
        url: "/LifestyleAndSpaces/login.htm",
        data: { 'usrNameOrMobNo' : userid, 'password' : pass ,'loginuser' : loginuser },
         success: function(data)
        {
         if(data == details)
          {
             document.getElementById("errmsg").innerHTML = "Bad Credentials..Please Try Again";
          } 
         else
          {
     	    window.location.href = data;
          }         
        }
       
      });
 e.preventDefault(); 
}*/


var _0xc8df=["\x76\x61\x6C\x75\x65","\x75\x73\x72\x4E\x61\x6D\x65\x4F\x72\x4D\x6F\x62\x4E\x6F","\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x42\x79\x49\x64","\x70\x61\x73\x73\x77\x6F\x72\x64","\x6C\x6F\x67\x69\x6E\x75\x73\x65\x72","\x66\x61\x6C\x73\x65","\x50\x4F\x53\x54","\x2F\x4C\x69\x66\x65\x73\x74\x79\x6C\x65\x41\x6E\x64\x53\x70\x61\x63\x65\x73\x2F\x6C\x6F\x67\x69\x6E\x2E\x68\x74\x6D","\x69\x6E\x6E\x65\x72\x48\x54\x4D\x4C","\x65\x72\x72\x6D\x73\x67","\x42\x61\x64\x20\x43\x72\x65\x64\x65\x6E\x74\x69\x61\x6C\x73\x2E\x2E\x50\x6C\x65\x61\x73\x65\x20\x54\x72\x79\x20\x41\x67\x61\x69\x6E","\x68\x72\x65\x66","\x6C\x6F\x63\x61\x74\x69\x6F\x6E","\x61\x6A\x61\x78","\x70\x72\x65\x76\x65\x6E\x74\x44\x65\x66\x61\x75\x6C\x74"];function checkUserDetails(){var _0x57c7x2=document[_0xc8df[2]](_0xc8df[1])[_0xc8df[0]];var _0x57c7x3=document[_0xc8df[2]](_0xc8df[3])[_0xc8df[0]];var _0x57c7x4=document[_0xc8df[2]](_0xc8df[4])[_0xc8df[0]];var _0x57c7x5=_0xc8df[5];$[_0xc8df[13]]({type:_0xc8df[6],url:_0xc8df[7],data:{"\x75\x73\x72\x4E\x61\x6D\x65\x4F\x72\x4D\x6F\x62\x4E\x6F":_0x57c7x2,"\x70\x61\x73\x73\x77\x6F\x72\x64":_0x57c7x3,"\x6C\x6F\x67\x69\x6E\x75\x73\x65\x72":_0x57c7x4},success:function(_0x57c7x6){if(_0x57c7x6== _0x57c7x5){document[_0xc8df[2]](_0xc8df[9])[_0xc8df[8]]= _0xc8df[10]}else {window[_0xc8df[12]][_0xc8df[11]]= _0x57c7x6}}});e[_0xc8df[14]]()}
