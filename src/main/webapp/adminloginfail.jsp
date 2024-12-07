<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Fail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            text-align: center;
            padding: 50px;
        }
        h2 {
            color: #721c24;
        }
        .error-message {
            font-size: 18px;
            color: #721c24;
            margin-top: 20px;
            font-weight: bold;
            background-color: #f8d7da;
            padding: 10px;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            display: inline-block;
        }
        .retry-container {
            background-color: #ffffff;
            border: 2px solid #f5c6cb;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }
        a {
            color: #721c24;
            font-size: 16px;
            text-decoration: none;
            padding: 10px 20px;
            border: 1px solid #721c24;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #721c24;
            color: #ffffff;
        }
        /* Added space after error message */
        .error-message + br {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="retry-container">
        <h2>Login Failed</h2>
        <!--<div class="error-message">
            <c:out value="${message}"></c:out>
        </div>-->
        <br/>
        <a href="adminlogin">Try Again</a>
    </div>
</body>
</html>
