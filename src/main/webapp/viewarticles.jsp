<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Published Articles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h3 {
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        td {
            font-size: 14px;
            color: #555;
        }
        p {
            text-align: center;
            font-size: 18px;
            color: #777;
        }
    </style>
</head>
<body>
    <h3>Published Articles</h3>
    
    <c:if test="${not empty articles}">
        <table border="1">
            <tr>
                <th>Title</th>
                <th>Content</th>
                <th>Published Date</th>
            </tr>
            <c:forEach var="article" items="${articles}">
                <tr>
                    <td>${article.title}</td>
                    <td>${article.content}</td>
                    <td>${article.publishedDate}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    
    <c:if test="${empty articles}">
        <p>No articles found.</p>
    </c:if>
</body>
</html>
