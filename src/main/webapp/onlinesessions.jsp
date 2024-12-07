<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Conduct Online Sessions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 20px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="text"], input[type="date"], input[type="time"], input[type="number"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .back-button {
            display: inline-block;
            margin-bottom: 20px;
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 4px;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
        .message {
            margin-top: 20px;
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="educatornavbar.jsp" class="back-button">&larr; Back</a>
        <h1>Schedule an Online Session</h1>
        <form method="post" onsubmit="showMessage(event)">
            <label for="title">Session Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>

            <label for="duration">Duration (hours):</label>
            <input type="number" id="duration" name="duration" min="1" required>

            <label for="platform">Platform:</label>
            <input type="text" id="platform" name="platform" required>

            <input type="submit" value="Schedule Session">
        </form>
        <div id="confirmation" class="message" style="display: none;">Session has been successfully scheduled!</div>
    </div>

    <script>
        function showMessage(event) {
            event.preventDefault(); // Prevent form submission
            document.getElementById('confirmation').style.display = 'block';
        }
    </script>
</body>
</html>