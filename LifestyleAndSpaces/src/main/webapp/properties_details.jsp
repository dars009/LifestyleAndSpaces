<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="assets/css/lightslider.min.css"> 
<style>
body{
 background:#f5f5f5 !important;
}

.feaami .form-group{
 margin-bottom: 10px;
}
</style>
</head>
<%@include file="header.jsp"%>
<%@include file="connection.jsp"%>
            <div class="container">
            <c:forEach var="list" items="${List}">
				<c:set var="propId" value="${list.prop_id}"/>
			</c:forEach>
			
			<sql:query var="img" dataSource="${webappDataSource}">
				SELECT img_name FROM prop_img WHERE prop_id_fk = ${propId};
			</sql:query>		
			
			
            <c:forEach var="list" items="${List}">
             <!-- set bedroom value here to split BHK from it & print set value where needed -->
              <c:set value="${fn:split(list.bedroom,' BHK')}" var="bedroom" ></c:set>
                <div class="clearfix padding-top-40">
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                            <i class="fa fa-star-o"></i>
                                        </a>
                                        <a class="printer-icon " href="javascript:window.print()">
                                            <i class="fa fa-print"></i> 
                                        </a>
                                    </div> 
 									
                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <c:forEach var="row" items="${img.rows}">
											<li data-thumb="file.htm?path=${row.img_name}"> 
                                            <img src="file.htm?path=${row.img_name}" />
                                        </li>
										</c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single-property-wrapper mt-40">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${list.prop_name}</h1>
                                <c:choose>
                                	<c:when test="${list.property_for eq 'Sale'}">
										<span class="property-price pull-right">
										<i class="fa fa-inr"></i>${list.expected_price}</span>                                	
                                	</c:when>
                                	<c:otherwise>
                                		<span class="property-price pull-right">
                                		<i class="fa fa-inr"></i>${list.monthly_rent}</span>
                                	</c:otherwise>
                                </c:choose>
                            </div>

                            <div class="property-meta entry-meta clearfix ">   
                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-tag">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill-rule="evenodd" clip-rule="evenodd" fill="#FFA500" d="M47.199 24.176l-23.552-23.392c-.504-.502-1.174-.778-1.897-.778l-19.087.09c-.236.003-.469.038-.696.1l-.251.1-.166.069c-.319.152-.564.321-.766.529-.497.502-.781 1.196-.778 1.907l.092 19.124c.003.711.283 1.385.795 1.901l23.549 23.389c.221.218.482.393.779.523l.224.092c.26.092.519.145.78.155l.121.009h.012c.239-.003.476-.037.693-.098l.195-.076.2-.084c.315-.145.573-.319.791-.539l18.976-19.214c.507-.511.785-1.188.781-1.908-.003-.72-.287-1.394-.795-1.899zm-35.198-9.17c-1.657 0-3-1.345-3-3 0-1.657 1.343-3 3-3 1.656 0 2.999 1.343 2.999 3 0 1.656-1.343 3-2.999 3z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Status</span>
                                        <span class="property-info-value">${list.property_for}</span>
                                    </span>
                                </div>

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info icon-area">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M46 16v-12c0-1.104-.896-2.001-2-2.001h-12c0-1.103-.896-1.999-2.002-1.999h-11.997c-1.105 0-2.001.896-2.001 1.999h-12c-1.104 0-2 .897-2 2.001v12c-1.104 0-2 .896-2 2v11.999c0 1.104.896 2 2 2v12.001c0 1.104.896 2 2 2h12c0 1.104.896 2 2.001 2h11.997c1.106 0 2.002-.896 2.002-2h12c1.104 0 2-.896 2-2v-12.001c1.104 0 2-.896 2-2v-11.999c0-1.104-.896-2-2-2zm-4.002 23.998c0 1.105-.895 2.002-2 2.002h-31.998c-1.105 0-2-.896-2-2.002v-31.999c0-1.104.895-1.999 2-1.999h31.998c1.105 0 2 .895 2 1.999v31.999zm-5.623-28.908c-.123-.051-.256-.078-.387-.078h-11.39c-.563 0-1.019.453-1.019 1.016 0 .562.456 1.017 1.019 1.017h8.935l-20.5 20.473v-8.926c0-.562-.455-1.017-1.018-1.017-.564 0-1.02.455-1.02 1.017v11.381c0 .562.455 1.016 1.02 1.016h11.39c.562 0 1.017-.454 1.017-1.016 0-.563-.455-1.019-1.017-1.019h-8.933l20.499-20.471v8.924c0 .563.452 1.018 1.018 1.018.561 0 1.016-.455 1.016-1.018v-11.379c0-.132-.025-.264-.076-.387-.107-.249-.304-.448-.554-.551z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Area</span>
                                        <span class="property-info-value">${list.super_buit_up_area} ${list.super_buit_up_area_unit}<b class="property-info-unit"></b></span>
                                    </span>
                                </div>

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M21 48.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v31c0 1.104-.895 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v7.001c0 1.104-.895 1.999-2 1.999zm25 37.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v31c0 1.104-.896 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v7.001c0 1.104-.896 1.999-2 1.999z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Bedrooms</span>
                                        <span class="property-info-value">${bedroom[0]}</span>
                                    </span>
                                </div>

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bath">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M37.003 48.016h-4v-3.002h-18v3.002h-4.001v-3.699c-4.66-1.65-8.002-6.083-8.002-11.305v-4.003h-3v-3h48.006v3h-3.001v4.003c0 5.223-3.343 9.655-8.002 11.305v3.699zm-30.002-24.008h-4.001v-17.005s0-7.003 8.001-7.003h1.004c.236 0 7.995.061 7.995 8.003l5.001 4h-14l5-4-.001.01.001-.009s.938-4.001-3.999-4.001h-1s-4 0-4 3v17.005000000000003h-.001z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Bathrooms</span>
                                        <span class="property-info-value">${list.bathrooms}</span>
                                    </span>
                                </div>
                            </div>
                            
                              <!-- End description area  -->
                            <div class="section">
                                <h4 class="s-property-title">Description</h4>
                                <div class="s-property-content">
                                    <p>${list.properties_details}</p>
                                </div>
                            </div>
                            <!-- End description area  -->

                            <div class="section additional-details">
                                <h4 class="s-property-title">Overview</h4>
                                <ul class="additional-details-list clearfix">
                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Furnishing Status</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${list.furnished_status}</span>
                                    </li>

                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Facing</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${list.facing}</span>
                                    </li>
                                    
                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Water Supply</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${list.water_availabilitty}</span>
                                    </li>

                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Floor</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${list.floor_no}</span>
                                    </li>

                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Non Veg Allowed</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${list.vegeterians}</span>
                                    </li>

                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Gated Security</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${list.security}</span>
                                    </li> 

                                </ul>
                            </div> 
                             
                           <!-- End additional-details area  -->
                           <div class="section property-features">      
                               <h4 class="s-property-title">Amenities</h4>                            
                               <div class="row feaami">
                                   	   <c:if test="${list.air_conditioning eq 'Yes'}">
                                   		 	<div class="col-md-3 form-group" >
                                   				<img src="assets/img/amenities_icon/aircondition.png">&nbsp;Air Conditioning
                                   			</div>
                                   	   </c:if>
                                   		
                                   	   <c:if test="${list.internet eq 'Yes'}">
                                   	   		<div class="col-md-3 form-group">
                                   				<img src="assets/img/amenities_icon/internet.png">&nbsp;Internet
                                   	   		</div>
                                   	   </c:if>

                                   	   <c:if test="${list.cable_tv eq 'Yes'}">
                                   	   		<div class="col-md-3 form-group">
                                   				<img src="assets/img/amenities_icon/cabeltv.png">&nbsp;Cable TV
                                   	  		</div>
                                   	   </c:if>

                                   	   <c:if test="${list.oven eq 'Yes'}">
                                   	   		<div class="col-md-3 form-group">
                                   				<img src="assets/img/amenities_icon/oven.png">&nbsp;Oven
                                   			</div>
                                   	   </c:if>
                                
                                 		<c:if test="${list.swimming_pool eq 'Yes'}">
                                 			 <div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/swimming pool.png">&nbsp;Swimming Pool
                                 			 </div>
                                 		</c:if>
                                
                                 		<c:if test="${list.children_play_area eq 'Yes'}">
                                        	 <div class="col-md-3 form-group" >
                                 				<img src="assets/img/amenities_icon/childrenplayarea.png">&nbsp;Children Play Area
                                 		     </div>
                                 		</c:if>
                                 
                                 		<c:if test="${list.gas_connection eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/gas.png">&nbsp;Gas Connection
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.geyser eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/gyser.png">&nbsp;Geyser
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.club_house eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/clubhouse.png">&nbsp;Club House
                                 			</div>
                                 		</c:if>
                               
                                 		<c:if test="${list.terrace eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/terracegarden.png">&nbsp;Terrace
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.fridge eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/fridge.png">&nbsp;Fridge
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.curtains eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/curtain.png">&nbsp;Curtains
                                 			</div>
                                 		</c:if>
                                 		
                                      	<c:if test="${list.fan eq 'Yes'}">
                                      		<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/fan.png">&nbsp;Fan
                                 			</div>
                                 		</c:if>
                              
                                 		<c:if test="${list.lights eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/light.png">&nbsp;Lights
                                 			</div>
                                 		</c:if>
                               
                                 		<c:if test="${list.gymnasium eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/gym.png">&nbsp;Gymnasium
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.lift eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/lift.png">&nbsp;Lift
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.power_back_up eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/powerbackup.png">&nbsp;Power Back Up
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.security eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/security.png">&nbsp;Security
                                 			</div>
                                 		</c:if>
                                 
                                 		<c:if test="${list.garden eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/garden.png">&nbsp;Garden
                                 			</div>
                                 		</c:if>
                                 
                                 		<c:if test="${list.reserved_parking eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/reservedparking.png">&nbsp;Reserved Parking
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.bed eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/bed.png">&nbsp;Bed
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.cupboard eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/cupboard.png">&nbsp;Cupboard
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.washing_machine eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/washing machine.png">&nbsp;Washing Machine
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.iron eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/iron.png">&nbsp;Iron
                                 			</div>
                                 		</c:if>
                                
                                 		<c:if test="${list.video_door_lock eq 'Yes'}">
                                 			<div class="col-md-3 form-group">
                                 				<img src="assets/img/amenities_icon/videodoorlock.png">&nbsp;Video Door Lock
                                 			</div>
                                 		</c:if>
                                </div>
                           </div>
                           <!-- End features area  -->
                           
							 <div class="section">
                                <h4 class="s-property-title">Disclaimer</h4>
                                <div class="s-property-content">
                                    <p>Propselect endeavours to display on its platform(s), relevant information relating to a particular Property/Project for general informational purpose, including Property/project details, listings, floor area, location, maps etc. The details so published are based on collection of information and data from multiple sources on best effort basis and should not be deemed to constitute advertisements, solicitations, marketing, offer for sale, invitation to offer, invitation to acquire, by the developer/builder or any other entity. The imagery used herein may not represent actuals or may be indicative of style only. No information given creates a warranty or expands the scope of any warranty that cannot be disclaimed under applicable law.
								    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Similar Properties</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="#"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="#">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="#"><img src="assets/img/demo/small-property-1.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="#">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="#"><img src="assets/img/demo/small-property-3.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="#">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="#"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="#">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
							<!-- Add here section -->
                            <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Ads her  </h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <img src="assets/img/ads.jpg">
                                </div>
                            </div><!-- Add here section end -->
                        </aside>
                    </div>
                 </div>
               </c:forEach>
            </div>
      

<%@include file="footer.jsp"%>
 <script type="text/javascript" src="assets/js/lightslider.min.js"></script>
  <script>
            $(document).ready(function () {

                $('#image-gallery').lightSlider({
                    gallery: true,
                    item: 1,
                   /* thumbItem: 9, */
                    slideMargin: 0,
                    speed: 500,
                    auto: true,
                    loop: true,
                    onSliderLoad: function () {
                        $('#image-gallery').removeClass('cS-hidden');
                    }
                });
            });
        </script>
   
</body>
</html>