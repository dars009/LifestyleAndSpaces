<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Propselect</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="keyword" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="assets/img/logo.png" type="assets/img/logo.png">
<link rel="icon" href="assets/img/logo.png" type="image/x-icon">
<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" href="assets/css/jquery.notify.css" />
<script	src="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/default.min.css" />
<!--RTL version -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.rtl.min.css" />
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/default.rtl.min.css" />
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/bootstrap.rtl.min.css" />
<style type="text/css">
.disabledbtn {
	background-color: #009587bf ! important;
}
</style>
</head>
<body>
	<%Integer userId = (Integer) session.getAttribute("userId");%>
	<%String userName = (String) session.getAttribute("userName");%>
	<%String userEmail = (String) session.getAttribute("userEmail");%>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<nav class="navbar navbar-default ">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<%
					if(userId != null)
					{
				%>
					<a class="navbar-brand navbrand" href="uacc_summary.jsp"> 
						<span class="co5c">PROP</span><span style="font-weight: 200">SELECT</span>
					</a>
				<%
					}else{
				%>
					<a class="navbar-brand navbrand" href="index.jsp"> 
						<span class="co5c">PROP</span><span style="font-weight: 200">SELECT</span>
					</a>
				<%
					}
				%>
			</div>
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<a href="uploadProperty.jsp?id=upload">
						<button class="navbar-btn btn-success nav-button wow fadeInRight"
							data-wow-delay="0.48s">Submit Your Property</button>
					</a>
					<%
						if (userId != null) {
					%>
					<div class="dropdown unadroup">
						<button class="btn dropdown-toggle" type="button"
							data-toggle="dropdown">
							<div class="icouser">
								<img src="assets/img/logouser.png" class="img-circle"
									alt="photo" />
							</div><%=userName%>
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="uacc_summary.jsp"> <span
									class="glyphicon glyphicon-dashboard"></span> Dashboard
							</a></li>
							<li><a href="profile.htm?id=<%=userId%>"><span
									class="glyphicon glyphicon-user"></span> Profile</a></li>
							<li><a href="min.htm?id=<%=userId%>"><span
									class="glyphicon glyphicon-th"></span> Property</a></li>
							<li><a href="logout.htm"><span
									class="glyphicon glyphicon-off"></span> Sign Out</a></li>
						</ul>
					</div>
					<%
						} else {
					%>
					<button class="navbar-btn nav-button wow bounceInRight login"
						data-toggle="modal" data-target="#loginModal">Login</button>
					<%
						}
					%>
					<div class="homedropdown dropdown">
						<a id="dLabel" role="button" data-toggle="dropdown"
							class="navbar-btn" data-target="#" href="/page.html"> Menu <span
							class="fa fa-bars"></span>
						</a>
						<ul class="dropdown-menu multi-level" role="menu"
							aria-labelledby="dropdownMenu">
							<li><a href="#">Post Your Property</a></li>
							<li><a href="#">Some other action</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<div class="modal fade signinmodel" id="loginModal" role="dialog"
		data-keyboard="false" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body signinbody row">
					<div class="col-md-4 col-lg-4"></div>
					<div class="col-md-8 col-lg-8 contentpart">
						<div class="box">
							<div class="content">
								<div class="division">
									<div class="line l"></div>
									<div class="line r"></div>
								</div>
								<div class="error" style="color: red;">${Message}</div>
								<div class="form loginBox">
									<button type="button" class="close customclose"
										data-dismiss="modal">&times;</button>
									<h3 class="pb20 text-center blc">Login</h3>
									<span id="errmsg" style="color: RED"> </span> <input
										type="hidden" value="<%=request.getParameter("id")%>"
										name="loginuser" id="loginuser"> <input
										id="usrNameOrMobNo" class="form-control" type="text"
										placeholder="Email Or Mobile" name="usrNameOrMobNo"
										onkeyup="this.value = this.value.toLowerCase();"> <input
										id="password" class="form-control" type="password"
										placeholder="Password" name="password">
									<div class="checkbox display-inline">
										<label> <input type="checkbox" checked>
											Remember Me
										</label>
									</div>
									<span> <a href="javascript: showForgetForm();"
										class="pull-right">Forgot Password</a></span> <input
										class="btn btn-default btn-login" type="submit" value="Login"
										onclick="checkUserDetails();">
								</div>
							</div>
						</div>
						<div class="box">
							<div class="content registerBox" style="display: none;">
								<button type="button" class="close customclose"
									data-dismiss="modal">&times;</button>
								<h3 class="pb20 text-center blc">Register</h3>
								<div class="form">
									<form method="post" data-remote="true" action="signup.htm">
										<input type="hidden" value="<%=request.getParameter("id")%>"
											name="guestuser"> <input id="name"
											class="form-control" type="text" placeholder="Name"
											name="name"
											onkeyup="this.value=this.value.replace(/((^| )[a-z])/g, function(a, b){return b.toUpperCase();});">
										${emailmessage} <input id="usrEmail" class="form-control"
											type="email" placeholder="Email" name="usrEmail"
											onkeyup="this.value = this.value.toLowerCase();">
										${mobilemessage} <input id="contactOne" class="form-control"
											type="text" placeholder="Mobile" name="contactOne"
											maxlength="10"> <span class="otpr"
											id="OtpForRegister">Generate OTP</span>
										<div class="form-group col-md-12">
											<div id="timer" style="color: #009587bf;">
												1.00 <small>seconds.</small>
											</div>
										</div>
										<input id="otp" class="form-control" type="text"
											style="display: none" placeholder="OTP" name="otp"
											onkeyup="verifyotp();" maxlength="6"> <input
											id="usrPassword" class="form-control" type="password"
											placeholder="Password" name="usrPassword">
										<div class="row">
											<div class="col-md-12">
												<label class="strong"
													style="margin-left: 15px; margin-right: 15px"> I am</label>
												<div class="radio display-inline">
													<label> <input type="radio" name="usrType"
														id="owner" value="Owner" checked> Owner
													</label>
												</div>
												&nbsp;&nbsp;
												<div class="radio display-inline">
													<label> <input type="radio" name="usrType"
														value="Builder" id="builder"> Builder
													</label>
												</div>
											</div>
										</div>
										<input class="btn btn-default btn-login disabledbtn"
											type="submit" value="Create account" id="registerbtn">
									</form>
								</div>
							</div>
						</div>
						<div class="box">
							<div class="content forgetBox" style="display: none;">
								<button type="button" class="close customclose"
									data-dismiss="modal">&times;</button>
								<h3 class="pb20 text-center blc">Forgot Password</h3>
								<div class="form">
									<form>
										<input id="mobile" class="form-control" type="text"
											placeholder="Mobile" name="mobile" maxlength="10"> <span
											class="otpf" id="ForgetPwdOtp">Generate OTP</span> <span
											id="successmsg" style="color: green;"></span> <input
											id="otpforgetpwd" class="form-control" type="text"
											placeholder="OTP" name="otp" onkeyup="verifyotp1();"
											maxlength="6"> 
											
										<div class="form-group col-md-12">
											<div id="timerforgetpwd" style="color: #009587bf;">
												1.00 <small>seconds.</small>
											</div>
										</div>
										
										<input id="newfrgtpwd"
											class="form-control" type="text" placeholder="New Password" name="newpassword">

										<input class="btn btn-default btn-login disabledbtn"
											type="submit" value="Send" id="forgotsubmit">
									</form>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="forgot login-footer">
								<span>Looking to <a
									href="javascript: showRegisterForm();">create an account</a> ?
								</span>
							</div>
							<div class="forgot register-footer" style="display: none">
								<span>Already have an account?</span> <a
									href="javascript: showLoginForm();">Login</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript" src="./assets/js/LoginCheckModal.js"></script>
