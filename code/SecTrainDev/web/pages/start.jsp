<%--
  Created by IntelliJ IDEA.
  User: lrz0927
  Date: 13/10/16
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="servlet.StartApp" %>
<html>
<head>
    <title>Start the VM</title>
</head>
<body>
    <h1>Start the VM</h1>
    <button type="button" onclick="Function()">Start App</button>
    <script>
        function Start() {
            <% StartApp.StartApp(); %>
        }
    </script>
    <button type="button" onclick="">Stop App</button>
</body>
</html>
