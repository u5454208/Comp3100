<!DOCTYPE html>
<html>
<title>Security Training as a Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
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
        <li><a href="home.jsp" class="w3-padding-large w3-white">Home</a></li>
        <li class="w3-hide-small"><a href="material.jsp" class="w3-padding-large w3-hover-white">Learning Material</a></li>
        <li class="w3-hide-small"><a href="pages/individual_session.jsp" class="w3-padding-large w3-hover-white">Start Pen-testing</a></li>
        <li class="w3-hide-small"><a href="pages/token_submit.jsp" class="w3-padding-large w3-hover-white">Submit your token</a></li>
        <li class="w3-hide-small w3-right"><a href="index.jsp" class="w3-padding-large w3-hover-white">Log out</a></li>
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
        <ul class="w3-navbar w3-left-align w3-large w3-black">
            <li><a class="w3-padding-large" href="material.jsp">Learning Material</a></li>
            <li><a class="w3-padding-large" href="pages/individual_session.jsp">Start Pen-testing</a></li>
            <li><a class="w3-padding-large" href="pages/token_submit.jsp">Submit your token</a></li>
            <li><a class="w3-padding-large w3-right" href="index.jsp">Log out</a></li>
        </ul>
    </div>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-128">
    <h1 class="w3-margin w3-jumbo">Security Training as a Service</h1>
    <button class="w3-btn w3-padding-16 w3-large w3-margin-top"
            onclick="window.location.href='material.jsp'">Start Learning</button>
    <button class="w3-btn w3-padding-16 w3-large w3-margin-top"
            onclick="window.location.href='VMControl.jsp'">Start Pen-testing</button>
</header>

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

