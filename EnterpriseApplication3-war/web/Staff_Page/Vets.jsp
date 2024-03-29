<%-- 
    Document   : Vets
    Created on : Mar 7, 2024, 12:55:16 AM
    Author     : ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="my-3">
        <div class="row justify-content-between" >
            <div class="col">
                <h2>Vets List</h2>   
            </div>
            <div class="col-2 text-end">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addVetsModel" class="btn btn-success add-Vets-button" data-action="Add Vets">Add Vets</button> 

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
                    <th scope="col">Expertise</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Mark</td>
                    <td>A,B,C</td>
                    <td style="width: 250px"> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#editVetsModel" class="btn btn-primary edit-Vets-button" data-action="Edit Vets">Edit Vets</button>

                        <button class="btn delete-Vets-button" type="button" data-bs-toggle="modal" data-bs-target="#deleteVetsModel" ><i class="fas fa-trash-alt"></i> </button>
                    </td>
                </tr>


            </tbody>
        </table>
    </div>

</div>
<!-- Add Vets Model -->
<div class="modal fade" id="addVetsModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="addVetsForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Vets-add-title">Add Vets</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Expertise</label>
                        <select required id='ExpertiseInput' name='expertise' class="form-select" aria-label="Default select example" multiple>
                            <option selected  disabled>Please Select Your Expertise</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
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

<!-- Edit Vets Model -->
<div class="modal fade" id="editVetsModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="editVetsForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Vets-add-title">Edit Vets</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input  required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Expertise</label>
                        <select required id='ExpertiseInput' name='expertise' class="form-select" aria-label="Default select example" multiple>
                            <option selected disabled>Please Select Your Expertise</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>

                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="edit">
                    <input type="text" class="form-control" id="editVetsId" name="id"  hidden >
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

<!-- Delete Vets Model -->
<div class="modal fade" id="deleteVetsModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="deleteVetsForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Delete Vets</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="deleteVetsTitle">Do you want to delete this Vets?</p>
                        </div>
                        <input type="text" class="form-control" id="deleteVetsId" name="id"  hidden >
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
    $('#addVetsModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#addVetsForm').trigger('reset');
    });
    $('#editVetsModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#editVetsForm').trigger('reset');
    });
    $('#deleteVetsModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#deleteVetsForm').trigger('reset');
    });
    $('#approveModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#approveForm').trigger('reset');
    });
    $('.add-Vets-button').click(function () {
        var action = $(this).attr('data-action');
        console.log('action', action);
        // Use the action to change the modal's title
        $('#Vets-add-title').text(action);
        var input = $('<input>').attr({
            type: 'text',
            name: 'role',
            value: 'vet',
            hidden: true
        });

        // Append it to the container
        $('#addVetsForm').append(input);
        $('#addVetsModel #actionTypeInput').val(action === 'Edit Vets' ? "edit" : "add");
    });
    $('.approve-Vets-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);

        $('#approveModelTitle').text('Approve Vets');

        $('#approveTitle').text('Do you want to Approve this Vets?');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });
    $('.reject-Vets-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);
        $('#approveModelTitle').text('Reject Vets');

        $('#approveTitle').text('Do you want to Reject this Vets?');
        $('#actionTypeInput').val('reject');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });

    $('.delete-Vets-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#deleteVetsId').val(id);
        $('#deleteVetsTitle').text('Do you want to delete this Vets?');
        // Finally, show the modal
        $('#deleteVetsModel').modal('show');
    });

    $('.edit-Vets-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#editVetsId').val(id);
        // Finally, show the modal
        $('#editVetsModel').modal('show');
    });

//Search
    $('#searchInput').on('input', function () {
        const searchQuery = $(this).val();
        console.log(searchQuery);
    });


//    Form Submit
    $('#addVetsForm').submit(function (event) {
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

    $('#editVetsForm').submit(function (event) {
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

    $('#deleteVetsForm').submit(function (event) {
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
