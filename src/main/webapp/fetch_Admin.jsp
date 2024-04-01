<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin Details</title>
<style>

        body, h1, p, a {
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

        .navbar a:hover {
            background-color: #0056b3;
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

        .hero-section h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .hero-section p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }


        .hero-section a {
            color: #007bff;
            padding: 10px 30px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color .5s;
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
	width: 100%;
	border-collapse: collapse;
	margin: 20px auto; /* Center the table */
}

th, td {
	border: 1px solid #ddd; /* Border color */
	padding: 8px;
	text-align: left;
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
    
<h1>Admins Details</h1>
	<table border="2">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Password</th>
			<th>Delete</th>
		 	<th>Update</th>
		</tr>
		<c:forEach var="p" items="${e_data }">
			<tr>
				<td>${p.id }</td>
				<td>${p.name }</td>
				<td>${p.email }</td>
				<td>${p.phone }</td>
				<td>${p.password }</td>
				<td><a href="<c:url value='/deleteuser/${p.id }'/>">Delete</a></td>
				
		 		<td><a href="<c:url value='/edituser${p.id }'/>">Update</a></td>
		 
		 
		 	<tr>
		</c:forEach>
		
	</table>
	</div>
    <footer>
        © 2024 Inventory Management System. All rights reserved.
    </footer>

	
</body>
</html>