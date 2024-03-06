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
        <div class="my-3">
            <h2>Welcome ${username} Staff</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>nde</td>
                        <td>
                            <button type="button" data-bs-toggle="modal" data-bs-target="#actionModel" class="btn btn-primary edit-button" data-action="Edit Item">Edit Item</button>
                            <button type="button" data-bs-toggle="modal" data-bs-target="#actionModel" class="btn btn-success add-button" data-action="Add Item">Add Item</button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="actionModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                // Trigger action on button click
                $('.edit-button, .add-button').click(function () {
                    // Get the action attribute from the button that was clicked
                    var action = $(this).attr('data-action');
                    console.log('action',action)
                    // Use the action to change the modal's title
                    $('#exampleModalLabel').text(action);

                    // Finally, show the modal
                    $('#actionModel').modal('show');
                });
            });
        </script>
        <%@ include file="parts/footer.jsp" %>

    </body>
</html>
