<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/wizard.css">
<!-- link for custom css written -->
<link rel="stylesheet" href="assets/css/custom.css">


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">    
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<!-- links for alert dialog box -->
<link href="assets/css/alertBox.css" rel="stylesheet">
<script src="assets/js/alertBoxDialog.js"></script>
<style>
.form-group input-group .input:focus {
	border: 1px solid #9A9A9A !important;
}
</style>
</head>
<%@include file="header.jsp"%>
<div class="container">
	<div class="">
		<center>
			<h4>Upload Your Property</h4>
		</center>

		<div class="col-xs-3 paddleft0">
			<div class="sidetabsleft">

				<ul class="nav nav-tabs tabs-left">
					<li class="active"><a href="#basicdetails" data-toggle="tab">
							<img src="assets/img/amenities_icon/sidebasicinfo.png">
							&nbsp; Basic Details
					</a></li>
					<li class="disabledTab"><a href="#propertydetails"
						data-toggle="tab"> <img
							src="assets/img/amenities_icon/sidepropertydetails.png">
							&nbsp; Property Details
					</a></li>
					<li class="disabledTab"><a href="#rentaldetails"
						data-toggle="tab"> <img
							src="assets/img/amenities_icon/siderentdetails.png"> &nbsp;
							Rental Details
					</a></li>
					<li class="disabledTab"><a href="#additionaldetails"
						data-toggle="tab"> <img
							src="assets/img/amenities_icon/sideaditional.png"> &nbsp;
							Additional Details
					</a></li>
					<li class="disabledTab"><a href="#amenities" data-toggle="tab">
							<img src="assets/img/amenities_icon/sideaminities.png">
							&nbsp; Amenities
					</a></li>

					<li class="disabledTab"><a href="#availabilitydetails"
						data-toggle="tab"> <img
							src="assets/img/amenities_icon/Sideavailable.png"> &nbsp;
							Availability
					</a></li>
					<li class="disabledTab"><a href="#gallerydetails"
						data-toggle="tab"> <img
							src="assets/img/amenities_icon/sidegallery.png"> &nbsp;
							Gallery
					</a></li>
				</ul>
			</div>
		</div>
    	<input type="hidden" name="userid" id="userid" value="<%=userId%>">
		<div class="col-xs-9 cardpan space">
		<!-- form start  -->
			<form action="min.htm" method="post" enctype="multipart/form-data" id="basicdetform">
				<input type="hidden" name="usr_id" value="<%=userId%>">
				  <div class="tab-content">
					<div class="tab-pane active" id="basicdetails">
						<div class="col-md-12 uploadpart">
							<div class="row">
								<div class="col-md-12">
									<label for="usr">User Type</label>
								</div>
								<div class="col-md-12">
									<div class="radio display-inline">
										<label> <input type="radio" name="usr_type" id="owner"
											value="Owner" checked> Owner
										</label>
									</div>
									&nbsp;&nbsp;
									<div class="radio display-inline">
										<label> <input type="radio" name="usr_type"
											value="Builder" id="builder"> Builder
										</label>
									</div>
								</div>
							</div>
							<br>

							<div class="row" id="personalinfo">
								<div class="col-md-12">
									<label for="usr">User Information</label>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-user iconcolor"></i></span><input type="text"
												name="usr_name" class="form-control" id="username"
												placeholder="Name"
												onkeyup="this.value=this.value.replace(/((^| )[a-z])/g, function(a, b){return b.toUpperCase();});"
												required="required">
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-phone iconcolor"></i></span><input type="text"
												name="contact_no" class="form-control" id="usermobile"
												placeholder="Mobile No" maxlength="10" required="required">
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-envelope iconcolor"></i></span><input type="text"
												name="usr_email" class="form-control" id="usermemail"
												placeholder="Email ID"
												onkeyup="this.value = this.value.toLowerCase();"
												required="required">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label for="usr">Property For</label>
								</div>
								<div class="col-md-12">
									<div class="radio display-inline">
										<label> <input type="radio" name="property_for"
											value="Sale" id="sale" checked> Sale
										</label>
									</div>
									&nbsp;&nbsp;
									<div class="radio display-inline">
										<label> <input type="radio" name="property_for"
											value="Rent" id="rent"> Rent
										</label>
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label for="usr">Property Type</label>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<select class="form-control" name="property_type"
											id="proptype" required="required">
											<option selected="selected" disabled="disabled" value="">Select</option>
											<option value="Multistorey Apartment">Multistorey
												Apartment</option>
											<option value="Residential House">Residential House</option>
											<option value="Villa">Villa</option>
											<option value="Residential Plot">Residential Plot</option>
											<option value="Penthouse">Penthouse</option>
											<option value="Commercial Office Space">Commercial
												Office Space</option>
											<option value="Commercial Shop">Commercial Shop</option>
											<option value="Commercial Showroom">Commercial
												Showroom</option>
											<option value="Commercial Land">Commercial Land</option>
											<option value="Industrial Land">Industrial Land</option>
											<option value="Warehouse/Godown">Warehouse/Godown</option>
											<option value="Agricultural Land">Agricultural Land</option>
										</select>
									</div>
								</div>
							</div>
							<center>
								<button type="button" class="btn btn-custom-border btn-sm"
									name="minupload" id="savebtn" style="width: 90px;">Save</button>
								<!-- <button type="button" class="btn btn-success btn-sm next">
								Continue</button> -->
							</center>
						</div>
						<!-- upload part closed -->
					</div>
					<!-- basic details closed -->

					<!-- Property details open -->
					<div class="tab-pane" id="propertydetails">
						<div class="row">
							<div class="col-md-12">
								<label for="usr">Location</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="prop_country">
										<option selected="selected">India</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="prop_state">
										<option selected="selected">Maharashtra</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="prop_city">
										<option selected="selected" disabled="disabled" value=" ">City</option>
										<option>Pune</option>
										<option>Mumbai</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<input type="text" name="pincode" id="pincode"
										class="form-control" maxlength="6" placeholder="Pincode">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" name="prop_name" id="" class="form-control"
										onkeyup="this.value=this.value.replace(/((^| )[a-z])/g, function(a, b){return b.toUpperCase();});"
										placeholder="Name of Project">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="locality">
										<option selected="selected" disabled="disabled" value="">Locality</option>
										<option>Viman Nager</option>
										<option>Kharadi</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-map-marker iconcolor"></i></span><input type="text"
											name="landmark" id="area" class="form-control"
											placeholder="Area">
									</div>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<input type="text" name="landmark_details" class="form-control"
										placeholder="Add landmarks details">

								</div>
							</div>

							<div class="col-md-12">
								<div class="form-group">
									<input type="text" name="properties_details"
										class="form-control"
										placeholder="Add interesting deatails about your property.">

								</div>
							</div>
						</div>
						<!-- location closed -->

						<!-- Property Features Open -->
						<div class="row">
							<div class="col-md-12" id="property_feature">
								<label for="usr">Property Features</label>
							</div>

							<div class="col-md-4" id="bedroom">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-bed iconcolor"></i></span><select class="form-control"
											name="bedroom">
											<option selected="selected" disabled="disabled" value=" ">Bedroom</option>
											<option>1 BHK</option>
											<option>1.5 BHK</option>
											<option>2 BHK</option>
											<option>2.5 BHK</option>
											<option>3 BHK</option>
											<option>3.5 BHK</option>
											<option>4 BHK</option>
											<option>4.5 BHK</option>
											<option>5 BHK</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="balconies">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-shower iconcolor"></i></span><input type="number"
											class="form-control" name="balconies" id="balconies" min="0"
											max="5" placeholder="Balconies">
									</div>
								</div>
							</div>
							<div class="col-md-4" id="bathrooms">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-bath-tub iconcolor"></i></span><input type="number"
											class="form-control" name="bathrooms" id="bathrooms" min="0"
											max="5" placeholder="Bathrooms">
									</div>
								</div>
							</div>

							<div class="col-md-4" id="furnished_status">
								<div class="form-group">
									<select class="form-control" name="furnished_status">
										<option selected="selected" disabled="disabled" value=" ">Furnished
										Status</option>
										<option value="Full Furnished">Full Furnished</option>
										<option value="Semi Furnished">Semi Furnished</option>
										<option value="UnFurnished">UnFurnished</option>
									</select>
								</div>
							</div>
							<div class="col-md-4" id="floor_no">
								<div class="form-group">
									<input type="number" class="form-control" name="floor_no"
										id="floorno" min="0" placeholder="Floor No" max="50">
								</div>
							</div>
							<div class="col-md-4" id="total_floor">
								<div class="form-group">
									<input type="number" class="form-control" name="total_floor"
										id="totalfloor" min="0" placeholder="Total Floors" max="50">
								</div>
							</div>

							<div class="col-md-4" id="parking">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-car iconcolor"></i></span><select class="form-control"
											name="parking">
											<option selected="selected" disabled="disabled" value=" ">Parking</option>
											<option value="Covered">Covered</option>
											<option value="Open">Open</option>
											<option value="NA">NA</option>
										</select>
									</div>
								</div>
							</div>

							<div class="col-md-4" id="carpet_area">
								<div class="form-group">
									<div class="input-group my-group txtsel">
										<input type="text" class="form-control" name="carpet_area"
											id="carpetarea" placeholder="Carpet Area"> <select
											class="form-control" name="carpet_area_unit">
											<option selected="selected" disabled="disabled">select</option>
											<option>Sq-Ft</option>
											<option>Sq-Mtr</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="super_buit_up_area">
								<div class="form-group">
									<div class="input-group my-group txtsel">
										<input type="text" class="form-control"
											name="super_buit_up_area" id="superbuituparea"
											placeholder="Built Up Area"> <select
											class="form-control" name="super_buit_up_area_unit">
											<option selected="selected" disabled="disabled">Select</option>
											<option>Sq-Ft</option>
											<option>Sq-Mtr</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="personal_washroom">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-male iconcolor"></i></span><select class="form-control"
											name="personal_washroom">
											<option selected="selected" disabled="disabled" value=" ">Personal
											Washroom</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="pantry">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-birthday-cake iconcolor"></i></span><select
											class="form-control" name="pantry">
											<option selected="selected" disabled="disabled">Pantry/Cafeteria</option>
											<option value="Dry">Dry</option>
											<option value="Wet">Wet</option>
											<option value="NA">NA</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="covered_area">
								<div class="form-group">
									<div class="input-group my-group txtsel">
										<input type="text" class="form-control" name="covered_area"
											id="coveredarea" placeholder="Covered
											Area">
										<select class="form-control" name="covered_area_unit">
											<option selected="selected" disabled="disabled">Select</option>
											<option>Sq-Ft</option>
											<option>Sq-Mtr</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="floor_allowed">
								<div class="form-group">
									<input type="number" class="form-control" name="floor_allowed"
										id="floor_allowed" min="0" max="50"
										placeholder="Floors
										for construction">
								</div>
							</div>
							<div class="col-md-4" id="width_of_road_facing_the_plot">
								<div class="form-group">
									<div class="input-group my-group txtsel">
										<input type="text" class="form-control"
											name="width_of_road_facing_the_plot"
											id="widthofroadfacingtheplot" min="0" max="999"
											placeholder="Roadfacing
											Width"> <select
											class="form-control"
											name="width_of_road_facing_the_plot_unit">
											<option selected="selected" disabled="disabled">Select</option>
											<option>Sq-Ft</option>
											<option>Sq-Mtr</option>
										</select>
									</div>
								</div>
							</div>

							<div class="col-md-4" id="plotting_done">
								<div class="form-group">
									<select class="form-control" name="plotting_done">
										<option selected="selected" disabled="disabled" value=" ">Plotting
										Done</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
									</select>
								</div>
							</div>
							<div class="col-md-4" id="plot_area">
								<div class="form-group">
									<div class="input-group my-group txtsel">
										<input type="text" class="form-control" name="plot_area"
											min="0" max="99999" id="plotarea" placeholder="Plot Area">
										<select class="form-control" name="plot_area_unit">
											<option selected="selected" disabled="disabled">Select</option>
											<option>Sq-Ft</option>
											<option>Sq-Mtr</option>
											<option>Sq-Yrd</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4" id="plot_length">
								<div class="form-group">
									<div class="input-group my-group txtsel">
										<input type="text" class="form-control" name="plot_length"
											min="0" max="99999" id="plotlength" placeholder="Plot Length">
										<select class="form-control" name="plot_length_unit">
											<option selected="selected" disabled="disabled">Select</option>
											<option>Ft</option>
											<option>Mtr</option>
											<option>Yrd</option>
										</select>
									</div>
								</div>
							</div>

							<div class="col-md-4" id="plot_breath">
								<div class="form-group">
									<div class="input-group my-group txtsel" name="plot_breath">
										<input type="text" class="form-control" name="plot_breath"
											min="0" max="99999" id="plotbreath"
											placeholder="Plot Breadth"> <select
											class="form-control" name="plot_breath_unit">
											<option selected="selected" disabled="disabled">Select</option>
											<option>Ft</option>
											<option>Mtr</option>
											<option>Yrd</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!-- Property Features closed -->

						<div class="pull-right">
							<button type="button" class="btn btn-custom-border btn-sm back"
								id="savebtn" style="width: 90px;">Back</button>
							<button type="button" class="btn btn-custom-border btn-sm next"
								id="savebtn" style="width: 90px;">Continue</button>
						</div>
					</div>
					<!-- Property details closed -->

					<!-- Rental details Opne -->
					<div class="tab-pane" id="rentaldetails">
						<!-- Price Details Open -->
						<div class="row" id="pricedetails">
							<div class="col-md-12">
								<label for="usr">Price Details</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-money iconcolor"></i></span><input type="text"
											name="number" name="expected_price" id="expectedprice"
											class="form-control" placeholder="Total Price" min="0"
											onkeyup="word.innerHTML=convertNumberToWords(this.value)" />
									</div>
									<div id="word" style="color: #fc3752;"></div>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-money iconcolor"></i></span><input type="text"
											class="form-control" name="other_charges" id="othercharge"
											placeholder="Other Charges">
									</div>
								</div>
							</div>
						</div>
						<!-- Price Details Closed -->

						<!-- Rent Details Open -->
						<div class="row" id="rentdetails">
							<div class="col-md-12">
								<label for="usr">Rent Details</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-money"></i></span><input
											type="text" name="monthly_rent" id="monthlyrent"
											class="form-control" placeholder="Total Rent">
									</div>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="electricity_or_water">
										<option selected="selected" disabled="disabled" value=" ">Electricity
										or Water Charges</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-money"></i></span><input
											type="text" class="form-control" name="security_amt"
											id="securityamt" placeholder="Security Amount">
									</div>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-money"></i></span><input
											type="text" class="form-control" name="maintenance_amt"
											placeholder="Maintenance Amount">
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="maintenance_period">
										<option selected="selected" disabled="disabled" value=" ">Maintenance
										Period</option>
										<option>Monthly</option>
										<option>Quarterly</option>
										<option>Yearly</option>
										<option>One-Time</option>
										<option>Per sq. unit monthly</option>
									</select>
								</div>
							</div>
						</div>
						<!-- Rent Details Closed -->

						<div class="pull-right">
							<button type="button" class="btn btn-custom-border btn-sm back"
								id="savebtn" style="width: 90px;">Back</button>
							<button type="button" class="btn btn-custom-border btn-sm next"
								id="savebtn" style="width: 90px;">Continue</button>
						</div>
					</div>
					<!-- Rental details closed -->

					<!-- Additional details Open -->
					<div class="tab-pane" id="additionaldetails">
						<!-- Additional Details Open -->
						<div class="row" id="prefertent">
							<div class="col-md-12">
								<label for="usr">Tenants you prefer</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="bachelors">
										<option selected="selected" disabled="disabled" value=" ">Select
									</option>
										<option value="family">Family</option>
										<option value="bachelors">Bachelors</option>
										<option value="workingbachelors">Working Bachelors</option>
										<option value="DM">Doesn't Matter</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="vegeterians">
										<option selected="selected" disabled="disabled" value=" ">Vegetarians</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
										<option value="DM">Doesn't Matter</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="pets">
										<option selected="selected" disabled="disabled" value=" ">Pet
										Animal's</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
										<option value="DM">Doesn't Matter</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row" id="addrooms">
							<div class="col-md-12">
								<label for="usr">Additional Rooms</label>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="pooja_room" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/poojaroom.png">
									Puja Room
								</div>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="study_room" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/study room.png">
									Study
								</div>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="store_room" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/store room.png">
									Store
								</div>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="servent_room" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/serventroom.png">
									Servant Room
								</div>
							</div>

						</div>
						
						<div class="row" id="roadfacing_direction">
							<div class="col-md-4">
								<label>Road Facing</label>
								<div class="form-group">
									<select class="form-control" name="facing">
										<option selected="selected" disabled="disabled" value=" ">Select</option>
										<option>East Direction</option>
										<option>South Direction</option>
										<option>Southeast Direction</option>
										<option>West Direction</option>
										<option>Northwest Direction</option>
										<option>North Direction</option>
										<option>Northeast Direction</option>
									</select>
								</div>
							</div>

							<div class="col-md-4" id="carparking_coverno">
								<label>Covered Car Parking</label>
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><input type="checkbox"
											name="car_parking_cover" value="Yes"></span> <input
											type="text" name="car_parking_cover_no"
											id="carparkingcoverno" class="form-control"
											placeholder="Enter no">
									</div>
								</div>
							</div>

							<div class="col-md-4" id="open_parkingno">
								<label>Open Car Parking</label>
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><input type="checkbox"
											name="car_parking_open" value="Yes"> </span> <input
											type="text" name="car_parking_open_no" id="openparkingno"
											class="form-control" placeholder="Enter no">
									</div>
								</div>
							</div>
						</div>

						<!-- Water and Electricity Open -->
						<div class="row">
							<div class="col-md-12">
								<label for="usr">Status of Water and Electricity</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="water_availabilitty">
										<option selected="selected" disabled="disabled" value=" ">Water
									</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="electricity_status">
										<option selected="selected" disabled="disabled" value=" ">Electricity</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
									</select>
								</div>
							</div>
						</div>
						<!-- Water and Electricity Closed -->

						<div class="pull-right">
							<button type="button" class="btn btn-custom-border btn-sm back"
								id="savebtn" style="width: 90px;">Back</button>
							<button type="button" class="btn btn-custom-border btn-sm next"
								id="savebtn" style="width: 90px;">Continue</button>
						</div>
					</div>
					<!-- *************** Additional details closed ********************* -->

					<!-- Amenities details open -->
					<div class="tab-pane" id="amenities">
						
						<div class="row" id="nothingtodisp">
							<div class="col-md-12">
								<label for="usr">Nothing to Display, please continue</label>
							</div>
						</div>
						
						<div class="row" id="flooringdetl">
							<div class="col-md-12">
								<label for="usr">Flooring</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="flooring">
										<option selected="selected" disabled="disabled" value=" ">Flooring</option>
										<option value="Ceramic Tiles">Ceramic Tiles</option>
										<option value="Granite">Granite</option>
										<option value="Marble">Marble</option>
										<option value="Marbonite">Marbonite</option>
										<option value="Mosaic">Mosaic</option>
										<option value="Normal Tiles/Kotah Stone">Normal Tiles
										/ Kotah Stone</option>
										<option value="Virtified">Virtified</option>
										<option value="Wooden">Wooden</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row" id="amenitiesdetl">
							<div class="col-md-12">
								<label for="usr">Amenities</label>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="internet" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/internet.png">
									Internet
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="cable_tv" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/cabeltv.png">
									Cable TV
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="oven" value="Yes"> &nbsp;
									<img src="assets/img/amenities_icon/oven.png"> Oven
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="swimming_pool" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/swimming pool.png">
									Swimming Pool
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="children_play_area" value="Yes">
									&nbsp; <img
										src="assets/img/amenities_icon/childrenplayarea.png">
									Children Play Area
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="gas_connection" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/gas.png"> Gas
									Connection
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="geyser" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/gyser.png">
									Geyser
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="club_house" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/clubhouse.png">
									Club House
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="terrace" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/terracegarden.png">
									Terrace
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="fridge" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/fridge.png">
									Fridge
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="curtains" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/curtain.png">
									Curtains
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="fan" value="Yes"> &nbsp; <img
										src="assets/img/amenities_icon/fan.png"> Fan
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="lights" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/light.png">
									Lights
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="gymnasium" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/gym.png">
									Gymnasium
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="lift" value="Yes"> &nbsp;
									<img src="assets/img/amenities_icon/lift.png"> Lift
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="power_back_up" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/powerbackup.png">
									Power Back Up
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="security" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/security.png">
									Security
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="garden" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/garden.png">
									Garden
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="reserved_parking" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/reservedparking.png">
									Reserved Parking
								</div>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="bed" value="Yes"> &nbsp; <img
										src="assets/img/amenities_icon/bed.png"> Bed
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="cupboard" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/cupboard.png">
									Cupboard
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="washing_machine" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/washing machine.png">
									Washing Machine
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="iron" value="Yes"> &nbsp;
									<img src="assets/img/amenities_icon/iron.png"> Iron
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="video_door_lock" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/videodoorlock.png">
									Video Door Lock
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="solar" value="Yes"> &nbsp;
									<img src="assets/img/amenities_icon/solar.png"> Solar
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<input type="checkbox" name="air_conditioning" value="Yes">
									&nbsp; <img src="assets/img/amenities_icon/aircondition.png">
									Air Conditioning
								</div>
							</div>
						</div>

						<div class="pull-right">
							<button type="button" class="btn btn-custom-border btn-sm back"
								id="savebtn" style="width: 90px;">Back</button>
							<button type="button" class="btn btn-custom-border btn-sm next"
								id="savebtn" style="width: 90px;">Continue</button>
						</div>
					</div>
					<!-- Amenities details closed -->

					<!-- Availability details Open -->
					<div class="tab-pane" id="availabilitydetails">
						<!-- Types of availability Open -->
						<div class="row">
							<div class="col-md-12">
								<label for="usr">Types and Availability</label>
							</div>

							<div class="col-md-4" id="construction_type">
								<div class="form-group">
									<select class="form-control" name="construction_type">
										<option selected="selected" disabled="disabled" value=" ">Type</option>
										<option value="New">New</option>
										<option value="Old/Resale">Old/Resale</option>
									</select>
								</div>
							</div>
							<div class="col-md-4" id="age_of_construction">
								<div class="form-group">
									<select class="form-control" name="age_of_construction">
										<option selected="selected" disabled="disabled" value=" ">Age
										of Construction</option>
										<option>New Construction</option>
										<option>Less than 5 years</option>
										<option>5 - 10 years</option>
										<option>10 - 15 years</option>
										<option>15 - 20 years</option>
										<option>Above 20 years</option>
									</select>
								</div>
							</div>
							<div class="col-md-4" id="possession_status">
								<div class="form-group">
									<select class="form-control" name="possession_status">
										<option selected="selected" disabled="disabled">Possession
										Status</option>
										<option value="Under Construction">Under Construction</option>
										<option value="Ready to move">Ready to move</option>
									</select>
								</div>
							</div>
							
							<div class="col-md-4" id="available_from">
								<div class="form-group">
										<input
												type="text" class="form-control" id="datepicker"
												placeholder="Available From">
								</div>
							</div>
						</div>
						<!-- Types of availability Closed -->
						<div class="pull-right">
							<button type="button" class="btn btn-custom-border btn-sm back"
								id="savebtn" style="width: 90px;">Back</button>
							<button type="button" class="btn btn-custom-border btn-sm next"
								id="savebtn" style="width: 90px;">Continue</button>
						</div>
					</div>
					<!-- Availability details closed -->

					<!-- Gallery details Open -->
					<div class="tab-pane" id="gallerydetails">
						<div class="row">
							<div class="col-md-12">
								<label for="usr">Upload images of our property</label>
							</div>

							<div class="col-md-4">
								<div class="form-group">
									<input type="file" class="form-control" id="images"
										name="img_name" onchange="preview_images();" multiple />
								</div>
							</div>
						</div>

						<div class="row" id="image_preview"></div>
						<br>
						<center>
							<button type="button" class="btn btn-custom-border btn-sm back"
								id="savebtn" style="width: 90px;">Back</button>
							<button type="submit" class="btn btn-custom-border btn-sm next"
								id="savebtn" style="width: 90px;">Save</button>
						</center>
					</div>
					</form><!-- form end -->
				</div>
		    </div>
		<!-- cardpan space closed -->
		<div class="clearfix"></div>
	</div>
</div>

<%@include file="footer.jsp"%>

<!-- /* ************** JAVSCRIPT ************** */ -->
<script src="assets/js/wizard.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/upload_property.js"></script>
<script src="assets/js/alertBox.js"></script>

<!-- javascript for datepicker -->
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js" type="text/javascript"></script>

<script>
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap'
    });
</script>

    
<script type="text/javascript">
	value = $("#userid").attr('value');
	//alert(value);
	if(value == 'null'){
		$(window).on('load',function(){
	        $('#loginModal').modal('show');
	    });
		}
</script>
</body>
</html>