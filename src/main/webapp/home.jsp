<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Farming Awareness</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            text-align: center;
            margin-bottom: 30px;
        }

        header h1 {
            color: #2E8B57;
            font-size: 3em;
        }

        header p {
            font-size: 1.2em;
            color: #555;
        }

        .main-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 30px;
            text-align: center;
        }

        .info-box {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }

        .info-box h2 {
            font-size: 2em;
            color: #333;
        }

        .info-box p {
            font-size: 1.2em;
            line-height: 1.5;
            color: #444;
        }

        

        footer {
            text-align: center;
            padding: 20px;
            background-color: #2E8B57;
            color: white;
        }
    </style>
</head>

<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="container">
        <header>
            <h1>Welcome to Farming Awareness</h1>
            <p>Empowering farmers and raising awareness about the importance of agriculture</p>
        </header>

        <div class="main-content">
            <div class="info-box">
                <h2>Project Goal</h2>
                <p>Our mission is to inspire society about the importance of farming and help farmers benefit from various sectors. This platform is designed to raise awareness and provide valuable resources to farmers, helping them enhance their livelihoods and connect with different sectors.</p>
            </div>

            <div class="info-box">
                <h2>Why Farming Matters?</h2>
                <p>Farming is the backbone of our society, ensuring food security, environmental sustainability, and economic growth. This platform highlights the significant contributions of farmers and aims to support them in every way possible through education, resources, and opportunities.</p>
            </div>

            
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Farming Awareness. All rights reserved.</p>
    </footer>
</body>

</html>
