<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        h2 {
            color: #4caf50;
        }
        .message {
            font-size: 18px;
            color: #4caf50;
            margin-top: 20px;
            font-weight: bold;
        }
        .success-container {
            background-color: #ffffff;
            border: 2px solid #4caf50;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }
        a {
            color: #4caf50;
            font-size: 16px;
            text-decoration: none;
            padding: 10px 20px;
            border: 1px solid #4caf50;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #4caf50;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h2>Successfully Registered</h2>
        <p class="message">Your registration was successful!</p>
        <p><c:out value="${message}"></c:out></p>
        <br/>
        <a href="educatorlogin">LOGIN HERE</a>
    </div>
</body>
</html>
