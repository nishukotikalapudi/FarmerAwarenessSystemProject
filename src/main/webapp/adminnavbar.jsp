<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* Styles for the admin navbar */
        .admin-navbar {
            display: flex;
            justify-content: center;
            background-color: #2E8B57;
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .admin-navbar a {
            text-decoration: none;
            color: white;
            padding: 14px 20px;
            font-size: 18px;
            margin: 0 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .admin-navbar a:hover {
            background-color: #3CB371;
        }

        .admin-navbar a.logout {
            background-color: #D32F2F;
        }

        .admin-navbar a.logout:hover {
            background-color: #F44336;
        }
    </style>
</head>
<body>
    <h2 align="center" style="color: #4CAF50;">FARMER AWARENESS SYSTEM - Admin Dashboard</h2>
    <div class="admin-navbar">
        <a href="adminhome">Home</a>
        <a href="viewallfarmers">View Farmers</a>
        <a href="publisharticle">Publish Articles</a>
        <a href="deletefarmer">Delete Farmer</a>
        <a href="adminlogout" class="logout">Logout</a>
    </div>
</body>
</html>
