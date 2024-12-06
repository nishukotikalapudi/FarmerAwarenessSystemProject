<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Awareness System</title>
    <style>
        /* Styles for the farmer navbar */
        .farmer-navbar {
            display: flex;
            justify-content: center;
            background-color: #2E8B57;
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .farmer-navbar a {
            text-decoration: none;
            color: white;
            padding: 14px 20px;
            font-size: 18px;
            margin: 0 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .farmer-navbar a:hover {
            background-color: #3CB371;
        }

        .farmer-navbar a.logout {
            background-color: #D32F2F;
        }

        .farmer-navbar a.logout:hover {
            background-color: #F44336;
        }
    </style>
</head>
<body>
    <h2 align="center" style="color: #4CAF50;">FARMER AWARENESS SYSTEM</h2>
    <div class="farmer-navbar">
        <a href="farmerhome">Home</a>
        <a href="farmerprofile">My Profile</a>
        <a href="updatefarmer">Update Profile</a>
        <a href="viewfarmersbycategory">View Farmers by Category</a>
        <a href="viewarticles">Read Articles</a>
        <a href="farmerlogout" class="logout">Logout</a>
    </div>
</body>
</html>
