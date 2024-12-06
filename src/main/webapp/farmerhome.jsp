<%@page import="com.klef.jfsd.springboot.model.Farmer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
    Farmer f = (Farmer) session.getAttribute("farmer");
    if(f == null){
        response.sendRedirect("farmersessionfail");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farmer Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            color: #4CAF50;
        }
        .content {
            width: 80%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .welcome-message {
            font-size: 18px;
            color: #333;
        }
        .section {
            margin: 20px 0;
        }
        .section h3 {
            color: #4CAF50;
        }
        .section p {
            color: #555;
        }
    </style>
</head>
<body>
    <%@include file="farmernavbar.jsp" %>
    
    <div class="content">
        <h2>Welcome to the Farmer Awareness Platform</h2>
        
        <div class="welcome-message">
            <p>Welcome, <%= f.getName() %>! We're here to help you grow your farming knowledge and connect with various sectors. Here’s what you can do:</p>
        </div>
        
        <div class="section">
            <h3>Your Profile</h3>
            <p>Update your profile, view your farming information, and access personalized resources to improve your farming skills.</p>
        </div>
        
        <div class="section">
            <h3>Farm Resources</h3>
            <p>Explore useful resources, articles, and tips to enhance your farming practices. Stay informed with the latest trends in agriculture.</p>
        </div>

        <div class="section">
            <h3>Explore Farmers by Category</h3>
            <p>Connect with other farmers based on your farming category. Share experiences, ideas, and grow together as a community.</p>
        </div>
    </div>
</body>
</html>
