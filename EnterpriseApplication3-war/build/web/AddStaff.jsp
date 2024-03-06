<%-- 
    Document   : Staff
    Created on : 5 Mar 2024, 11:17:23 pm
    Author     : hansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <%@ include file="parts/meta.jsp" %> 
    <title>Staff</title>
     <%@ include file="parts/header.jsp" %> 
    </head>
    <body>
        <center>
            <h2>Staff</h2>
            
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <button type="button" class="btn btn-primary d-inline-block">Add Staff</button>
                        <button type="button" class="btn btn-secondary d-inline-block">Delete Staff</button>
                        <button type="button" class="btn btn-success d-inline-block">Button 3</button>
                        <button type="button" class="btn btn-danger d-inline-block">Button 4</button>
                    </div>
                </div>
                <br />
                <form action="AddStaff" method="POST">
                    <label for="staffName">Staff Name:</label><br>
                    <input type="text" id="staffName" name="staffName"><br>
                    <br>
                    <input type="submit" value="Add">
                  </form> 
                
                <h1>${staffName} added successfully</h1>
            </div>
        </center>
       <%@ include file="parts/footer.jsp" %>
    </body>
</html>
