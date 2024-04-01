<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
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


	.register-form {
    width: 350px;
    margin: 0 auto;
    padding: 20px;
    border: 1px
	solid #ccc;
	background-color: #fff; /* White background for the form */
	
    border-radius: 5px;
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
.register-form
	input[type="text" ],
.register-form input[type="email"
	],
.register-form input[type="password"
	] {
     width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ced4da; /* Border color */
            border-radius: 5px;
            box-sizing: border-box; 
}

.register-form
	button {
    width: 100%;
    padding: 10px;
    background-color:
	#007bff;
    color: #fff;
    border:
	none;
    border-radius: 5px;
    cursor:
	pointer;
}

.register-form button:hover {
    background-color:
	#0056b3;
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
        <a href="Contactus.jsp">Contact</a>
		<a href="about.jsp">About</a>
        
    </div>
 <div class="hero-section">
<form action="userregister" method="post" class="register-form">
	<h1 >User Register</h1>
		Name: <input type="text" name="user_name" required><br> <br>
		Email: <input type="email" name="email" required><br> <br>
		Phone: <input type="text" name="user_phone" required><br> <br>
		Password: <input type="password" name="user_password" required><br> <br>
		Confirm Password: <input type="password" name="cuser_password" required><br>
		<br>
		<button type="submit">Register(User)</button>
	</form>
   </div>

    <footer>
        © 2024 Inventory Management System. All rights reserved.
    </footer>

</body>
</html>