<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/wizard.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
.ui-slider .ui-slider-handle{
    width: 16px;
    height: 16px;
    border-radius: 25px;
    color:#009587;
 }
 .ui-widget-header{
       background: #009587;
  }
 
 .ui-slider-horizontal{
 
 }
 .input-group-btn .btn.btn-number{
     background-color: #009587 !important;
    border-color: #009587 !important;
 }
 
 .incdecbtn{
  padding-bottom:7px;
 }
</style>
</head>
<%@include file="connection.jsp"%>
<%@include file="header.jsp"%>
<div class="container">
	<div class="col-md-12" style="padding-left: 0px;">
		<div class="col-md-3 paddleft0 mt10 ">
			<div class="blog-asside-right space cardpan fiterarea">
				<div
					class="panel panel-default sidebar-menu wow fadeInRight animated animated"
					style="visibility: visible; animation-name: fadeInRight;">
					<div class="panel-heading">
						<h3 class="panel-title">Filter</h3>
					</div>
					<div class="panel-body search-widget">
						<form action="propertysearch.htm" method="post" class=" form-inline">
							<fieldset>
								<select id="lunchBegins" name="apartmentType" class="selectpicker form-control">
									<option selected="selected" disabled="disabled">Apartment Type</option>
									<option>1 BHK</option>
									<option>2 BHK</option>
									<option>3 BHK</option>
									<option>3+ BHK</option>
								</select>
							</fieldset>

							<fieldset class="padding-5">
								<div class="row">
									<div class="col-xs-12 form-group">
									  <label for="amount">Price range:</label>
									  <div class="col-xs-12" id="price-range1"></div>
									  <div class="row">
									  <input class="col-xs-6 color" name="minPriceRange" type="text" id="amount" readonly style="font-size: 12px;font-weight: 500;">
									  <input type="text" name="maxPriceRange" class="col-xs-6 color text-right" id="amount1" readonly style="font-size: 12px;font-weight: 500;">
									   </div>
									</div>
									
									<div class="col-xs-12 form-group">
									  <label for="amount">Property Area(meters) :</label>
									  <div class="col-xs-12" id="property-area"></div>
									  <div class="row">
									  <input class="col-xs-6 color" type="text" name="minProArea" id="arealeft" readonly style="font-size: 12px;font-weight: 500;">
									  <input type="text" name="maxPropArea" class="col-xs-6 color text-right" id="arearight" readonly style="font-size: 12px;font-weight: 500;">
									   </div>
									
									</div>
									
								</div>
							
								<div class="row">
                               <div class="col-md-12 col-lg-12"> 
									    <label for="price-range">Min Baths :</label>
                                        <div class="input-group input-group-sm">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus btn btn-success btn-number minminbaths"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="text" id="inputminbaths" name="baths" class="form-control input-number input-sm text-center p0" value="10" min="1" max="100">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus btn btn-success btn-number plusminbaths" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>
                               </div>
								</div>
							
								<label>Furnishing</label>
								<div class="form-group">
									<div class="checkbox display-inline">
										<label><input type="checkbox" name="furnishedStatus" value="Full Furnished"> Full Furnished </label>
									</div>

									<div class="checkbox display-inline">
										<label><input type="checkbox" name="furnishedStatus" value="Semi Furnished"> Semi Furnished </label>
									</div>
									<div class="checkbox display-inline">
										<label><input type="checkbox" name="furnishedStatus" value="UnFurnished">  UnFurnished </label>
									</div>
								</div>
							</fieldset>

							<fieldset>
								<div class="row">
									<div class="col-xs-12">
										<input class="button btn largesearch-btn" value="Search"
											   type="submit">
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-9  pr0 mt10 space cardpan properties-page">
			<div class="col-md-12 clear">
				<div class="col-xs-10 page-subheader sorting pl0">
					<div class="row">
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search for..."> <span
									class="input-group-btn igb">
									<button class="btn btn-default" type="button">Search</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<c:forEach var="list" items="${List}">
				<c:set var="propId" value="${list.prop_id}"/>
			<sql:query var="img" dataSource="${webappDataSource}">
				SELECT count(*), img_name
			    FROM prop_img
				WHERE prop_id_fk = ${propId}
				GROUP BY prop_id_fk
				HAVING COUNT(*) > 1;
			</sql:query>		
			<c:forEach var="row" items="${img.rows}">
				<c:set var="imgPath" value="${row.img_name}"/>
			</c:forEach>
				<div class="col-md-12 clear">
					<div id="list-type" class="proerty-th-list">
						<div class="col-sm-6 col-md-4 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="full.htm?propid=${list.prop_id}"><img
										src="file.htm?path=${imgPath}">
									</a>
								</div>
								<div class="item-entry overflow">
									<c:choose>
										<c:when test="${list.property_for eq 'Sale'}">
											<h5>
												<a href="full.htm?propid=${list.prop_id}"><span>${list.bedroom}</span>&nbsp;For
													Sale in&nbsp;<span>${list.prop_name}</span>,
													${list.locality}</a>
											</h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b> Area :</b>
												${list.super_buit_up_area} ${list.super_buit_up_area_unit} </span>
											<span class="proerty-price pull-right"><i
												class="fa fa-inr"></i> ${list.expected_price}</span>
										</c:when>
										<c:otherwise>
											<h5>
												<a href="full.htm?propid=${list.prop_id}"><span>${list.bedroom}</span>&nbsp;For
													Rent in&nbsp;<span>${list.prop_name}</span>,
													${list.locality}</a>
											</h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b> Area :</b>
												${list.super_buit_up_area} ${list.super_buit_up_area_unit} </span>
											<span class="proerty-price pull-right"><i
												class="fa fa-inr"></i> ${list.monthly_rent}</span>
										</c:otherwise>
									</c:choose>
									<p style="display: none;">${list.properties_details}</p>
									<div class="property-icon" style="display: flow-root;">
										<c:set value="${fn:split(list.bedroom,' BHK')}" var="bedroom"></c:set>
										<div class="listam">
											&nbsp;&nbsp;<img src="assets/img/icon/bed.png"> <span>(${bedroom[0]}) |</span>
											<img src="assets/img/icon/shawer.png"> <span>(${list.bathrooms})</span>
										</div>
										<div class="pull-right">
											<button class="btn btn-custom-border btn-sm "
												data-toggle="modal" data-target="#myModal">View
												Contact</button>&nbsp;
											<button class="btn btn-custom-border btn-sm announce"
												data-toggle="modal" data-id="${list.prop_id}"
												data-target="#myModal2">Schedule A Visit</button>
										</div>
										<div class="modal fade" id="myModal" role="dialog">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Contact</h4>
													</div>
													<div class="modal-body">
														<div class="form-group">
															<input type="text" class="form-control"
																value="Shailesh Salvi" placeholder="Name" />
														</div>
														<div class="form-group">
															<input type="text" class="form-control"
																value="7757051751" placeholder="Mobile" />
														</div>
														<div class="form-group">
															<input type="Email" class="form-control"
																value="inquiry@propselect.com" placeholder="Email" />
														</div>

														<div class="form-group">
															<button type="button" class="btn btn-custom btn-block"
																data-dismiss="modal">Close</button>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="modal fade" id="myModal2" role="dialog">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Schedule A Visit</h4>
													</div>

													<div class="modal-body">
														<form action="enquiry.htm" method="post">
															<input type="hidden" name="propid" id="propId">
															<div class="form-group">
																<input type="text" name="enqFullName" id="enqFullName"
																	class="form-control" placeholder="Name" required="required"/>
															</div>
															<div class="form-group">
																<input type="text" name="enqMobileNumber" class="form-control" id="enqMobileNumber"
																	placeholder="Mobile" required="required"/>
															</div>
															<div class="form-group">
																<input type="Email" name="enqEmail" id="enqEmail"
																	class="form-control" placeholder="Email" required="required"/>
															</div>
															<div class="form-group">
																<textarea class="form-control" name="enqMessage" id="enqMessage"
																	style="resize: none" rows="2" placeholder="Message"></textarea>
															</div>
															<div class="row ">
																<div class="col-md-6 form-group">
																	<label class="font-weight500">Select Date</label>
																	<input type="date" name="enqDate" id="enqDate" class="form-control" required="required"> 
																</div>
																<div class="col-md-6 form-group">
																	<label class="font-weight500">Select Time</label> 
																	<select	id="enqTime" name="enqTime" class="selectpicker " required="required">
																		<option selected="selected" disabled="disabled">select</option>
																		<option>9 AM To 11 AM</option>
																		<option>11 AM To 1 PM</option>
																		<option>2 PM To 4 PM</option>
																		<option>4 PM To 6 PM</option>
																	</select>
																</div>
															</div>

															<a href="#" class="text-center"><small>
																	I agree to propselect.com T & C</small></a>
															<div class="form-group">
																<button type="submit" class="btn btn-custom btn-block"
																	>Submit</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="row">
				<div class="col-md-12">
					<center>
						<span style="color: red;">${Message}</span>
					</center>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>
