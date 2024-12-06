<%@page import="com.klef.jfsd.springboot.model.Farmer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    Farmer f = (Farmer) session.getAttribute("farmer");
    if(f==null){
        response.sendRedirect("farmersessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Profile</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        color: #333;
    }
    h2 {
        text-align: center;
        color: #4CAF50;
    }
    .profile-container {
        width: 60%;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .profile-header {
        text-align: center;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: bold;
        color: #4CAF50;
    }
    .profile-details {
        margin: 20px 0;
    }
    .profile-details div {
        margin-bottom: 10px;
    }
    .profile-details span {
        font-weight: bold;
    }
    .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        margin-top: 20px;
        text-align: center;
    }
    .btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<%@include file="farmernavbar.jsp" %>

<div class="profile-container">
    <div class="profile-header">Farmer Profile</div>
    <div class="profile-details">
        <div><span>ID: </span><%=f.getId() %></div>
        <div><span>Name: </span><%=f.getName() %></div>
        <div><span>Gender: </span><%=f.getGender() %></div>
        <div><span>Date of Birth: </span><%=f.getDateofbirth() %></div>
        <div><span>Category: </span><%=f.getCategory() %></div>
        <div><span>Income: </span><%=f.getIncome() %></div>
        <div><span>Email: </span><%=f.getEmail() %></div>
        <div><span>Location: </span><%=f.getLocation() %></div>
        <div><span>Contact: </span><%=f.getContact() %></div>
        <div><span>Status: </span><%=f.getStatus() %></div>
    </div>
    <a href="updatefarmer" class="btn">Edit Profile</a>
</div>
</body>
</html>
