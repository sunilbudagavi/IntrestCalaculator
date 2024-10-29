<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interest Calculator</title>
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

        .calculator-container {
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

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #333;
        }

        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .button {
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .result {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="calculator-container">
        <h1>Interest Calculator</h1>

        <form action="calculateServlet" method="POST">
            <label for="principal">Principal Amount:</label>
            <input type="number" id="principal" name="principal" placeholder="Enter principal amount" required>

            <label for="rate">Interest Rate (%):</label>
            <input type="number" id="rate" name="rate" placeholder="Enter interest rate" required>

            <label for="time">Time Period (years):</label>
            <input type="number" id="time" name="time" placeholder="Enter time period" required>

            <button type="submit" class="button">Calculate Interest</button>
        </form>

    </div>
</body>
</html>
