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
        <li class="w3-hide-small"><a href="../material.jsp" class="w3-padding-large w3-hover-white">Learning Material</a></li>
        <li class="w3-hide-small"><a href="pages/individual_session.jsp" class="w3-padding-large w3-hover-white">Start Pen-testing</a></li>
        <li class="w3-hide-small"><a href="pages/token_submit.jsp" class="w3-padding-large w3-hover-white">Submit your token</a></li>
        <li class="w3-hide-small w3-right"><a href="../index.jsp" class="w3-padding-large w3-hover-white">Log out</a></li>
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
        <ul class="w3-navbar w3-left-align w3-large w3-black">
            <li><a class="w3-padding-large" href="../material.jsp">Learning Material</a></li>
            <li><a class="w3-padding-large" href="pages/individual_session.jsp">Start Pen-testing</a></li>
            <li><a class="w3-padding-large" href="pages/token_submit.jsp">Submit your token</a></li>
            <li><a class="w3-padding-large w3-right" href="../index.jsp">Log out</a></li>
        </ul>
    </div>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-64">
    <h5 class="w3-margin w3-jumbo">This is the demo for material studying</h5>
    <div class="w3-content w3-display-container">
        <a class="w3-btn-floating w3-hover-dark-grey w3-display-left" onclick="plusDivs(-1)">&#10094;</a>
        <a class="w3-btn-floating w3-hover-dark-grey w3-display-right" onclick="plusDivs(1)">&#10095;</a>

        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-0.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 1
            </div>
        </div>

        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-2.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 2
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-3.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 3
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-4.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 4
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-5.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 5
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-6.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 6
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-7.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 7
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-8.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 8
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-9.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 9
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-10.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 10
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-11.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 11
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-12.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 12
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-13.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 13
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-14.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 14
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-15.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 15
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-16.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 16
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-17.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 17
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-18.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 18
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-19.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 19
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-20.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 20
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-21.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 21
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-22.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 22
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-23.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 23
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-24.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 24
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-25.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 25
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-26.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 26
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-27.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 27
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-28.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 28
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-29.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 29
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-30.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 30
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-31.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 31
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-32.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 32
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-33.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 33
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-34.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 34
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-35.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 35
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-36.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 36
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-37.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 37
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-38.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 38
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-39.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 39
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-40.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 40
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-41.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 41
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-42.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 42
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-43.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 43
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-44.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 44
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-45.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 45
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-46.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 46
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-47.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 47
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-48.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 48
            </div>
        </div>
        <div class="w3-display-container DevSecTrain">
            <img src="img/p1b0cjg4e418q01l6b2ch6ulfbs4-49.jpg" style="width:80%">
            <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
                Page 49
            </div>
        </div>
    </div>
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
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("DevSecTrain");
        if (n > x.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = x.length
        }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex - 1].style.display = "block";
    }
</script>
</body>
</html>

