<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Inquiry List</title>
    <style>
 body,h1,p,a {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        
.navbar {
            background-color: #007bff;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            padding: 20px 10%;
            color: white;
            
        }
        
.navbar a {
            color: white;
            text-decoration: none;
            padding: 7px 25px;
            transition: background-color .5s;
        }
        
.hero-section {
            background-image: url('https://images.pexels.com/photos/6476577/pexels-photo-6476577.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
            background-size: cover;
            background-position: center;
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #007bff;
            text-align: center;
}
      
.hero-section a:hover {
            background-color: #e2e6ea;
        }
        
 footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
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


table {
	width: 95%;
	border-collapse: collapse;
	margin: 20px auto; /* Center the table */
}

th, td {
	border: 1px solid #ddd; /* Border color */
	padding: 8px;
	text-align: left;
	background-color: #ddd;
}

th {
	background-color: #007bff; /* Blue background for table header */
	color: #fff; /* White text color */
}

tr:nth-child(even) {
	background-color: #f2f2f2; /* Light gray background for even rows */
}

tr:hover {
	background-color: #ddd; /* Dark gray background on hover */
}

a {
	text-decoration: none;
	color: #007bff; /* Blue color for links */
}

a:hover {
	color: #0056b3; /* Darker blue color on hover */
}

    </style>
</head>
<body>

<div class="navbar">
        <a href="/">Home</a>
        <a href="Registration.jsp">Register (Admin)</a>
		<a href="login.jsp">Login (Admin)</a>
		<a href="User_Add.jsp">Register (User)</a>
		<a href="User_login.jsp">Login (User)</a>
		<a href="/fetch">View All Products</a>
		<a href="/inquiryfetch">Inquiries</a>
        
        
    </div>

         <div class="hero-section">
    <h1>Inquiry List</h1>
    
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="inquiry" items="${inquiries}">
                <tr>
                    <td>${inquiry.name}</td>
                    <td>${inquiry.email}</td>
                    <td>${inquiry.message}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    <footer>
        © 2024 Inventory Management System. All rights reserved.
    </footer>
</body>
</html>
