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
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h2 class="text-center">Login</h2>
                    <form action="Login" method="POST">
                        <div class="form-group">
                          <label for="username">Username</label>
                          <input type="username" class="form-control" id="username" aria-describedby="username" placeholder="Enter username">
                          <small id="username" class="form-text text-muted">We'll never share your username with anyone else.</small>
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" class="form-control" id="password" placeholder="Password">
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
