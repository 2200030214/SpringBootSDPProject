<!DOCTYPE html>
<html lang="en">
<head>
    <title>Legal Expert Navigation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-size: cover;
            background: url();
            color: black;
        }
        h1 {
            color: #333;
        }

        /* Navbar Styling */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            color: white;
            height: 60px; /* Set height for navbar */
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 18px;
        }

        nav ul li a:hover {
            color: #f39c12;
        }

        /* Articles Styling */
        .articles {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px; /* Add gap between articles */
            margin: 30px;
        }

        /* Flip Container */
        .flip-container {
            perspective: 1000px; /* Create a 3D effect */
            margin-bottom: 30px; /* Add gap below each article */
        }

        .flipper {
            width: 100%;
            height: 400px; /* Adjust height of the container */
            transform-style: preserve-3d;
            transition: transform 0.6s;
        }

        .flip-container:hover .flipper {
            transform: rotateY(180deg); /* Flip on hover */
        }

        .front, .back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden; /* Hide back side of the flipped element */
        }

        .front img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .back {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            text-align: center;
            transform: rotateY(180deg); /* Initially hide the back side */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .articles {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .articles {
                grid-template-columns: 1fr;
            }
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
        </ul>
    </nav>

    <div class="content">
        <h1>Legal Insights</h1>
        <p>Stay updated with the latest articles, news, and insights on the legal landscape.</p>
        <div class="articles">
            <!-- First Article -->
            <div class="flip-container">
                <div class="flipper">
                    <!-- Front (Image) -->
                    <div class="front">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfWqjKNl_-Jl8n0lskgsGjmdhr9ECU2FKWYPtlCMZ94wReN5WWDVnVlS9uDtVvp7CPSVc&usqp=CAU" alt="Article Image 1">
                    </div>
                    <!-- Back (Article Information) -->
                    <div class="back">
                        <div>
                            <h3>Understanding the Indian Constitution</h3>
                            <p>This article delves into the key features and principles of the Indian Constitution, its significance, and how it shapes the governance of India.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Second Article -->
            <div class="flip-container">
                <div class="flipper">
                    <!-- Front (Image) -->
                    <div class="front">
                        <img src="https://static.india.com/wp-content/uploads/2022/11/Constitution-Day-2022.png?impolicy=Medium_Widthonly&w=700" alt="Article Image 2">
                    </div>
                    <!-- Back (Article Information) -->
                    <div class="back">
                        <div>
                            <h3>Recent Legal Reforms in India</h3>
                            <p>This article discusses the recent amendments to the Indian Penal Code and other legal reforms aimed at improving the justice system in India.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Third Article -->
            <div class="flip-container">
                <div class="flipper">
                    <!-- Front (Image) -->
                    <div class="front">
                        <img src="https://media.istockphoto.com/id/908134718/photo/indian-constitution-and-justice-concept.jpg?s=612x612&w=0&k=20&c=YiEtILK1Um_zP9B873AjKG2qVPSTu-0J_0Ws_WPpvX0=" alt="Article Image 3">
                    </div>
                    <!-- Back (Article Information) -->
                    <div class="back">
                        <div>
                            <h3>Legal Insights on Cybersecurity Laws</h3>
                            <p>Understanding the evolving cybersecurity laws and their impact on businesses and individuals in the digital age.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Fourth Article -->
            <div class="flip-container">
                <div class="flipper">
                    <!-- Front (Image) -->
                    <div class="front">
                        <img src="https://www.shutterstock.com/image-photo/create-dynamic-169-horizontal-mural-260nw-2523152323.jpg" alt="Article Image 4">
                    </div>
                    <!-- Back (Article Information) -->
                    <div class="back">
                        <div>
                            <h3>Intellectual Property Rights</h3>
                            <p>Exploring the significance of intellectual property rights in today's business landscape and their impact on innovation and creativity.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Fifth Article -->
            <div class="flip-container">
                <div class="flipper">
                    <!-- Front (Image) -->
                    <div class="front">
                        <img src="https://www.shutterstock.com/image-vector/happy-independence-day-india-social-260nw-2330889811.jpg" alt="Article Image 5">
                    </div>
                    <!-- Back (Article Information) -->
                    <div class="back">
                        <div>
                            <h3>Environmental Laws in India</h3>
                            <p>An overview of environmental laws and their enforcement in India, including the role of government and judiciary in protecting the environment.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sixth Article -->
            <div class="flip-container">
                <div class="flipper">
                    <!-- Front (Image) -->
                    <div class="front">
                        <img src="https://www.shutterstock.com/image-vector/new-indian-parliament-building-vector-260nw-2361938663.jpg" alt="Article Image 6">
                    </div>
                    <!-- Back (Article Information) -->
                    <div class="back">
                        <div>
                            <h3>Arbitration and Dispute Resolution</h3>
                            <p>A guide to arbitration and alternative dispute resolution mechanisms in India, including their advantages over traditional litigation.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
