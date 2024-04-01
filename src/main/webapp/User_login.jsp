<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
 
    
    
        form {
            background-color: #fff; /* White background for the form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
            width: 300px;
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

        input[type="email"],
        input[type="password"],
        button {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ced4da; /* Border color */
            border-radius: 5px;
            box-sizing: border-box; /* Ensure padding and border are included in the width */
        }

        button {
            background-color: #007bff; /* Blue color for the button */
            color: #fff; /* White text color */
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Smooth transition effect */
        }

        button:hover {
            background-color: #0056b3; /* Darker blue color on hover */
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

	<form action="/User_login" method="post">
		<h1>User Login</h1>
		Email:<input type="email" name=email required> <br>
		<br> Password:<input type="password" name=user_password required> <br>
		<br>
		<button type="submit">User Login</button>
	</form>
    </div>

    <footer>
        © 2024 Inventory Management System. All rights reserved.
    </footer>

</body>
</html>