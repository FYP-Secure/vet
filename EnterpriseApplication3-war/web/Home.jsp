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

        <div class="container">
            <div class="my-3">
                <div class="row justify-content-between" >
                    <div class="col">
                        <h2>Welcome ${username} Staff</h2>   
                    </div>
                    <div class="col-2 text-end">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#actionModel" class="btn btn-success add-button" data-action="Add Item">Add Item</button> 

                    </div>

                </div>
                <!-- Seach Box -->
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1"><i class="fas fa-search"></i></span>
                    <input type="search" id="searchInput" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
                </div>

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
                            <td style="width: 350px"> 
                                <button type="button" data-bs-toggle="modal" data-bs-target="#actionModel" class="btn btn-primary edit-button" data-action="Edit Item">Edit Item</button>
                                <button type="button" data-bs-toggle="modal" data-bs-target="#approveModel" class="btn btn-success approve-button" >Approve</button> 
                                <button class="btn delete-btn" type="button" data-bs-toggle="modal" data-bs-target="#deleteModel" ><i class="fas fa-trash-alt"></i> </button>
                            </td>
                        </tr>


                    </tbody>
                </table>
            </div>

        </div>

        <!-- Modal -->
        <div class="modal fade" id="actionModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="action"  method="POST" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="exampleFormControlInput1" name="" placeholder="name@example.com">
                            </div>
                            <div class="mb-3">
                                <label for="diagnosis" class="form-label">Diagnosis</label>
                                <textarea  type="text" class="form-control" id="diagnosis" name="diagnosis" placeholder="Key in Diagnosis that are related" rows="3"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="diagnosis" class="form-label">Prognosis</label>
                                <textarea  type="text" class="form-control" id="prognosis" name="prognosis" placeholder="Key in Prognosis that are related" rows="3"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="time" class="form-label">Time</label>
                                <input type="datetime-local" class="form-control" id="time" name="time" placeholder="time">
                            </div>
                            <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <!-- Modal Delete -->
        <div class="modal fade" id="deleteModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="action"  method="POST" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <div class="row">
                                    <p id="deleteTitle">Do you want to Delete this record?</p>
                                </div>
                                <input type="text" class="form-control" id="deletId" name="id"  hidden >
                                <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="delete">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <!-- Modal Approve -->
        <div class="modal fade" id="approveModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="action"  method="POST" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Approve</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <div class="row">
                                    <p id="deleteTitle">Do you want to Approve this record?</p>
                                </div>
                                <input type="text" class="form-control" id="deletId" name="id"  hidden >
                                <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="approve">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Approve</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <script>
            $(document).ready(function () {
                // Trigger action on button click
                $('.edit-button, .add-button').click(function () {
                    // Get the action attribute from the button that was clicked
                    var action = $(this).attr('data-action');
                    console.log('action', action)
                    // Use the action to change the modal's title
                    $('#exampleModalLabel').text(action);
                    $('#actionModel #actionTypeInput').val(action === 'Edit Item' ? "edit" : "add");
                    // Finally, show the modal
                    $('#actionModel').modal('show');
                });

                $('.delete-btn').click(function () {
                    //Replace with real id
                    let id = '123123';
                    $('#deletId').text(id);
                    // Finally, show the modal
                    $('#deleteModel').modal('show');
                });
                $('.approve-btn').click(function () {
                    //Replace with real id
                    let id = '123123';
                    $('#deletId').text(id);
                    // Finally, show the modal
                    $('#approveModel').modal('show');
                });
                $('#searchInput').on('input', function () {
                    const searchQuery = $(this).val();
                    console.log(searchQuery);
                });
            });
        </script>
        <%@ include file="parts/footer.jsp" %>

    </body>
</html>
