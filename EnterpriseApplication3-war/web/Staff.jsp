<%-- 
    Document   : data
    Created on : Mar 6, 2024, 5:48:36 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="parts/meta.jsp" %> 
        <title>${username} Staff</title>
        <%@ include file="parts/header.jsp" %>  
    </head>
    <body>
        <div class="col mb-5">
            <h2>Welcome ${username} Staff</h2>   
        </div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="report-tab" data-bs-toggle="tab" data-bs-target="#report" type="button" role="tab" aria-controls="report" >Report</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="staff-tab" data-bs-toggle="tab" data-bs-target="#staff" type="button" role="tab" aria-controls="staff" aria-selected="false">Staff</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="vets-tab" data-bs-toggle="tab" data-bs-target="#vets" type="button" role="tab" aria-controls="vets" aria-selected="false">Vets</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="receptionist-tab" data-bs-toggle="tab" data-bs-target="#receptionist" type="button" role="tab" aria-controls="receptionist" aria-selected="false">Receptionist</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="report" role="tabpanel" aria-labelledby="report-tab">
                <%@ include file="Staff_Page/Report.jsp" %> 
            </div>
            <div class="tab-pane fade" id="staff" role="tabpanel" aria-labelledby="staff-tab">
                <%@ include file="Staff_Page/Staff.jsp" %> 
            </div>
            <div class="tab-pane fade" id="vets" role="tabpanel" aria-labelledby="vets-tab">
                <%@ include file="Staff_Page/Vets.jsp" %> 
            </div>
            <div class="tab-pane fade" id="receptionist" role="tabpanel" aria-labelledby="receptionist-tab">
                <%@ include file="Staff_Page/Receptionist.jsp" %> 

            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#report-tab').click();
            });
        </script>
        <%@ include file="parts/footer.jsp" %>

    </body>
</html>
