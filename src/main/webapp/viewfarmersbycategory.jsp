<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
    <title>View Farmers By Category</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h3 {
            color: #3b3b3b;
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
        }

        table {
            width: 100%;
            max-width: 1200px;
            margin: 30px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            word-wrap: break-word;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
	<%@include file="farmernavbar.jsp" %>
    <h3>View Farmers By Category</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>CATEGORY</th>
            <th>INCOME</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${farmerslist}" var="f">
            <tr>
                <td><c:out value="${f.id}"/></td>
                <td><c:out value="${f.name}"/></td>
                <td><c:out value="${f.gender}"/></td>
                <td><c:out value="${f.dateofbirth}"/></td>
                <td><c:out value="${f.category}"/></td>
                <td><c:out value="${f.income}"/></td>
                <td><c:out value="${f.location}"/></td>
                <td><c:out value="${f.email}"/></td>
                <td><c:out value="${f.contact}"/></td>
                <td><c:out value="${f.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
