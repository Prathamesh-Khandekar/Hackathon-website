<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NMIET's Hackathon</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img class="nmiet-logo" src="./img/nmietLogo.jpg" alt="nmiet-logo" width="150" height="100">
                </a>
                <h1>
                    <a class="navbar-brand" href="#" style="font-size:80%; color: white; ">NMIET</a>
                </h1>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: 5%;">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="nav-bar">
                        <li class="nav-item" style="color: aliceblue;">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href=" #">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Login/Register</a>
                        </li>

                    </ul>
                    <div class="adminLogo">
                        <a href="adminRegister.jsp"><img src="./img/admin.png" alt=""></a>
                        <a href="adminRegister.jsp"><p style="color:white; padding:0px 5px;">ADMIN</p></a>
                    </div>
                    <div class="get-started-btn">
                        <a href="userLogin.jsp"><button class="btn btn-primary" type="button">User Login</button></a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./img/hackBackground.jpeg" class="d-block w-100" alt="...">
                <div class="container">
                    <div class="carousel-caption d-none d-md-block">
                        <div class="row justify-content-center">
                            <div class="description">
                                <p class="Myname">A retreat to your Hackathon skills by NMIET</p>
                                <p>Organised by Department of Computer Engineering</p>
                                <p class="date">13th June to 15th June,2023</p>
                                <button type="button" class="btn btn-success" id="register">Register</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <section id="about" class="about">
            <div class="container">

                <div class="row">

                    <div class="main" id="About">
                        <h2><a href="">About Hackathon</a></h2>
                        <p>
                            An innovative event which provide students with a platform to solve some of the pressing
                            problems we face
                            in our daily lives, and thus inculcate a culture of product innovation and a mindset of
                            problem-solving.
                            Hackamotive serves as a blithesome, explorative platform nurturing originative ideas
                            affirming innovation.
                            An opportunity for application pitching, idea transformation, realization with competent
                            teams for
                            building, delivering prototypes, consequently presented and evaluated by the mentors.
                            Hackathon winners
                            will be credited with astonishing rewards along with a chance to intern in latest tools and
                            technologies
                            trending automotive companies.
                        </p>

                    </div>
                </div>

            </div>
        </section>

        <section id="nmietDesc">
            <div class="container">
                <div class="rowNmiet">
                    <div class="container">

                        <img class="compPic" src="./img/comp.png" alt="">
                    </div>
                    <div class="container">
                        <div class="desc">
                            <h2> <a href="">About NMIET</a></h2>
                            <p>
                                Nutan Maharashtra Vidya Prasarak Mandal decided to start a four year degree engineering
                                college from academic year 2008-2009. The new institute is named 'Nutan Maharashtra Institute of
                                Engineering & Technology' (NMIET). NMIET stands committed to provide quality technical education to its
                                students. NMIET is approved by All India Council for Technical Education (AICTE), New Delhi and Director of Technical Education (DTE),
                                Government of Maharashtra. It is affiliated to Pune University.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
    </div>

    </section>

    <section id="features" class="features">
        <div class="container">
            <div class="section-title">
                <h2><a href="">Features</a></h2>
            </div>

            <div class="row">
                <div class=" col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/ingenious.png" style="width: 100px;">
                        </div>

                        <h4><a href="">Ingenious</a></h4>
                        <p>Harnessing creativity and expertise of students, academicians and visionaries
                        </p>
                    </div>
                </div>
                <div class=" col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/engaging.png" style="width: 100px;">
                        </div>

                        <h4><a href="">Engaging</a></h4>
                        <p>Sparking institute-level hackathons, fuelling imagination and creativity
                        </p>
                    </div>
                </div>
                <div class=" col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/futuristic.png" style="width: 100px;">
                        </div>

                        <h4><a href="">Futuristic</a></h4>
                        <p>Building funnel for Start-up India campaign for India's bright future
                        </p>
                    </div>
                </div>
                <div class=" col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/colloborating.png" style="width: 100px;">
                        </div>

                        <h4><a href="">Colloborating</a></h4>
                        <p>Crowdsourcing intelligence for improving governance and quality of life
                        </p>
                    </div>
                </div>
                <div class=" col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/empowring.png" style="width: 100px;">
                        </div>

                        <h4><a href="">Empowering</a></h4>
                        <p>Enabling possibilities and enhancing opportunities for citizens to deliver innovative solutions to daunting problems
                        </p>
                    </div>
                </div>
                
            </div>
        </div>
    </section>

<section id="events">
      <div class="container">
          <div class="section-title">
               <h2><a href="">Workshops</a></h2>
          </div>
          <div class="row">

<%
                try {
                    // Connect to the database
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/hackathon", "root", "Pratham@9191");

                    // Prepare the query to select all records
                    Statement statement = connection.createStatement();
                    String query = "SELECT * FROM workshops";
                    ResultSet result = statement.executeQuery(query);

                    // Iterate through the results and display each row
                    while (result.next()) {
                        %>

                <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box" id="workshop" style="width:500px; border: 1px solid black">           
                          <h4><%=  result.getString("workshop_title") %></h4>
                          <p><%=  result.getString("description") %></p>
                          <p><%=  result.getString("dates") %></p>
                          <a href="#" class="btn btn-primary" style="margin-top:20px">Join</a>
                    </div>
                    </div>

                        <%
                    }

                    // Close resources
                    result.close();
                    statement.close();
                    connection.close();
                }catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
  %>

                    </div>
</section>
    <section id="prizes">
        <div class="container">
            <div class="section-title">
                <h2><a href="">Prizes</a></h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/gold.png" style="width: 200px;">
                        </div>

                        <h4><a href="">1st Prize</a></h4>
                        <h5>Rs 25000</h5>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/silver.jpg" style="width: 200px;">
                        </div>

                        <h4><a href="">2nd Prize</a></h4>
                        <h5>Rs 15000</h5>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="./img/bronze3.png" style="width: 200px;">
                        </div>

                        <h4><a href="">3rd Prize</a></h4>
                        <h5>Rs 10000</h5>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="faq">
        <div class="container">
            <h2><a href="">FAQ</a></h2>
            <ol>
            <div class="faq-item">
                <li><h4>What is the registration fee?</h4></li>
                <p>->The hackathon is free to participate.</p>
            </div>
            <div class="faq-item">
                <li><h4>Can I participate alone?</h4></li>
                <p>->No, two members are mandatory.</p>
            </div>
            <div class="faq-item">
                <li><h4>Are there any prerequisites?</h4></li>
                <p>->Participants should have basic programming knowledge.</p>
            </div>
        </ol>
        </div>
    </section>

   
    <footer>
        <div class="container">
            <p>&copy; NMIET Hackathon 2024 . All rights reserved.</p>
        </div>
    </footer>



	






</body>

</html>