<script src="assets/js/jquery-ui.js"></script> 
<script>
	$(".announce").click(function() {//set id on model 
		$("#propId").val($(this).data('id'));
	});
</script>
<script>
  $( function() {
    $( "#price-range1" ).slider({
      range: true,
      min: 0,
      max: 500000,
      values: [10000 , 500000 ],
      slide: function( event, ui ) {
	    $( "#amount" ).val( "" + ui.values[ 0 ] );
		$( "#amount1" ).val( "" + ui.values[ 1 ]);
      }
    });
    $( "#amount" ).val( $( "#price-range1" ).slider( "values", 0 ));
      $( "#amount1" ).val(  $( "#price-range1" ).slider( "values", 1 ));
  } );
  </script>
  
  <!--close  Price range slider -->
   <!--property-area slider -->
  <script>
  $( function() {
    $( "#property-area" ).slider({
      range: true,
      min: 0,
      max: 2000,
      values: [100 , 2000 ],
      slide: function( event, ui ) {
       // $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
	    $( "#arealeft" ).val(   ui.values[ 0 ] );
		$( "#arearight" ).val(   ui.values[ 1 ]);
      }
    });
    $("#arealeft").val( "" + $( "#property-area" ).slider( "values", 0 ));
      $("#arearight").val( "" + $( "#property-area" ).slider( "values", 1 ));
  } );
  </script>
   <!--close property-area slider -->
   <!-- min bed -->
  <script>
  $(document).ready(function(){

	  var quantitiy=0;
	     $('.plusminbed').click(function(e){
	          
	          // Stop acting like a button
	          e.preventDefault();
	          // Get the field name
	          var quantity = parseInt($('#inputminbed').val());
	          
	          // If is not undefined
	              
	              $('#inputminbed').val(quantity + 1);

	            
	              // Increment
	          
	      });

	       $('.minminbed').click(function(e){
	          // Stop acting like a button
	          e.preventDefault();
	          // Get the field name
	          var quantity = parseInt($('#inputminbed').val());
	          
	          // If is not undefined
	        
	              // Increment
	              if(quantity>0){
	              $('#inputminbed').val(quantity - 1);
	              }
	      });
	      
	  });
  
  
  </script>
  
  <!--close min bed -->
  <!-- baths bed -->
  <script>
  $(document).ready(function(){

	  var quantitiy=0;
	     $('.plusminbaths').click(function(e){
	          
	          // Stop acting like a button
	          e.preventDefault();
	          // Get the field name
	          var quantity = parseInt($('#inputminbaths').val());
	          
	          // If is not undefined
	              
	              $('#inputminbaths').val(quantity + 1);

	            
	              // Increment
	          
	      });

	       $('.minminbaths').click(function(e){
	          // Stop acting like a button
	          e.preventDefault();
	          // Get the field name
	          var quantity = parseInt($('#inputminbaths').val());
	          
	          // If is not undefined
	        
	              // Increment
	              if(quantity>0){
	              $('#inputminbaths').val(quantity - 1);
	              }
	      });
	      
	  });
  
  
  </script>
  <!--close baths bed -->
  
</body>
</html>