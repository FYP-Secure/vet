<%-- 
    Document   : Vet
    Created on : Mar 7, 2024, 2:24:47 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="parts/meta.jsp" %> 
        <title>${username} Vet</title>
        <%@ include file="parts/header.jsp" %>  
    </head>
    <body>
        <div class="col mb-5">
            <h2>Welcome ${username} Vet</h2>   
        </div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="appointment-tab" data-bs-toggle="tab" data-bs-target="#appointment" type="button" role="tab" aria-controls="appointment" >Appointment</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="my-profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">My Profile</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="appointment" role="tabpanel" aria-labelledby="appointment-tab">
                <%@ include file="Vet_Page/home.jsp" %> 
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="my-profile-tab">
                <%@ include file="profile_page/myprofile.jsp" %>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#appointment-tab').click();
                $('.edit-Appointment-button').on('click', function () {
                    $('#appointment #editAppointmentForm').find(':input').each(function () {
                        if (this.name) {
                            if (this.name !== 'diagnosis' && this.name !== 'prognosis') {
                                if (this.tagName === 'SELECT') {
                                    $(this).prop('disabled', true);
                                } else {
                                    $(this).attr('disabled', true);
                                }
                            }
                        }
                    });
                });
            });

        </script>
        <%@ include file="parts/footer.jsp" %>

    </body>
</html>
