<%-- 
    Document   : Staff
    Created on : Mar 6, 2024, 11:51:37 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="my-3">
        <div class="row justify-content-between" >
            <div class="col">
                <h2>Staff List</h2>   
            </div>
            <div class="col-2 text-end">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addStaffModel" class="btn btn-success add-staff-button" data-action="Add Staff">Add Staff</button> 

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
                    <td style="width: 350px"> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#editStaffModel" class="btn btn-primary edit-staff-button" data-action="Edit Staff">Edit Staff</button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#approveModel" class="btn btn-success approve-staff-button" >Approve</button> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#approveModel" class="btn btn-danger reject-staff-button" >Reject</button> 
                        <button class="btn delete-staff-button" type="button" data-bs-toggle="modal" data-bs-target="#deleteStaffModel" ><i class="fas fa-trash-alt"></i> </button>
                    </td>
                </tr>


            </tbody>
        </table>
    </div>

</div>
<!-- Add Staff Model -->
<div class="modal fade" id="addStaffModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="addStaffForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staff-add-title">Add Staff</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
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

<!-- Edit Staff Model -->
<div class="modal fade" id="editStaffModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="editStaffForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staff-add-title">Edit Staff</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>
                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden>
                    <input type="text" class="form-control" id="editStaffId" name="id"  hidden >


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </form>

    </div>
</div>

<!-- Delete Staff Model -->
<div class="modal fade" id="deleteStaffModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="deleteStaffForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Delete Staff</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="deleteStaffTitle">Do you want to delete this Staff?</p>
                        </div>
                        <input type="text" class="form-control" id="deleteStaffId" name="id"  hidden >
                        <input type="text" class="form-control" id="actionTypeInput" name="actionType" placeholder="Type" hidden value="delete">
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
<div class="modal fade" id="approveModel" tabindex="-1" aria-labelledby="approveRejectModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="approveForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="approveModelTitle">Approve</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="approveTitle">Do you want to Approve this record?</p>
                        </div>
                        <input type="text" class="form-control" id="approvedId" name="id"  hidden >
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
    $('#addStaffModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#addStaffForm').trigger('reset');
    });
    $('#editStaffModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#editStaffForm').trigger('reset');
    });
    $('#deleteStaffModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#deleteStaffForm').trigger('reset');
    });
    $('#approveModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#approveForm').trigger('reset');
    });
    $('.add-staff-button').click(function () {
        var action = $(this).attr('data-action');
        console.log('action', action);
        // Use the action to change the modal's title
        $('#staff-add-title').text(action);
        var input = $('<input>').attr({
            type: 'text',
            name: 'role',
            value: 'managing_staff',
            hidden: true
        });

        // Append it to the container
        $('#addStaffForm').append(input);
        $('#addStaffModel #actionTypeInput').val(action === 'Edit Staff' ? "edit" : "add");
    });
    $('.approve-staff-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);

        $('#approveModelTitle').text('Approve Staff');

        $('#approveTitle').text('Do you want to Approve this staff?');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });
    $('.reject-staff-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);
        $('#approveModelTitle').text('Reject Staff');

        $('#approveTitle').text('Do you want to Reject this staff?');
        $('#actionTypeInput').val('reject');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });

    $('.delete-staff-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#deleteStaffId').val(id);
        $('#deleteStaffTitle').text('Do you want to delete this Staff?');
        // Finally, show the modal
        $('#deleteStaffModel').modal('show');
    });

    $('.edit-staff-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#editStaffId').val(id);
        // Finally, show the modal
        $('#editStaffModel').modal('show');
    });


//    Form Submit
    $('#addStaffForm').submit(function (event) {
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

    $('#editStaffForm').submit(function (event) {
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

    $('#deleteStaffForm').submit(function (event) {
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