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
<script language="JavaScript">
var ID=new Array();
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
        xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xmlhttp.send("name=" + name);
        alert("Please wait for some time.");
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                alert("running!");
                ID.push(xmlhttp.getResponseHeader('ID'));
                //alert(xmlhttp.getAllResponseHeaders());
                alert("waiting for tomcat");
                function open()
                {
                	    window.open('http://'+xmlhttp.getResponseHeader('publicDNS')+':8080/webbank');
                	}
                setTimeout(open, 60000); 
                function stop() {
                	$().ready(function () {
                                $('#2').trigger("click");
                            }
                    );
                    alert("Timeout!");
                }
                setTimeout(stop, 120000);
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
        xmlhttp.open("POST", "StopApp", true);
        xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xmlhttp.send("name=" + ID);
       // alert(ID);
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                alert("Stop app successful!");
                while(ID.length!=0)
                	{
                	   ID.pop();
                	}
            }
        }
    }
    function grade() {
        var name = document.getElementById("3").value;
        name = encodeURI(encodeURI(name));
        if(name=="D3Mo_t0K3N!")
        	{
        	    alert("You get 5 marks");
        	}
        else if(name=="Dem0_Tok3U2")
        	{
        	    alert("You get 10 marks");
        	}
        else if(name=="dEmO_TOkEn3")
        	{
        	    alert("You get 15 marks");
        	}
        else if(name=="DEM0_T0KeN4")
        	{
        	    alert("You get 20 marks");
        	}
        else if(name=="deM0_t0k3u5")
        	{
        	    alert("Congratulations! You get 30 marks");
        	}
        else
        	{
        	    alert("Incorrect!");
        	}
    }
</script>
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
        <li class="w3-hide-small"><a href="VMControl.jsp" class="w3-padding-large w3-hover-white">Start Pen-testing</a></li>
        <li class="w3-hide-small w3-right"><a href="index.jsp" class="w3-padding-large w3-hover-white">Log out</a></li>
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
        <ul class="w3-navbar w3-left-align w3-large w3-black">
            <li><a class="w3-padding-large" href="material.jsp.jsp">Learning Material</a></li>
            <li><a class="w3-padding-large" href="VMControl.jsp">Start Pen-testing</a></li>
            <li><a class="w3-padding-large w3-right" href="index.jsp">Log out</a></li>
        </ul>
    </div>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center w3-padding-128">
    <h1 class="w3-margin w3-jumbo">Security Training as a Service</h1>

    <form>
        <button class="w3-btn w3-padding-16 w3-large w3-margin-top" id="1"
                onclick="Function1()" value="start" type="button">Start App
        </button>
    </form>
    <form>
                     <p>Token: <input type="text" name="Token" id="3"/></p>
        <button class="w3-btn w3-padding-16 w3-large w3-margin-top"
                onclick="grade()" value="grade" type="button">grading
        </button>
    </form>
    <form>
        <button class="w3-btn w3-padding-16 w3-large w3-margin-top" id="2"
                onclick="Function2()" value="stop" type="button">Stop App
        </button>
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
