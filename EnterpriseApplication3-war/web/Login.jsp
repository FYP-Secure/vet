<%-- 
    Document   : Login
    Created on : 5 Mar 2024, 10:54:40 pm
    Author     : hansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="parts/meta.jsp" %> 
        <title>Login</title>
        <%@ include file="parts/header.jsp" %>  

    </head>
    <body>
    <center>
        <h2>Login</h2>
        <form action="Login" method="POST">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label><br>
            <input type="text" id="password" name="password"><br><br>
            <button type="submit" class="btn btn-primary">Login Staff</button>
        </form> 
    </center>
    <%@ include file="parts/footer.jsp" %>
</body>
</html>
