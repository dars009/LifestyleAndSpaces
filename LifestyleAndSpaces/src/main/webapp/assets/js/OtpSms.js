var otp = 0;
var successotp;

$(document).ready(function(){
	$("#otp").hide();
	$('#timer').hide();
	document.getElementById("registerbtn").disabled = true;

	$('#contactOne').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#otp').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
    $("#OtpForRegister").click(function(){
    	
    	var moblnumbr = document
		.getElementById("contactOne").value;
		// alert(moblnumbr);
    	
		if (moblnumbr.length != 10) {
			alert("Mobile Number Invalid");
			document.getElementById(
			"contactOne").focus();
			return false;
		}

		else {
			alert("OTP sent successfully");
			
			$("#otp").show();
			console.clear();

			
			$.ajax({
		        type: "GET",
		        url: "otp.htm",
		        dataType: 'json',
		        async: false,						        
		        data: { 'MobileNo' : moblnumbr },
		        success: function(data)
		        {
					//alert(data);
					successotp = data;
					//alert("OTP form controller" + successotp);
		        	//alert("Enter the OTP sent to your mobile number");
		        }
		      });
			
			
			// sending OTP to constomer for verification via api 
			countdown(1);
			console.clear();
			$('#timer').show();
			$('#OtpForRegister').css(
					'visibility', 'hidden');
			console.clear();

		}
    });
    
  //countdown OTP
    var timeoutHandle;
    function countdown(minutes) {

    	console.clear();

    	var seconds = 60;
    	var mins = minutes
    	function tick() {
    		console.clear();
    		var counter = document.getElementById("timer");
    		var current_minutes = mins - 1
    		seconds--;
    		counter.innerHTML = "You will receive OTP in "
    			+ current_minutes.toString() + ":"
    			+ (seconds < 10 ? "0" : "")
    			+ String(seconds) + " seconds";
    		if (seconds > 0) {
    			timeoutHandle = setTimeout(tick, 1000);
    			console.clear();
    		} else {

    			if (mins > 1) {
    				// countdown(mins-1);   never reach “00″ issue solved.
    				setTimeout(function() {
    					countdown(mins - 1);
    				}, 1000);
    			}
    			$('#timer').hide();
    			$('#OtpForRegister').css('visibility',
    			'visible');
    			console.clear();
    		}
    	}
    	tick();
    	console.clear();
    }

  
});




function verifyotp() {
	
	$('#timer').hide();
	$('#OtpForRegister').css('visibility','visible');
	
	var otpui = document.getElementById("otp").value;

	if (successotp == otpui) {
		//alert("OTP valid");
		document.getElementById("otp").style.borderColor= "#009587bf";
		document.getElementById("registerbtn").disabled = false;
	} else {
		//alert("Incorrect OTP");
		document.getElementById("otp").style.borderColor= "#fc3752";
		document.getElementById("registerbtn").disabled = true;
		
	}
}


