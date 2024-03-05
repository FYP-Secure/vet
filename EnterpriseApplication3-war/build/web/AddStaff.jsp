<%-- 
    Document   : Staff
    Created on : 5 Mar 2024, 11:17:23 pm
    Author     : hansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
