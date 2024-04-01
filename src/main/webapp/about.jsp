<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Inventory Management System</title>
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
            background-image: url('https://cdn.pixabay.com/photo/2023/03/16/08/45/blockchain-7856210_1280.jpg');
            background-size: cover;
            background-position: center;
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: black;
        }

        .hero-section h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            text-align: center;
            color: purple;
        }

        .hero-section p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .hero-section a {
            background-color: yellow;
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
    
    <div class="container">
    <br>
        <h1>About Inventory Management System</h1>
        <p>Welcome to the Inventory Management System, a comprehensive solution designed to streamline inventory tracking and management for businesses of all sizes. Whether you're a small startup or a large enterprise, our system offers a range of features to meet your inventory needs effectively.</p>
        
        <h2>Features:</h2>
        <ol>
            <li><strong>Product Management:</strong> Easily add, edit, and delete products in your inventory.</li>
            <li><strong>Stock Management:</strong> Monitor stock levels in real-time and receive alerts when inventory levels are low.</li>
            <li><strong>Order Processing:</strong> Streamline the order fulfillment process from start to finish.</li>
            <li><strong>Admin Dashboard:</strong> Gain valuable insights into product performance, sales trends, and stock status through our intuitive admin dashboard.</li>
            <li><strong>User Authentication:</strong> Securely authenticate users and control access to sensitive features and data within the system.</li>
            <li><strong>Responsive Design:</strong> Enjoy a seamless user experience across devices with our responsive design.</li>
        </ol>
        
        <h2>How It Works:</h2>
        <ol>
            <li><strong>Add Products:</strong> Begin by adding your products to the inventory database.</li>
            <li><strong>Manage Stock:</strong> Keep track of your inventory levels in real-time.</li>
            <li><strong>Process Orders:</strong> Process customer orders efficiently from receipt to fulfillment.</li>
            <li><strong>Gain Insights:</strong> Leverage the power of data analytics to gain valuable insights into your inventory performance.</li>
            <li><strong>User Management:</strong> Administer user accounts and permissions to ensure secure access to the system.</li>
        </ol>
        
        <h2>Get Started:</h2>
        <p>Ready to take control of your inventory management? Sign up for our Inventory Management System today and experience the convenience of centralized inventory tracking, streamlined order processing, and actionable insights into your business operations.</p>
        <p>For any inquiries or assistance, please contact our support team at <a href="mailto:nisargan.ap@gmail.com">support@ims.com</a>. We're here to help you every step of the way!</p>
        
        <p>Thank you for choosing our Inventory Management System. Let's optimize your inventory management together!</p>
    </div>
   </div>
   <footer>
        © 2024 Inventory Management System. All rights reserved.
    </footer>
</body>
</html>
