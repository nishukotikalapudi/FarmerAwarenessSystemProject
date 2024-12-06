<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
    }
    h1 {
        text-align: center;
        color: #2E8B57;
        padding-top: 20px;
    }
    .content {
        text-align: center;
        padding: 20px;
    }
    .statistics {
        display: flex;
        justify-content: space-around;
        padding: 20px 0;
    }
    .stat-box {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 30%;
        text-align: center;
    }
    .stat-box h3 {
        margin: 10px 0;
        color: #333;
    }
    .stat-box p {
        font-size: 24px;
        color: #2E8B57;
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

<h1>Welcome to the Admin Dashboard</h1>
<div class="content">
    <p>As the administrator, you can manage farmer data, view statistics, and ensure smooth operation of the platform.</p>

    <div class="statistics">
        <div class="stat-box">
            <h3>Total Farmers</h3>
            <p><c:out value="${count}"/></p>
        </div>
        <div class="stat-box">
            <h3>Active Farmers</h3>
            <p><c:out value="${activeFarmers}"/></p> <!-- You can add this attribute if needed -->
        </div>
        <div class="stat-box">
            <h3>Pending Approvals</h3>
            <p><c:out value="${pendingApprovals}"/></p> <!-- Another metric if applicable -->
        </div>
    </div>
</div>

</body>
</html>
