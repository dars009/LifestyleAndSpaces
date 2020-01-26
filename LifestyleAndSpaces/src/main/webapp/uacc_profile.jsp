<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/wizard.css">
<style>
body {
	background: #f5f5f5 !important;
}

}


</style>
</head>
<%@include file="header.jsp"%>
<div class="container">
	<div class="paddleft15 mt10">
		<nav class="navbar navbar-default navuacc">
			<div class="">
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="uacc_summary.jsp">Dashboard</a></li>
						<li><a href="min.htm?id=<%=userId%>">Properties</a></li>
						<li class="active"><a href="profile.htm?id=<%=userId%>">Profile</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- Menu Section -->

	<div class="">
		<c:forEach var="list" items="${List}">
			<div class="col-md-3 paddleft0 mt10">
				<div class="sidetabsleft mh450"> 
					<div id="profile-container">
					  <img id="profileImage" src="assets/img/logouser.png"  alt="profile image"/> 
	                </div>
	                <!-- <input id="imageUpload" type="file" name="profile_photo" placeholder="Photo" required="" capture> -->
					<label class="display-block text-center font-weight500 lh15">${list.firstName}</label> 
					<label class="display-block text-center font-weight500 lh15"><small>+91 ${list.contactOne}</small></label>
					<ul class="nav nav-tabs tabs-left uprofile">
						<li class="active"><a href="#first" data-toggle="tab">Personal Details </a></li>
						<li><a href="#Second" data-toggle="tab">Office/Rera Details </a></li>
						<li><a href="#third" data-toggle="tab">Change Password </a></li>
					</ul>
				</div>
			</div>
		</c:forEach>
		
		<!-- Personal Details Section -->
		
		<div class="col-md-9 paddleft0 mt10 ">
			<div class="tab-content col-md-12">
				<div class="tab-pane row active" id="first">
					<form action="editpersonal.htm" method="post"> 
					  <input type="hidden" name="userId" value="<%=userId%>">
					  <div class="col-md-8 cardpan space mh450">
						 <div class="col-md-12">
						<label>Personal Details</label>
						</div> 
						<c:forEach var="list" items="${List}">
					    <div class="col-md-6 form-group">
							<input type="text" name="firstName" id="firstName" value="${list.firstName}" 
							       class="form-control" placeholder="Name" readonly="readonly">
						</div>
						 <div class="col-md-6 form-group">
							<input type="email" name="userEmail" id="userEmail" value="${list.userEmail}" 
								   class="form-control" placeholder="Email" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="contactOne" id="contactOne" value="${list.contactOne}" 
								   class="form-control" placeholder="Contact No" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<textarea name="userAddress" id="userAddress" class="form-control" 
							          placeholder="Address" readonly="readonly">${list.userAddress}</textarea>
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="city" id="city" value="${list.city}" 
								   class="form-control" placeholder="City" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="state" id="state" value="${list.state}" 
								   class="form-control" placeholder="State" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="country" id="country" value="${list.country}" 
								   class="form-control" placeholder="Country" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="userType" id="userType" value="${list.userType}" 
								   class="form-control" placeholder="Registered As" readonly="readonly">
						</div>
						<div class="col-md-12 text-center">
						   <button type="button" class="btn btn-custom-border btn-sm" onclick="editPersonalDetails();"
									name="mindetails" id="editbtn" style="width: 90px;">Edit
							</button>
						   <button type="submit" class="btn btn-custom-border btn-sm"
									name="mindetails" id="savebtn" style="width: 90px;">Save
						   </button>
						</div>
					  </c:forEach>
					</div>
				 </form>
				 
				<!-- No Content Section - Blank -->
				 
				<div class="col-md-4 paddright0">
					<div class="col-md-12 cardpan space mh450">
					  <div class="row ">
						<div class="col-md-12">
							<label>No Content</label>
						</div>
					  </div>
				   </div>
				</div>
				</div>
				
				<!-- Office Details Section -->
								
				<div class="tab-pane row" id="Second">
					<div class="col-md-8 cardpan space mh450">
						<div class="col-md-12">
							<label>Office Details</label>
						</div>
						<c:forEach var="list" items="${List}">
						<form action="editoffice.htm" method="post">
						<input type="hidden" name="userId" value="<%=userId%>">
						<div class="col-md-6 form-group">
							 <input type="text" name="firstName" id="firstName" value="${list.firstName}" 
							 class="form-control" placeholder="Contact Person Name" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="compName" id="compName" value="${list.compName}" 
							class="form-control" placeholder="Agency/Company Name" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="name" id="locality" class="form-control" 
								   placeholder="Locality" readonly="readonly">
						</div>
						<div class="col-md-6">
							<select id="lunchBegins" name="city" class="selectpicker noserarchsel"  
							data-live-search="true"	data-live-search-style="begins">
								<option value="${list.city}">${list.city}</option>
								<option value="Pune">Pune</option>
								<option value="Mumbai">Mumbai</option>
							</select>
						</div>
						<div class="col-md-12 form-group">
							<input type="text" name="userAddress" id="userAddress" value="${list.userAddress}" 
							       class="form-control" placeholder="Address" readonly="readonly">
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="compWebName" id="compWebName" value="${list.compWebName}" 
							       class="form-control" placeholder="Company Web Site" readonly="readonly">
						</div>

						<div class="col-md-6">
							 <select id="lunchBegins" name="city" class="selectpicker noserarchsel" data-live-search="true"
								data-live-search-style="begins">
								<option value="${list.city}">${list.city}</option>
								<option value="Pune">Pune</option>
								<option value="Mumbai">Mumbai</option>
							 </select>
						</div>
					
					    </c:forEach>
						<div class="col-md-12 text-center">
							<button type="button" class="btn btn-custom-border btn-sm" onclick="editOfficeDetails();"
								name="" id="edit" style="width: 90px;">Edit
							</button>
							<button type="submit" class="btn btn-custom-border btn-sm"
								name="" id="savebtn" style="width: 90px;">Save
							</button>
						</div>
					  </form>
					</div>
					
					<!-- RERA Details Section -->
					
					<div class="col-md-4 paddright0">
						<div class="col-md-12 cardpan space mh450">
							<div class="row ">
								<div class="col-md-12">
									<label>Rera Details</label>
								</div>
								<div class="col-md-12 form-group">
									<!-- <label class="strong">Rera Id</label>  -->
									<input type="text" name="name" class="form-control" placeholder="Rera Id">
								</div>

								<div class="col-md-12 form-group">
									<!-- <label class="strong">Validity</label>  -->
									<input type="text" name="name" class="form-control" placeholder="Validity">
								</div>
								<div class="col-md-12 form-group">
									<!-- <label class="strong">Verification Link</label> -->
									<div class="input-group">
										<input type="text" class="form-control" name="security"
											id="security" placeholder="Verification Link"> <span class="input-group-addon">
											<a class='my-tool-tip' data-toggle="tooltip"
											data-placement="left"
											title="Please share official RERA website link &#013; of your RERA Registration">
												<!-- The class CANNOT be tooltip... --> <i
												class='glyphicon glyphicon-info-sign'></i>
										</a>
										</span>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<label class="strong">Supporting document</label> <input
										type="file" name="name" class="form-control"> <span
										class=""></span>
								</div>
								<div class="col-md-12 text-center">
									<button type="button" class="btn btn-custom-border btn-sm"
										name="mindetails" id="savebtn" style="width: 90px;">
										Save</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Change Password Section -->
				
				<div class="tab-pane row" id="third">
					<div class="col-md-8 cardpan space mh450">
						<div class="col-md-offset-2 col-md-8">
							<div class="col-md-12 text-center">
								<label>Change Password </label>
							</div>
							<form action="reset.htm" method="post">
							<input type="hidden" name="userId" value="<%=userId%>">
							<ul class="list-group clear-list m-t profilelist">
								<li class="list-group-item">
								<!-- <span class="plco strong">Email:</span> -->
									<span><%=userEmail%></span>
								</li>
								<li class="list-group-item">
								<!-- <span class="plco strong">Old Password:</span> -->
								 <input type="password" name="oldpass" class="form-control" 
								 	    placeholder="Old Password" required="required"></li>
								<li class="list-group-item">
								<!-- <span class="plco strong">New Password:</span>  -->
								<input type="password" name="newpass" class="form-control" 
									   placeholder="New Password" required="required"></li>
								<li class="list-group-item">
								<!-- <span class="plco strong">Confirm Password:</span>  -->
								<input type="password" name="confirmpass" class="form-control" 
									   placeholder="Confirm Password" required="required"></li>
								<li class="list-group-item text-center">
								<span class="plco">
									<button type="submit" class="btn btn-custom-border btn-sm"
										name="mindetails" id="savebtn" style="width: 90px;">Save
									</button>
								</li>
							</ul>
						   </form>
						</div>
					</div>
					
					<!-- No Content Blank Section -->
					<div class="col-md-4 paddright0">
						<div class="col-md-12 cardpan space mh450">
							<div class="row ">
								<div class="col-md-12">
									<label>No Content</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>
</body>
<script type="text/javascript">
function editPersonalDetails(){
	  alert("Personal Details.!");
	  document.getElementById('contactOne').readOnly = false;
	  document.getElementById('userAddress').readOnly = false;
	  document.getElementById('city').readOnly = false;
	  document.getElementById('state').readOnly = false;
	  document.getElementById('country').readOnly = false;
}

function editOfficeDetails(){
	alert("Office Detalis.!");
	  document.getElementById('userAddress').readOnly = false;
	  document.getElementById('compName').readOnly = false;
	  document.getElementById('compWebName').readOnly = false;
	}
</script>
</html>