<!-- sunny code -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="assets/js/jquery.notify.js"></script>
<script src="assets/js/OtpSms.js"></script>
<script src="assets/js/ForgotPasswordOtpSms.js"></script>
<script>
	$(document).ready(function() {
		$("#btnSuccessbottomleft").click(function() {

			$.Notify({
				//alert("Function Called");
				text : 'Save invoice to database',
				headerText : ' Invoice Save Success',
				type : 'Success',
				position : 'bottom-left'
			});
		});

		$("#btnSuccesstopright").click(function() {
			$.Notify({
				text : 'Save invoice to database',
				headerText : ' Invoice Save Success',
				type : 'Success',
				position : 'top-right'
			});
		});

		$("#btnSuccessbottomright").click(function() {
			$.Notify({
				text : 'Save invoice to database',
				headerText : ' Invoice Save Success',
				type : 'Success',
				position : 'bottom-right'
			});
		});

		$("#btnSuccesstopleft").click(function() {
			$.Notify({
				text : 'Save invoice to database',
				headerText : ' Invoice Save Success',
				type : 'Success',
				position : 'top-left'
			});
		});

		$("#btnFailurebottomleft").click(function() {
			$.Notify({
				text : 'Invoice save to database failed.',
				headerText : ' Invoice Save Failed',
				type : 'Failure',
				position : 'bottom-left'
			});
		});

		$("#btnFailuretopleft").click(function() {
			$.Notify({
				text : 'Invoice save to database failed.',
				headerText : ' Invoice Save Failed',
				type : 'Failure',
				position : 'top-left'
			});
		});

		$("#btnFailurebottomright").click(function() {
			$.Notify({
				text : 'Invoice save to database failed.',
				headerText : ' Invoice Save Failed',
				type : 'Failure',
				position : 'bottom-right'
			});
		});

		$("#btnFailuretopright").click(function() {
			$.Notify({
				text : 'Invoice save to database failed.',
				headerText : ' Invoice Save Failed',
				type : 'Failure',
				position : 'top-right'
			});
		});
	});
</script>
</html>


