<%-- 
    Document   : customer
    Created on : Mar 7, 2024, 3:27:58 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="my-3">
        <div class="row justify-content-between" >
            <div class="col">
                <h2>Customer List</h2>   
            </div>
            <div class="col-2 text-end">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addCustomerModel" class="btn btn-success add-Customer-button" data-action="Add Customer">Add Customer</button> 

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
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Mark</td>
                    <td style="width: 250px"> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#editCustomerModel" class="btn btn-primary edit-Customer-button" data-action="Edit Customer">Edit Customer</button>

                        <button class="btn delete-Customer-button" type="button" data-bs-toggle="modal" data-bs-target="#deleteCustomerModel" ><i class="fas fa-trash-alt"></i> </button>
                    </td>
                </tr>


            </tbody>
        </table>
    </div>

</div>
<!-- Add Customer Model -->
<div class="modal fade" id="addCustomerModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="addCustomerForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Customer-add-title">Add Customer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>

                    <input  type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="add">
                    <div id="add-error-message" style="color: red;"></div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Edit Customer Model -->
<div class="modal fade" id="editCustomerModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="editCustomerForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Customer-add-title">Edit Customer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input  required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>


                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="edit">
                    <input type="text" class="form-control" id="editCustomerId" name="id"  hidden >
                    <div id="edit-error-message" style="color: red;"></div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </form>

    </div>
</div>

<!-- Delete Customer Model -->
<div class="modal fade" id="deleteCustomerModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="deleteCustomerForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Delete Customer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="deleteCustomerTitle">Do you want to delete this Customer?</p>
                        </div>
                        <input type="text" class="form-control" id="deleteCustomerId" name="id"  hidden >
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
    $('#addCustomerModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#addCustomerForm').trigger('reset');
    });
    $('#editCustomerModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#editCustomerForm').trigger('reset');
    });
    $('#deleteCustomerModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#deleteCustomerForm').trigger('reset');
    });
    $('#approveModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#approveForm').trigger('reset');
    });
    $('.add-Customer-button').click(function () {
        var action = $(this).attr('data-action');
        console.log('action', action);
        // Use the action to change the modal's title
        $('#Customer-add-title').text(action);
    });
    $('.approve-Customer-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);

        $('#approveModelTitle').text('Approve Customer');

        $('#approveTitle').text('Do you want to Approve this Customer?');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });
    $('.reject-Customer-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);
        $('#approveModelTitle').text('Reject Customer');

        $('#approveTitle').text('Do you want to Reject this Customer?');
        $('#actionTypeInput').val('reject');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });

    $('.delete-Customer-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#deleteCustomerId').val(id);
        $('#deleteCustomerTitle').text('Do you want to delete this Customer?');
        // Finally, show the modal
        $('#deleteCustomerModel').modal('show');
    });

    $('.edit-Customer-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#editCustomerId').val(id);
        // Finally, show the modal
        $('#editCustomerModel').modal('show');
    });

//Search
    $('#searchInput').on('input', function () {
        const searchQuery = $(this).val();
        console.log(searchQuery);
    });


//    Form Submit
    $('#addCustomerForm').submit(function (event) {
        let isValid = true;
        $('#add-error-message').text(''); // Clear previous error message

        // Check each input in the form
        $(this).find('input[required] , select[required]').each(function () {
            if ($(this).is('[multiple]')) { // Check if the select allows multiple selections
                if (!$(this).val() || $(this).val().length === 0) {
                    isValid = false; // No options selected
                }
            } else {
                if (!$(this).val()) {
                    isValid = false; // Single input or select with no value selected
                }
            }
        });
        if (!isValid) {
            $('#add-error-message').text('All required fields must be filled out');
            return false;
        }

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

    $('#editCustomerForm').submit(function (event) {
        let isValid = true;
        $('#edit-error-message').text(''); // Clear previous error message
        $(this).find('input[required] , select[required]').each(function () {
            if ($(this).is('[multiple]')) { // Check if the select allows multiple selections
                if (!$(this).val() || $(this).val().length === 0) {
                    isValid = false; // No options selected
                }
            } else {
                if (!$(this).val()) {
                    isValid = false; // Single input or select with no value selected
                }
            }
        });
        if (!isValid) {
            $('#edit-error-message').text('All required fields must be filled out');
            return false;
        }
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

    $('#deleteCustomerForm').submit(function (event) {
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
