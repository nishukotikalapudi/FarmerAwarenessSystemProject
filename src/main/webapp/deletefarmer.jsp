<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Farmer</title>
    <style>
        /* Styles for the admin navbar */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #2E8B57;
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 14px 20px;
            font-size: 18px;
            margin: 0 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #D32F2F;
        }

        .navbar a.logout {
            background-color: #D32F2F;
        }

        .navbar a.logout:hover {
            background-color: #F44336;
        }

        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: #2E8B57;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        a {
            text-decoration: none;
            color: white;
            background-color:#3CB371; /* Red color for delete links */
            padding: 6px 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #F44336;
        }

        h3 {
            text-align: center;
            font-size: 24px;
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3>Delete Farmer</h3>
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
            <th>ACTION</th>
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
                <td>
                    <a href='<c:url value="delete?id=${f.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
