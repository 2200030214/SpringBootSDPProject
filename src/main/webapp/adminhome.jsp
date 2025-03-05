<%@ page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            color: #333;
            font-size: 28px;
            margin-top: 20px;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }
        .navbar {
            background-color: #333;
            padding: 10px 0;
            text-align: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 15px;
            font-size: 16px;
            border-radius: 5px;
        }
        .navbar a:hover {
            background-color: #575757;
        }
        .citizen-count {
            text-align: center;
            font-size: 20px;
            color: #4CAF50;
            font-weight: bold;
            margin-top: 20px;
        }
        .count-value {
            font-size: 24px;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h2>Welcome to the Admin Dashboard</h2>
        <div class="citizen-count">
            <p>Total Citizens: <span class="count-value"><c:out value="${count}"></c:out></span></p>
        </div>
    </div>
</body>
</html>
