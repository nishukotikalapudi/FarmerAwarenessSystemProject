<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Farmers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
        }

        .table-container {
            max-width: 1200px;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 14px;
            word-wrap: break-word;
        }

        th {
            background-color: #2E8B57;
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
            padding: 12px 18px;
            font-size: 16px;
            margin: 0 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #3CB371;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="table-container">
        <h3>View All Farmers</h3>
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
    </div>
</body>
</html>
