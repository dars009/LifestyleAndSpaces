<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LifestyleAndSpaces</title>
</head>
<body>
	<sql:setDataSource var="webappDataSource"
			driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/propselect" user="root"
			password="root" />
			<c:set var="webappDataSource" scope="request"  />
</body>
</html>