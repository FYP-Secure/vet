<%-- 
    Document   : myprofile
    Created on : Mar 7, 2024, 3:28:58 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../parts/meta.jsp" %> 
        <title>Profile</title>
        <%@ include file="../parts/header.jsp" %>  
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h2 class="text-center">Profile</h2>
                    <form>
                        <div class="form-group">
                          <label for="username">Name</label>
                          <input type="username" class="form-control" id="username" aria-describedby="username" placeholder="Name">
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" class="form-control" id="password" placeholder="Password">
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Edit</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
