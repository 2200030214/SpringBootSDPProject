<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Product Success</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
    }

    .container {
      max-width: 600px;
      margin: 50px auto;
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
      padding: 20px;
      text-align: center;
    }

    .message {
      font-size: 18px;
      color: #333;
      margin-bottom: 20px;
    }

    .btn-container {
      display: flex;
      justify-content: center;
      gap: 10px;
    }

    .btn {
      font-size: 16px;
      padding: 10px 20px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="message">
      <c:out value="${message}"></c:out>
    </div>
    <div class="btn-container">
      <button class="btn btn-primary" onclick="goBackToEducator()">Back to Home</button>
      <button class="btn btn-success" onclick="viewAllProducts()">View All images</button>
    </div>
  </div>

  <script>
    function goBackToEducator() {
      window.location.href = "educatornavbar.jsp";
    }

    function viewAllProducts() {
      window.location.href = "viewallproducts.jsp";
    }
  </script>
</body>
</html>