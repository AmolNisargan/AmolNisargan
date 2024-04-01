<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body, h1 {
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
            background-image: url('https://th.bing.com/th/id/R.6830be0d9bbfb6f82b5cddbe01d77207?rik=E4aybu1gaXWcGA&riu=http%3a%2f%2fwww.conceptdraw.com%2fsolution-park%2fresource%2fimages%2fsolutions%2fpie-charts%2fGraphs-and-Chatrs-Pie-Chart-Exploded-Pie-Chart-Template.png&ehk=izxmsBuoVBKMKnWi%2b7KHkMZ9vCeRiwhr50Mbw0ZoAss%3d&risl=&pid=ImgRaw&r=0');
            background-repeat: no-repeat;
            background-size: 50%;
            background-position: center;
            height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #007bff;
            text-align: center;
        }
     .hero-section a {
            background-color: #f8f9fa;
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
	margin-bottom: 15px; /* Add space below the heading */
	text-transform: uppercase; /* Convert text to uppercase */
	letter-spacing: 2px; /* Increase letter spacing for a stylish look */
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Add shadow effect */
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
        <a href="/fetchuser">Admin Details</a>
        <a href="/ordersfetch">Order Details</a>
        <a href="/chart">Product Popularity</a>        
    </div>
     <h1>Product Popularity</h1>
     <div class="hero-section">
     
    
     
     </div>
     
     <footer>
        © 2024 Inventory Management System. All rights reserved.
    </footer>

</body>
</html>