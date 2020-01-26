<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<style>
	body {
		background: #f5f5f5 !important;
	}
</style>
</head>
<%@include file="header.jsp"%>
<%@include file="connection.jsp"%>
<div class="container">
	<div class="paddleft15 mt10">
		<nav class="navbar navbar-default navuacc">
			<div class="">
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="uacc_summary.jsp">Dashboard</a></li>
						<li class="active"><a href="min.htm?id=<%=userId%>">Properties</a></li>
						<li><a href="profile.htm?id=<%=userId%>">Profile </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<div class="col-md-12 paddleft0">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-9 cardpan space mt10 mb20">
					<div class="col-md-12 p0">
						<div class="search-form wow pulse uprolist-custom"
							data-wow-delay="0.8s">
							<form action="propsearch.htm" method="post"
								class="uprolist-inline form-inline">
								<input type="hidden" name="userId" value="<%=userId%>">
								<div class="form-group rentser ser20">
									<select id="lunchBegins" name="propertyFor"
										class="selectpicker br1" data-live-search="true"
										data-live-search-style="begins" title="Select">
										<option>Rent</option>
										<option>Sale</option>
									</select>
								</div>
								<div class="form-group ser21">
									<input type="text" name="locality" class="form-control br1"
										placeholder="Locality"
										style="border-right: 1px solid #ccc !important;">
								</div>
								<div class="form-group ser22">
									<select id="lunchBegins" name="city" class="selectpicker br1"
										data-live-search="true" data-live-search-style="begins"
										title="Select your city">
										<option>Pune</option>
										<option>Mumbai</option>
									</select>
								</div>
								<div class="form-group ser23">
									<select id="lunchBegins" name="propertyType"
										class="selectpicker br1" data-live-search="true"
										data-live-search-style="begins" title="Property Type">
										<option>Commercial Office Space</option>
										<option>Penthouse</option>
										<option>Commercial Shop</option>
										<option>Industrial Land</option>
									</select>
								</div>
								<button class="btn search-btn ser24" type="submit">Search</button>
							</form>
						</div>
					</div>

			<div class="row">
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
							<div class="col-md-12 uprolistv">
								<div class="col-md-4 paddleft0">
									<a href="full.htm?propid=${propId}"> <img 
									   src="file.htm?path=${imgPath}" alt="image" 
									   class="uprolistvimg" />	
									</a>
								</div>
								<div class="col-md-8">
									<a href="full.htm?propid=${list.prop_id}">For
										${list.property_for},${list.bedroom},${list.prop_name},${list.property_type}
										,${list.locality},${list.prop_city} <br> <c:choose>
											<c:when test="${list.property_for eq 'Sale'}">
												<i class="fa fa-inr"></i> ${list.expected_price}                               	
	                               	</c:when>
											<c:otherwise>
												<i class="fa fa-inr"></i> ${list.monthly_rent}
	                               	</c:otherwise>
										</c:choose>,${list.super_buit_up_area} ${list.super_buit_up_area_unit}
									</a> <span>ID: ${list.prop_id}</span>| <span>Posted:<fmt:formatDate
											type="date" value="${list.prop_update_date}" />
									</span> | <span> Edited: <fmt:formatDate type="date"
											value="${list.prop_update_date}" /></span>
									<div class="dropdown">
										<button class="btn dropdown-toggle p0" type="button"
											data-toggle="dropdown">
											More <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#">Edit</a></li>
											<li><a href="#">Delete</a></li>
											<li><a href="#">Add/Modify Image</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- property list div -->
						</c:forEach>
					</div>


					<div class="row">
						<div class="col-md-12">
							<center>
								<span style="color: red;">${Message}</span>
							</center>
						</div>
					</div>
				</div>
				<div class="col-md-3 paddright0">
					<div class="col-md-12 cardpan space mt10 mb20 mh450">Add Here
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>
<script src="assets/js/Chart.min.js"></script>
</body>
</html>