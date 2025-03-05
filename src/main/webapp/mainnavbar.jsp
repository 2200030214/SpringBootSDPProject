<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JFSD</title>

<body>
<div>
   <h2 align="center">
    <b>Indian Constitution</b>
    <img src="iflag.png" alt="Indian Flag" style="width: 40px; height: 30px; margin-left: 10px; vertical-align: middle;">
</h2>

<br/>
<h2> </h2>
</div>
</body>


<style>
    /* Project Title Styles */
    body {
    /*background-image: url('/img2.webp');*/ /* Path from webapp root */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}
    .header {
        text-align: center;
        padding: 15px 0;
        background-color: #2a2a72; /* Matching color for consistency */
        color: #ffffff;
        font-size: 24px;
        font-weight: bold;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    /* Navbar Styles */
    .navbar {
        background-color: #2a2a72; /* Deep blue background */
        padding: 5px 0; /* Reduced height */
        text-align: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        position: fixed;
        width: 100%; /* Full width */
        top: 50px; /* Position below header */
        z-index: 1000;
    }

    /* Navbar Links */
    .navbar a {
        color: #f4f4f9;
        padding: 10px 15px;
        font-size: 16px;
        text-decoration: none;
        display: inline-block;
        transition: background-color 0.3s, color 0.3s;
        border-radius: 4px;
        margin: 0 5px;
    }

    /* Hover effect for links */
    .navbar a:hover {
        background-color: #3f3fb5;
        color: #ffffff;
    }

    /* Active Link Styling */
    .navbar a.active {
        font-weight: bold;
    }

    /* Ensure main content is visible below the navbar */
    .content {
        padding-top: 120px; /* Adjusted for header and navbar */
        text-align: center;
    }
    /*.navbar
       {
       background-color: Lightgrey;
       }
    */
</style>
</head>
<body>
<div class="navbar">
    <a href="/" class="${page == 'home' ? 'active' : ''}">Home</a>
    <a href="citizenreg" class="${page == 'citizenreg' ? 'active' : ''}">Citizen Registration</a>
    <a href="citizenlogin" class="${page == 'citizenlogin' ? 'active' : ''}">Citizen Login</a>
    <a href="adminlogin" class="${page == 'adminlogin' ? 'active' : ''}">Admin Login</a>
</div>

</body>
</html>
