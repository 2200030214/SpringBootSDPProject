<!DOCTYPE html>
<html lang="en">

<head>
    <title>Legal Expert Navigation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <style>
        /* Reset and Basic Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('https://media.istockphoto.com/id/1296965095/photo/selective-focus-on-flag-indian-constitution-or-bharatiya-savidhana-preamble-old-scattered.jpg?s=612x612&w=0&k=20&c=tPCDkcPGUDE9VHwWj_1paZvN-SHHinLiyo_1BYISJ5Q=') no-repeat center top;
            background-size: cover;
            height: 250px; /* Reduce height to make image smaller */
            color: black;
        }

        nav {
            background-color: rgba(0, 0, 0, 0.7);
            position: fixed;
            width: calc(100% - 40px); /* Shift navbar a little to the right */
            top: 0;
            z-index: 10;
            display: flex;
            justify-content: space-between; /* Align logo and links to opposite ends */
            align-items: center;
            padding: 10px 20px; /* Add some padding for spacing */
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
            margin-left: 20px; /* Shift navbar slightly to the right */
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
            color: black;
        }

        .content {
            margin-top: 80px; /* Adjusted margin-top to move the content higher */
            text-align: center;
            padding: 50px 20px;
        }

        .content h1 {
            font-size: 48px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .content p {
            font-size: 18px;
            line-height: 1.6;
        }

        /* Responsive Design */
        @media (max-width: 660px) {
            ul li {
                margin: 0 10px;
            }

            ul li a {
                font-size: 14px;
            }

            .logo {
                font-size: 20px;
            }

            nav {
                flex-wrap: wrap;
                padding: 10px;
            }

            .content h1 {
                font-size: 36px;
            }
        }
    </style>
</head>

<body>
    <nav>
        <div class="logo">Legal Expert</div>
        <ul>
            <li><a href="insight.jsp">Insights</a></li>
            <li><a href="updates.jsp">Updates</a></li>
            <li><a href="guidance.jsp">Guidance</a></li>
            <li><a href="mainnavbar.jsp">Back</a></li>
        </ul>
    </nav>

    <div class="content">
        <h1>Welcome to Legal Expert</h1>
    </div>
</body>

</html>
