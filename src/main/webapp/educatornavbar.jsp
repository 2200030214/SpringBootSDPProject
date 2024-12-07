<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">

<title>Indian Consitution Awareness</title>
<style>
/* General styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: lightgrey;
}

/* Navigation bar styles */
div {
    background-color: #333; /* Dark background for the navbar */
    overflow: hidden; /* Clear floats */
    padding: 10px 0;
    text-align: center; /* Center-align links */
}

/* Links within the navbar */
div a {
    color: white; /* Text color */
    text-decoration: none; /* Remove underline */
    padding: 14px 20px; /* Spacing around links */
    display: inline-block; /* Inline-block for spacing */
    font-size: 16px;
    transition: background-color 0.3s ease; /* Smooth hover effect */
}

/* Hover effect for links */
div a:hover {
    background-color: #575757; /* Slightly lighter color */
    border-radius: 4px; /* Rounded corners */
}
</style>
</head>
<body bgcolor="lightgrey">
<h2 align="center">Educator Module</h2>
<div>
<a href="educatorhome.jsp">Home</a>&nbsp;&nbsp;
<a href="onlinesessions.jsp">Conduct Online Sessions</a>&nbsp;&nbsp;
<a href="onlinequiz.jsp">Conduct Online Quiz</a>&nbsp;&nbsp;
<a href="addproduct.jsp">Add Images</a>&nbsp;&nbsp;
<a href="viewallproducts.jsp">View Images</a>&nbsp;&nbsp;

</div>
</body>
</html>