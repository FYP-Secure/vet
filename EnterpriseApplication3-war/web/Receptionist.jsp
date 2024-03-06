<%-- 
    Document   : Receptionist
    Created on : Mar 7, 2024, 3:25:32 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="parts/meta.jsp" %> 
        <title>${username} Receptionist</title>
        <%@ include file="parts/header.jsp" %>  
    </head>
    <body>
        <div class="col mb-5">
            <h2>Welcome ${username} Receptionist</h2>   
        </div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="appointment-tab" data-bs-toggle="tab" data-bs-target="#appointment" type="button" role="tab" aria-controls="appointment" >Appointment</button>
            </li>
             <li class="nav-item" role="presentation">
                <button class="nav-link" id="my-customer-tab" data-bs-toggle="tab" data-bs-target="#customer" type="button" role="tab" aria-controls="customer" aria-selected="false">Customer</button>
            </li>
             <li class="nav-item" role="presentation">
                <button class="nav-link" id="my-pet-tab" data-bs-toggle="tab" data-bs-target="#pet" type="button" role="tab" aria-controls="pet" aria-selected="false">Pet</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="my-profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">My Profile</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="appointment" role="tabpanel" aria-labelledby="appointment-tab">
                <%@ include file="Vet_Page/home.jsp" %> 
            </div>
            <div class="tab-pane fade" id="customer" role="tabpanel" aria-labelledby="customer-tab">
                <%@ include file="Receptionist_Page/customer.jsp" %> 
            </div>
            <div class="tab-pane fade" id="pet" role="tabpanel" aria-labelledby="pet-tab">
                <%@ include file="Receptionist_Page/pet.jsp" %> 
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="my-profile-tab">
                <%@ include file="profile_page/myprofile.jsp" %> 
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#appointment-tab').click();
            });
        </script>
        <%@ include file="parts/footer.jsp" %>

    </body>
</html>
