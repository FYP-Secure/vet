<%-- 
    Document   : Receptionist
    Created on : Mar 7, 2024, 1:33:25 AM
    Author     : ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="my-3">
        <div class="row justify-content-between" >
            <div class="col">
                <h2>Receptionist List</h2>   
            </div>
            <div class="col-2 text-end">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addReceptionistModel" class="btn btn-success add-Receptionist-button" data-action="Add Receptionist">Add Receptionist</button> 

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
                    <th scope="col">Name</th>
                    <th scope="col">Status</th>

                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Mark</td>
                    <td>Approved Or Rejected OR Pending</td>
                    <td style="width: 400px"> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#editReceptionistModel" class="btn btn-primary edit-Receptionist-button" data-action="Edit Receptionist">Edit Receptionist</button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#approveReceptionistModel" class="btn btn-success approve-Receptionist-button" >Approve</button> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#approveReceptionistModel" class="btn btn-danger reject-Receptionist-button" >Reject</button> 
                        <button class="btn delete-Receptionist-button" type="button" data-bs-toggle="modal" data-bs-target="#deleteReceptionistModel" ><i class="fas fa-trash-alt"></i> </button>
                    </td>
                </tr>


            </tbody>
        </table>
    </div>

</div>
<!-- Add Receptionist Model -->
<div class="modal fade" id="addReceptionistModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="addReceptionistForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Receptionist-add-title">Add Receptionist</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>
                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="add">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </form>

    </div>
</div>

<!-- Edit Receptionist Model -->
<div class="modal fade" id="editReceptionistModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="editReceptionistForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Receptionist-add-title">Edit Receptionist</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>
                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="edit">
                    <input type="text" class="form-control" id="editReceptionistId" name="id"  hidden >


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </form>

    </div>
</div>

<!-- Delete Receptionist Model -->
<div class="modal fade" id="deleteReceptionistModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="deleteReceptionistForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Delete Receptionist</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="deleteReceptionistTitle">Do you want to delete this Receptionist?</p>
                        </div>
                        <input type="text" class="form-control" id="deleteReceptionistId" name="id"  hidden >
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

<!-- Modal Approve/Reject -->
<div class="modal fade" id="approveReceptionistModel" tabindex="-1" aria-labelledby="approveRejectModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="approveReceptionistForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="approveReceptionistTitle">Approve</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="approveReceptionistText">Do you want to Approve this record?</p>
                        </div>
                        <input type="text" class="form-control" id="approveReceptionistId" name="id"  hidden >
                        <input type="text" class="form-control" id="approveActionTypeInput" name="type" placeholder="Type" hidden value="approve">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="approveReceptionistBtn" class="btn btn-primary">Approve</button>
                </div>
            </div>
        </form>

    </div>
</div>
<script>
    $('#addReceptionistModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#addReceptionistForm').trigger('reset');
    });
    $('#editReceptionistModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#editReceptionistForm').trigger('reset');
    });
    $('#deleteReceptionistModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#deleteReceptionistForm').trigger('reset');
    });
    $('#approveReceptionistModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#approveReceptionistForm').trigger('reset');
    });
    $('.add-Receptionist-button').click(function () {
        var action = $(this).attr('data-action');
        console.log('action', action);
        // Use the action to change the modal's title
        $('#Receptionist-add-title').text(action);
        var input = $('<input>').attr({
            type: 'text',
            name: 'role',
            value: 'receptionist',
            hidden: true
        });

        // Append it to the container
        $('#addReceptionistForm').append(input);
    });
    $('.approve-Receptionist-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approveReceptionistId').val(id);

        $('#approveReceptionistTitle').text('Approve Receptionist');

        $('#approveReceptionistText').text('Do you want to Approve this Receptionist?');
        $('#approveReceptionistBtn').text('Approve');
        $('#approveActionTypeInput').val('approve');
        // Finally, show the modal
        $('#approveReceptionistModel').modal('show');
    });
    $('.reject-Receptionist-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approveReceptionistId').val(id);
        $('#approveReceptionistTitle').text('Reject Receptionist');

        $('#approveReceptionistText').text('Do you want to Reject this Receptionist?');
        $('#approveReceptionistBtn').text('Reject');

        $('#approveActionTypeInput').val('reject');
        // Finally, show the modal
        $('#approveReceptionistModel').modal('show');
    });

    $('.delete-Receptionist-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#deleteReceptionistId').val(id);
        $('#deleteReceptionistTitle').text('Do you want to delete this Receptionist?');
        // Finally, show the modal
        $('#deleteReceptionistModel').modal('show');
    });

    $('.edit-Receptionist-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#editReceptionistId').val(id);
        // Finally, show the modal
        $('#editReceptionistModel').modal('show');
    });

//Search
    $('#searchInput').on('input', function () {
        const searchQuery = $(this).val();
        console.log(searchQuery);
    });


//    Form Submit
    $('#addReceptionistForm').submit(function (event) {
        // Prevent the default form submission
        event.preventDefault();
        var formDataObj = {};

        $(this).find(':input').each(function () {
            if (this.name && this.value) { // Ensure the element has a name attribute
                formDataObj[this.name] = $(this).val();
            }
        });
        console.log('Data', formDataObj);
    });

    $('#editReceptionistForm').submit(function (event) {
        // Prevent the default form submission
        event.preventDefault();
        var formDataObj = {};

        $(this).find(':input').each(function () {
            if (this.name && this.value) { // Ensure the element has a name attribute
                formDataObj[this.name] = $(this).val();
            }
        });
        console.log('Data', formDataObj);
    });

    $('#deleteReceptionistForm').submit(function (event) {
        console.log('Hi');
        // Prevent the default form submission
        event.preventDefault();
        var formDataObj = {};

        $(this).find(':input').each(function () {
            if (this.name && this.value) { // Ensure the element has a name attribute
                formDataObj[this.name] = $(this).val();
            }
        });
        console.log('Data', formDataObj);
    });
    $('#approveReceptionistForm').submit(function (event) {
        console.log('Hi');
        // Prevent the default form submission
        event.preventDefault();
        var formDataObj = {};

        $(this).find(':input').each(function () {
            if (this.name && this.value) { // Ensure the element has a name attribute
                formDataObj[this.name] = $(this).val();
            }
        });
        console.log('Data', formDataObj);
    });
</script>
