<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>New Vehicle</h2>
	<table border="20">
		<tr>
			<th>Vehicle Name</th>
			<th>Vehicle Number</th>
			<th>Vehicle Type</th>
		</tr>
		<c:forEach items="${vehicle }" var="v">
			<tr>
				<th>${v.vehicleName }</th>
				<th>${v.vehicleNum }</th>
				<th>${v.vehicleType }</th>
			</tr>
		
		</c:forEach>
	</table>
</body>
</html>