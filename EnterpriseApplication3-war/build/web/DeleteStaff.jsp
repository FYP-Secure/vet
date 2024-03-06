<%-- 
    Document   : DeleteStaff
    Created on : 5 Mar 2024, 11:55:18 pm
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
                        <button type="button" class="btn btn-primary d-inline-block" onclick="redirectToAddStaff()">Add Staff</button>
                        <button type="button" class="btn btn-secondary d-inline-block" onclick="redirectToDeleteStaff()">Delete Staff</button>
                        <button type="button" class="btn btn-success d-inline-block">Button 3</button>
                        <button type="button" class="btn btn-danger d-inline-block">Button 4</button>
                    </div>
                </div>
                <br />
                <form action="DeleteStaff" method="POST">
                    <label for="staffName">Staff Name:</label><br>
                    <input type="text" id="staffName" name="staffName"><br>
                    <br>
                    <input type="submit" value="Add">
                  </form> 
                 
               <h1>${staffName} deleted successfully</h1>
            </div>
        </center>
        <script>
            function redirectToAddStaff() {
                // Specify the URL to redirect to
                var redirectUrl = "AddStaff.jsp";
                
                alert("HI");
                
                // Redirect to the specified URL
                window.location.href = redirectUrl;
            }
            
             function redirectToDeleteStaff() {
                // Specify the URL to redirect to
                var redirectUrl = "DeleteStaff.jsp";
                // Redirect to the specified URL
                window.location.href = redirectUrl;
            }
        </script>
      <%@ include file="parts/footer.jsp" %>
    </body>
</html>
