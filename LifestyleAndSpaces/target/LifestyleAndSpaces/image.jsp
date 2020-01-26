<!DOCTYPE html>
<html lang="en">
<head>
  <title>Propselect.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="connection.jsp" %>
	<sql:query var="propimage" dataSource="${webappDataSource}">
		SELECT p.*,i.img_name
		FROM properties_details p 
		JOIN prop_img i
		ON p.prop_id = i.prop_id_fk
		WHERE p.usr_id = 2;
	</sql:query>
	
	<div class="container">
	  <c:forEach var="row" items="${propimage.rows}">
		<img src="file1.htm?path=${row.img_name}" class="img-circle" alt="propimages" width="304" height="236">	  	
	  </c:forEach>
	</div>

</body>
</html>
