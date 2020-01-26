var otp = 0;
var successotp;

$(document)
.ready(
		function() {

			$("#otpforgetpwd").hide();
			$("#newfrgtpwd").hide();
			$('#timerforgetpwd').hide();
			
			document.getElementById("forgotsubmit").disabled = true;

			$('#mobile').bind('input propertychange', function() {
				var filteredText = $(this).val().replace(/[^\d]/gi, '');
				$(this).val(filteredText);
			});

			$('#otpforgetpwd').bind('input propertychange', function() {
				var filteredText = $(this).val().replace(/[^\d]/gi, '');
				$(this).val(filteredText);
			});


			$("#ForgetPwdOtp")
			.click(
					function() {
						var moblnumbr = document
						.getElementById("mobile").value;
						// alert(moblnumbr);

						if (moblnumbr.length != 10) {
							alert("Mobile Number Invalid");
							document.getElementById(
							"mobile").focus();
							return false;
						}

						else {
							alert("OTP sent successfully");
							
							$("#otpforgetpwd").show();
							console.clear();

							/* otp controller called*/
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
							$('#timerforgetpwd').show();
							$('#ForgetPwdOtp').css(
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
					var counter = document.getElementById("timerforgetpwd");
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
						$('#timerforgetpwd').hide();
						$('#ForgetPwdOtp').css('visibility',
						'visible');
						console.clear();
					}
				}
				tick();
				console.clear();
			}

		});

function verifyotp1() {
	
	$('#timerforgetpwd').hide();
	$('#ForgetPwdOtp').css('visibility','visible');
	
	var otpui = document.getElementById("otpforgetpwd").value;

	if (successotp == otpui) {
		//alert("OTP valid");
		document.getElementById("otpforgetpwd").style.borderColor= "#009587bf";
		$("#newfrgtpwd").show();
		document.getElementById("forgotsubmit").disabled = false;
	} else {
		//alert("Incorrect OTP");
		document.getElementById("otpforgetpwd").style.borderColor= "#fc3752";
		$("#newfrgtpwd").hide();
		document.getElementById("forgotsubmit").disabled = true;
		
	}
}