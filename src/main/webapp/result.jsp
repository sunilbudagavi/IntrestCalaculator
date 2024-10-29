<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interest Calculation Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }

        .result-container {
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
        }

        p {
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h1>Interest Calculation Result</h1>
        <p>Principal Amount: ₹<%= request.getAttribute("principal") %></p>
        <p>Interest Rate: <%= request.getAttribute("rate") %>%</p>
        <p>Time Period: <%= request.getAttribute("time") %> years</p>
        <h3>Calculated Interest: ₹<%= request.getAttribute("interest") %></h3>
    </div>
</body>
</html>
