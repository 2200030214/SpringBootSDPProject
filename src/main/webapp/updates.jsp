<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Submit Amendment Proposal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://img.freepik.com/free-vector/background-template-with-mandala-pattern-design_1308-43584.jpg?semt=ais_hybrid');
            background-size: cover;
            background-position: center;
            color: black;
        }
        
        /* Navbar Styling */
        nav {
            background-color: rgba(0, 0, 0, 0.7);
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
            padding: 10px 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #f2f2f2;
            text-transform: uppercase;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        ul li {
            margin: 0 15px;
        }

        ul li a {
            color: #f2f2f2;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        ul li a:hover {
            color: #f39c12;
        }

        /* Content Section Styling */
        .container {
            max-width: 700px;
            margin: 100px auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
        }
        
        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
        }

        input, textarea, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <div class="logo">Legal Expert</div>
        <ul>
            <li><a href="insight.jsp">Insights</a></li>
            <li><a href="updates.jsp">Updates</a></li>
            <li><a href="guidance.jsp">Guidance</a></li>
            <li><a href="mainnavbar.jsp">Back</a></li>
            <li><a href="">  </a></li>
        </ul>
    </nav>

    <!-- Main Content Section -->
    <div class="container">
        <h2>Submit Amendment Proposal</h2>
        <form action="successupdate.jsp" method="post">
            <!-- Citizen Name -->
            <label for="citizenName">Your Name:</label>
            <input type="text" id="citizenName" name="citizenName" required placeholder="Enter your full name">
            
            <!-- Citizen Email -->
            <label for="citizenEmail">Your Email:</label>
            <input type="email" id="citizenEmail" name="citizenEmail" required placeholder="Enter your email address">
            
            <!-- Amendment Title -->
            <label for="amendmentTitle">Amendment Title:</label>
            <input type="text" id="amendmentTitle" name="amendmentTitle" required placeholder="Enter amendment title">
            
            <!-- Amendment Description -->
            <label for="amendmentDescription">Amendment Description:</label>
            <textarea id="amendmentDescription" name="amendmentDescription" rows="5" required placeholder="Describe the amendment in detail"></textarea>
            
            <!-- Challenges -->
            <label for="challenges">Challenges:</label>
            <textarea id="challenges" name="challenges" rows="4" required placeholder="Describe the challenges this amendment addresses"></textarea>
            
            <!-- Solution -->
            <label for="solution">Proposed Solution:</label>
            <textarea id="solution" name="solution" rows="4" required placeholder="Describe your proposed solution"></textarea>
            
            <!-- Submit Button -->
            <button type="submit">Submit Proposal</button>
        </form>
    </div>
</body>
</html>
