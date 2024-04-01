<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa; /* Light gray background */
	margin: 0;
	padding: 0;
}

form {
	background-color: #fff; /* White background for the form */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
	width: 300px;
	margin: 50px auto; /* Center the form */
}

input[type="text"], input[type="date"], button {
	width: calc(100% - 20px); /* Subtract padding from width */
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ced4da; /* Border color */
	border-radius: 5px;
	box-sizing: border-box;
	/* Ensure padding and border are included in the width */
}

button {
	background-color: #007bff; /* Blue color for the button */
	color: #fff; /* White text color */
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* Smooth transition effect */
}
 h1 {
    text-align: center;
    font-size: 36px;
    color: #007bff; /* Blue color */
    margin-bottom: 30px; /* Add space below the heading */
    text-transform: uppercase; /* Convert text to uppercase */
    letter-spacing: 2px; /* Increase letter spacing for a stylish look */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Add shadow effect */
}

button:hover {
	background-color: #0056b3; /* Darker blue color on hover */
}
</style>

</head>
<body>

	<c:set var="ob" value="${user_data}" />

	<form action="/updateuser1/${ob.id }" method="post">
	<h1>User Update</h1>
		<input type="text" name="id" value="${ob.id}" /> 
		Name<input type="text" name="name" value="${ob.name}" /> 
		<br>
		<br> 
		Email: <input type="text" name="email" value="${ob.email}" />
		<br> 
		<br> 
		Phone: <input type="text" name="phone" value="${ob.phone}" /> 
		<br> 
		<br>
		Password: <input type="text" name="password" value="${ob.password}" />
		<br> 
		<br>
		<button type="submit">Update</button>
	</form>
</body>
</html>