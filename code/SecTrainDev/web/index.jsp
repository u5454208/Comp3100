<!DOCTYPE html>
<html>
<title>Security Training as a Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Lato", sans-serif
    }

    .w3-navbar, h1, button {
        font-family: "Montserrat", sans-serif
    }

    .fa-anchor {
        font-size: 200px
    }
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
    <ul class="w3-navbar w3-indigo w3-card-2 w3-left-align w3-large">
        <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
            <a class="w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()"
               title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        </li>
        <li><a href="index.jsp" class="w3-padding-large w3-white">Home</a></li>
        <li class="w3-hide-small"><a href="pages/main_features.jsp" class="w3-padding-large w3-hover-white">Main Features</a></li>
        <li class="w3-hide-small"><a href="pages/benefit.jsp" class="w3-padding-large w3-hover-white">Benefit for your code</a></li>
        <li class="w3-hide-small"><a href="pages/about_us.jsp" class="w3-padding-large w3-hover-white">About us</a></li>
        <li class="w3-hide-small w3-right"><a href="pages/login.jsp" class="w3-padding-large w3-hover-white">Login</a></li>
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
        <ul class="w3-navbar w3-left-align w3-large w3-black">
            <li><a class="w3-padding-large" href="pages/main_features.jsp">Main Features</a></li>
            <li><a class="w3-padding-large" href="pages/benefit.jsp">Benefit for your code</a></li>
            <li><a class="w3-padding-large" href="pages/about_us.jsp">About us</a></li>
            <li><a class="w3-padding-large w3-right" href="pages/login.jsp">Login</a></li>
        </ul>
    </div>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-128">
    <h1 class="w3-margin w3-jumbo">Security Training as a Service</h1>
    <button class="w3-btn w3-padding-16 w3-large w3-margin-top"
            onclick="window.location.href='pages/login.jsp'">Get Started</button>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
    <div class="w3-content">
        <div class="w3-twothird">
            <h1>About</h1>
            <h5 class="w3-padding-32">There are a range of online tools, capture the flag challenges, and training
                programs designed to teach people how to perform penetration tests. What's missing is offensive security
                training geared specifically towards developers; by learning how to identify, exploit, and resolve
                security vulnerabilities, they will be much less likely to introduce them in the software they build.
                This project involves building a range of language/framework-focused training packages for software
                developers, to be delivered via a software-as-a-service model. Each training package will include slides
                and reference material, followed by a hands on challenge to identify and exploit the kinds of
                vulnerabilities referenced in the training. Exploits will be automatically verified and graded.
            </h5>
        </div>

        <div class="w3-third w3-center">
            <i class="fa fa-anchor w3-padding-64 w3-text-blue"></i>
        </div>
    </div>
</div>

<script>
    // Used to toggle the menu on small screens when clicking on the menu button
    function myFunction() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>

</body>
</html>

