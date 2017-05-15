<%--
  Created by IntelliJ IDEA.
  User: lrz0927
  Date: 19/3/17
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<title>Individual Session</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/w3.css">
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

    .fa-anchor, .fa-coffee {
        font-size: 200px
    }
</style>
<body onload = "generating()">

<!-- Navbar -->
<div class="w3-top">
    <ul class="w3-navbar w3-indigo w3-card-2 w3-left-align w3-large">
        <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
            <a class="w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()"
               title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        </li>
        <li><a href="../index.jsp" class="w3-padding-large w3-white">Home</a></li>
        <li class="w3-hide-small"><a href="../material.jsp" class="w3-padding-large w3-hover-white">Learning Material</a></li>
        <li class="w3-hide-small"><a href="individual_session.jsp" class="w3-padding-large w3-hover-white">Start Pen-testing</a></li>
        <li class="w3-hide-small"><a href="token_submit.jsp" class="w3-padding-large w3-hover-white">Submit your token</a></li>
        <li class="w3-hide-small w3-right"><a href="../index.jsp" class="w3-padding-large w3-hover-white">Log out</a></li>
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
        <ul class="w3-navbar w3-left-align w3-large w3-black">
            <li><a class="w3-padding-large" href="../material.jsp">Learning Material</a></li>
            <li><a class="w3-padding-large" href="individual_session.jsp">Start Pen-testing</a></li>
            <li><a class="w3-padding-large" href="token_submit.jsp">Submit your token</a></li>
            <li><a class="w3-padding-large w3-right" href="logout.jsp">Log out</a></li>
        </ul>
    </div>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-64">
    <h1 class="w3-margin w3-jumbo">Personal report</h1>
</header>
<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
    <div class="w3-content">
        <div class="w3-twothird">
            <h1>About us</h1>
            <h5 class="w3-padding-32" id="user"></h5>
            <h5 class="w3-padding-32" id="grade"></h5>
            <h5 class="w3-padding-32" id="challenges"></h5>
            
        </div>

        <div class="w3-third w3-center">
            <i class="fa fa-anchor w3-padding-64 w3-text-blue"></i>
        </div>
    </div>
</div>
<script language="JavaScript">
    function Generating() {
		var username = getCookie('User');
		document.getElementById("user").innerHTML="Username : " + username;
		var xmlhttp;
        	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        	else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        	
        xmlhttp.open("POST", "../MysqlCon", true);
        xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xmlhttp.send("method=query&username=" + username);
        xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                     document.getElementById("grade").innerHTML="Grade : " + xmlhttp.getResponseHeader('grade');
						document.getElementById("challenges").innerHTML="The challenges finished : " + xmlhttp.getResponseHeader('challenges');
            }      
        }
    }
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

</script>
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
