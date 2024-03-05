<%-- 
    Document   : Login
    Created on : 5 Mar 2024, 10:54:40 pm
    Author     : hansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
