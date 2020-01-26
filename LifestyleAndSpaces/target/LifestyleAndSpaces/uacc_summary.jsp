<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
<head>
<style>
 body{
  background:#f5f5f5 !important; 
  }
</style> 
</head>
<%@include file="connection.jsp"%>
<%@include file="header.jsp"%>
<div class="container">
	<div class="paddleft15 mt10">
		<nav class="navbar navbar-default navuacc">
			<div class="">
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="uacc_summary.jsp">Dashboard</a></li>
						<li><a href="min.htm?id=<%=userId%>">Properties</a></li>
						<li><a href="profile.htm?id=<%=userId%>">Profile </a></li>
					</ul>

				</div>
			</div>
		</nav>
	</div>
	<div class="col-md-12 paddleft0 mt10">
		<div class="cardpan space col-md-12">

			<div class="col-md-4">
				<label>Statistics</label>
				<ul class="list-group clear-list m-t">
					<li class="list-group-item fist-item"><span class="pull-right">
							0 </span> <span class="label label-success">1</span> Total Active
						Properties</li>
					<li class="list-group-item"><span class="pull-right"> 0
					</span> <span class="label label-info">2</span> Total Search Views</li>
					<li class="list-group-item"><span class="pull-right"> 0
					</span> <span class="label label-primary">3</span> Property Detail Views</li>
					<li class="list-group-item"><span class="pull-right"> 0
					</span> <span class="label label-default">4</span> Contacts Viewed</li>
					<li class="list-group-item"><span class="pull-right"> 0
					</span> <span class="label label-primary">5</span> Write a letter to
						Sandra</li>
				</ul>
			</div>
			<div class="col-md-8">
				<canvas id="myChart"></canvas>
			</div>
		</div>
	</div>

	<sql:query dataSource="${webappDataSource}" var="profiledetails">
		SELECT * FROM profile WHERE usr_id = <%=userId%>;
	</sql:query>	

	<div class="">
		<div class="col-md-6 paddleft0">
			<div class="panel panel-default panel-custom cardpan mt10">
				<div class="panel-heading">Profile</div>
				<div class="panel-body">
					<c:forEach var="row" items="${profiledetails.rows}"> 
					<ul class="list-group clear-list m-t profilelist">
						<li class="list-group-item fist-item">
							<span class="plco">Name:</span> ${row.first_name}</li>
							<li class="list-group-item"><span class="plco"> Email:</span> ${row.usr_email}</li>
							<li class="list-group-item"><span class="plco">  Contact No:</span>+91 ${row.contact_one}</li>
						<li class="list-group-item"><span class="plco">Company Name:</span>${row.comp_name}</li>
						<li class="list-group-item"><span class="plco">  City:</span> ${row.city}</li>
						<li class="list-group-item"><span class="plco">Address:</span> ${row.usr_address}</li>
						<li class="list-group-item"><span class="plco">  Registered As:</span> ${row.usr_type}</li>
						<li class="list-group-item"><a href="profile.htm?id=<%=userId%>"> Edit Details</a></li>
					</ul>
					</c:forEach>
				</div>
			</div>
		</div>

		<div class="col-md-6 paddleft0">
			<div class="panel panel-default panel-custom cardpan mt10">
				<div class="panel-heading">Subscription</div>
				<div class="panel-body">
					<p>You don't have any active paid subscriptions. Please get
						your package renewed within -216 days failing which your account
						history will be removed. To renew, please contact your Account
						Manager</p>
					<label>Order History</label>
					<p>10 Certified Agent Listings (+5 complimentary) pack for top
						6 cities for 3 months, Order ID:10029589, Order Date: 01 Apr 2017</p>
						<a href="#">Complete Order History</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>
<script src="assets/js/Chart.min.js"></script> 
<script>
$(document).ready(function () {
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
	type : 'line',
	data : {
		labels : [ "Red", "Blue", "Yellow", "Green", "Purple", "Orange" ],
		datasets : [ {
			label : '# of Votes',
			data : [ 12, 19, 3, 5, 2, 3 ],
			backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)' ],
			borderColor : [ 'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ],
			borderWidth : 1
		} ]
	},
	options : {
		scales : {
			yAxes : [ {
				ticks : {
					beginAtZero : true
				}
			} ]
		}
	}
});
}); 
</script>
</body>
</html>