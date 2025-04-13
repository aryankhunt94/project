<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> new vehicle</h2>
	<form action="savevehicle" method="post">
	Vehicle Name:<input type="text" name="vehicleName"><br><br>
	Vehicle Number:<input type="text" name="vehicleNum"><br><br>
	Vehicle Type:<input type="text" name="vehicleType"><br><br>
	<input type="submit" value="Add Vehicle">
	
	</form>
</body>
</html>