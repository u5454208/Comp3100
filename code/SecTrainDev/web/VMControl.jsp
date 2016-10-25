<!DOCTYPE html>
<html>
<title>Security Training as a Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js">
</script>
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Lato", sans-serif
    }

    .w3-navbar, h1, button {
        font-family: "Montserrat", sans-serif
    }

    .fa-anchor, .fa-coffee {
        font-size: 200px
    }
</style>

<body>

<script language="JavaScript">
    function Function1() {
        var xmlhttp;
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        var name = document.getElementById("1").value;
        name = encodeURI(encodeURI(name));

        xmlhttp.open("POST", "StartApp", true);
        xmlhttp.setRequestHeader("Content-Type", "text/html;charset=UTF-8");
        xmlhttp.send("name=" + name);
        xmlhttp.onreadystatechange = function () {

            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                alert("running!");
                function stop() {
                    $(documemt).ready(function () {
                                $('#2').trigger("click");
                            }
                    );
                    alert("Timeout!");
                }

                setTimeout("stop()", 600000);
            }
        }
    }
    function Function2() {
        var xmlhttp;
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        var name = document.getElementById("2").value;
        name = encodeURI(encodeURI(name));

        xmlhttp.open("POST", "StartApp", true);
        xmlhttp.setRequestHeader("Content-Type", "text/html;charset=UTF-8");
        xmlhttp.send("name=" + name);
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                alert("Stop app successful!");
            }
        }
    }
</script>
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
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
        <ul class="w3-navbar w3-left-align w3-large w3-black">
            <li><a class="w3-padding-large" href="pages/main_features.jsp">Main Features</a></li>
            <li><a class="w3-padding-large" href="pages/benefit.jsp">Benefit for your code</a></li>
            <li><a class="w3-padding-large" href="pages/about_us.jsp">About us</a></li>
        </ul>
    </div>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-128">
    <h1 class="w3-margin w3-jumbo">Security Training as a Service</h1>

    <form class="w3-btn w3-padding-16 w3-large w3-margin-top" name="form" action="">
        <input id=1 type="button" name="action" onclick="Function1()" value="start"></input>
    </form>
    <form class="w3-btn w3-padding-16 w3-large w3-margin-top" name="form" action="">
        <input id=2 type="button" name="action" onclick="Function2()" value="stop"></input>
    </form>
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
