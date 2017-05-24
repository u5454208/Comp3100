<%--
  Created by IntelliJ IDEA.
  User: lrz0927
  Date: 14/5/17
  Time: 12:53 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<title>Security Training as a Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
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

<body onload="logout()">

<!-- Navbar -->
<div class="w3-top">
    <ul class="w3-navbar w3-indigo w3-card-2 w3-left-align w3-large">
        <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
            <a class="w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()"
               title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        </li>
    </ul>

</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-128">
    <h1 class="w3-margin w3-jumbo">Logging out</h1>

</header>
<script language="JavaScript">
    function logout() {
        var xmlhttp;
        var ID = getCookie('ID');
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        if (ID == "") {
            alert("Logout Successful!");
            window.open(window.location.href + "/../index.jsp");
            window.close();
        }
        else {
            //alert(ID);
            var d = new Date();
            d.setTime(Date.now());
            var name = "stop";
            name = encodeURI(encodeURI(name));
            xmlhttp.open("POST", "StopApp", true);
            xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xmlhttp.send("name=" + ID);
            // alert(ID);
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    alert("Stop app successful!");
                    deleteCookie('ID');
                    deleteCookie('publicDNS');
                    alert("Logout Successful!");
                    window.open(window.location.href + "/../index.jsp");
                    window.close();
                } else {
                    deleteCookie('ID');
                    deleteCookie('publicDNS');
                    alert("Logout Successful!");
                    window.open(window.location.href + "/../index.jsp");
                    window.close();
                }
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
    function deleteCookie(cname) {
        var d = new Date();
        d.setTime(Date.now()-1000);
        var expires = "expires="+d.toUTCString();
        document.cookie = cname + "=;" + expires + ";path=/";
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
