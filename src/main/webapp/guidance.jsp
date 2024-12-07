<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guidance - Indian Constitution</title>
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
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://img.freepik.com/free-vector/watercolor-background-with-hand-drawn-elements_23-2148855700.jpg?semt=ais_hybrid');
            background-size: cover;
            color: Black;
        }
        header {
            background-color:#8BC34A; /* Changed header color to blue */
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 1.5em;
        }
        .container {
            margin: 20px auto;
            width: 90%;
            max-width: 800px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .guidance-section {
            margin: 20px 0;
        }
        .guidance-section h2 {
            color: #000;
            border-bottom: 2px solid #000;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }
        .guidance-section ul {
            padding-left: 20px;
            margin-top: 10px;
        }
        .guidance-section ul li {
            margin-bottom: 10px;
            line-height: 1.6;
        }
        .social-media {
            text-align: center;
            margin-top: 30px;
        }
        .social-media a {
            display: inline-block;
            margin: 10px 15px;
            color: #000;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #000;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
            position: relative;
        }
        .social-media a img {
            width: 24px; /* Size of the social media logo */
            height: 24px;
            margin-right: 10px;
            vertical-align: middle;
        }
        .social-media a:hover {
            background-color: #000;
            color: white;
        }
        .thank-you {
            text-align: center;
            margin-top: 30px;
            color: #555;
            font-size: 1.1em;
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
    <div class="container">
        <div class="guidance-section">
            <h2>Our Vision</h2>
            <p>Our goal is to empower every citizen with the knowledge of the Indian Constitution. We believe in fostering a society where justice, liberty, and equality are upheld for all.</p>
        </div>
        <div class="guidance-section">
            <h2>Guidelines for Citizens</h2>
            <ul>
                <li>Understand your Fundamental Rights and Duties.</li>
                <li>Actively participate in democratic processes like voting.</li>
                <li>Encourage the values of Justice, Liberty, and Equality in your community.</li>
                <li>Respect and uphold the sovereignty and integrity of the nation.</li>
                <li>Learn about and support the Directive Principles of State Policy.</li>
            </ul>
        </div>
        <div class="social-media">
            <h2>Connect With Us on Social Media</h2>
            <a href="https://www.instagram.com/yourprofile" target="_blank">
            <img src="data:image/jpeg;base64,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" alt="Instagram">
                Instagram
            </a>
            <a href="https://www.linkedin.com/in/yallavula-bindu-bhargavi-085512249/" target="_blank">
                <img src="data:image/png;base64,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" alt="LinkedIn">
                LinkedIn
            </a>
            <a href="https://www.twitter.com/yourprofile" target="_blank">
            <img src="data:image/jpeg;base64,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" alt="Twitter">
                Twitter
            </a>
            <a href="https://www.facebook.com/yourprofile" target="_blank">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAAZlBMVEU7V53///82U5vw8vdSaabO0+Q5VZwrTZnd4ezs7/VRZ6XAx9xGYKGCkLqlr835+fwgRpZacKqWocVvgbNkeK5AW58RPZKNmsHj5/DIzeC4wNewudQbQpR6i7hedKzV2ucAMI2dqcuy8G1tAAADWklEQVR4nO3d2ZKiMACF4XTAhFVQRBYXxvd/ydHpm6lqmQBjyAl1/nuq+AohkoCKQiuxiZQuRHd2vRef6pyKXLveiU+lc3GQrnfiU8mD6z1gjDHGGGOMMcbYpJSU+l3ylfJpRuzpkNm9uuXN8bumyfP8drtVp9MhzGqly9KPuRddynu+77uhjYPi67viWRDEbRsNw65L+8v+GLreT3OqlNW+i+IvYzf0QyOv2XHXFmbJsxwcc60v8TQJPEZf91Mh6Bh1vU0+KOAYJbN0FgUYI2XVzrTAYqRoJlyL/cBI8QhmW0AxSj7mnfrIGH1cYsHElDMvycgYWS+zIGLUr2iZBRFzfSy0AGL0YeGHDBKzW2rBw+h8wWgJipGiW2yBw+h8/lcyWIzsl1vQMPq0dIwBxJTLvpRBYtTsm0tgjJ5/dwmMaf7HAoZRM2aWih9hYWQybcQs4miX9vsf3V0D/k7ep5wywW5fZbp8E9KBEbKacGEemqzUULv9PpmbLWmIdQDGUvJotmS+PJpcX0yW6OCLRdXG8b+Rvixdysx0kxndvThfXsnEdGW++LOmrIyYoy9nzOvIGO4yA4/espChAdNWPmEMEzPRyZvz34wZPHr/xYjZhcQ4iRjUiEGNGNSIQY0Y1IhBjRjUiEHNR4waSchkAmZsa0fTg+9fgnlWZiZMVo5t+2p9jqr3bTTWvy1fxeiGr4Zq9Q/h/OfIpxavP0VoDzOsv0RgD9MlG8L09YYwl/WvZvYwj/WXCKxhimZDmNjBSpQ1jIuVKGsYB8OMPUyXbehqljq4PbCG6cvtYIrHhjBBsyFMfHPwjIAtTOviGQFbmGH9GwB7mJ2LJ9FsYVIH5781TH/dDsbJMGML42SYsYVxMM9kD9M6mYa2hImEi7lmS5jBxSljC5O6uDLbwlycYFTWB/FYhjdOitENYwfzTH/KwmSkk2l95pS83zYMazeW12+uvU8bV84SPbatI8t4Pq5pjkYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRsyMlFjxTxIsY+RBrPhzTpYxOhfd+WM7a8oy5pyKYr2fp7SLUbr4DYruSaKA7bBPAAAAAElFTkSuQmCC" alt="Facebook">
                Facebook
            </a>
            <a href="https://www.youtube.com/yourchannel" target="_blank">
            <img src="data:image/jpeg;base64,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" alt="YouTube">
                YouTube
            </a>
            <a href="bindubharghaviyallavula@gmail.com">
            <img src="data:image/png;base64,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" alt="Email">
                Email Us
            </a>
            <a href="tel:+91788974674">
            <img src="data:image/jpeg;base64,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" alt="Phone">
                Call Us
            </a>
        </div>
        <div class="thank-you">
            <p>Thank you for exploring the Guidance Page. Together, let's build a constitutionally aware nation!</p>
        </div>
    </div>
</body>
</html>













guidence page