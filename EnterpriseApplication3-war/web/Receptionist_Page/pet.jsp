<%-- 
    Document   : pet
    Created on : Mar 7, 2024, 3:28:09 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="my-3">
        <div class="row justify-content-between" >
            <div class="col">
                <h2>Pet List</h2>   
            </div>
            <div class="col-2 text-end">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addPetModel" class="btn btn-success add-Pet-button" data-action="Add Pet">Add Pet</button> 

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
                    <th scope="col">Owner Name</th>
                    <th scope="col">Name</th>

                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Mark</td>
                    <th scope="col">Name</th>

                    <td style="width: 250px"> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#editPetModel" class="btn btn-primary edit-Pet-button" data-action="Edit Pet">Edit Pet</button>

                        <button class="btn delete-Pet-button" type="button" data-bs-toggle="modal" data-bs-target="#deletePetModel" ><i class="fas fa-trash-alt"></i> </button>
                    </td>
                </tr>


            </tbody>
        </table>
    </div>

</div>
<!-- Add Pet Model -->
<div class="modal fade" id="addPetModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="addPetForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Pet-add-title">Add Pet</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Owner Name</label>
                        <select required id='customerName' name='owner_id' class="form-select" aria-label="Owner" >
                            <option selected disabled>Please Select Pet</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
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

<!-- Edit Pet Model -->
<div class="modal fade" id="editPetModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="editPetForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Pet-add-title">Edit Pet</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <select required id='customerName' name='owner_id' class="form-select" aria-label="Owner" >
                        <option selected disabled>Please Select Pet</option>
                        <option value="1">Mark</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <input  required type="text" class="form-control" id="exampleFormControlInput1" name="name" placeholder="Please Key in Your Name">
                    </div>


                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="edit">
                    <input type="text" class="form-control" id="editPetId" name="id"  hidden >
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

<!-- Delete Pet Model -->
<div class="modal fade" id="deletePetModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="deletePetForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Delete Pet</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="deletePetTitle">Do you want to delete this Pet?</p>
                        </div>
                        <input type="text" class="form-control" id="deletePetId" name="id"  hidden >
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
    $('#addPetModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#addPetForm').trigger('reset');
    });
    $('#editPetModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#editPetForm').trigger('reset');
    });
    $('#deletePetModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#deletevForm').trigger('reset');
    });
    $('#approveModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#approveForm').trigger('reset');
    });
    $('.add-Pet-button').click(function () {
        var action = $(this).attr('data-action');
        console.log('action', action);
        // Use the action to change the modal's title
        $('#Pet-add-title').text(action);
    });
    $('.approve-Pet-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);

        $('#approveModelTitle').text('Approve Pet');

        $('#approveTitle').text('Do you want to Approve this Pet?');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });
    $('.reject-Pet-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').text(id);
        $('#approveModelTitle').text('Reject Pet');

        $('#approveTitle').text('Do you want to Reject this Pet?');
        $('#actionTypeInput').val('reject');
        // Finally, show the modal
        $('#approveModel').modal('show');
    });

    $('.delete-Pet-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#deletePetId').val(id);
        $('#deletePetTitle').text('Do you want to delete this Pet?');
        // Finally, show the modal
        $('#deletePetModel').modal('show');
    });

    $('.edit-Pet-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#editPetId').val(id);
        // Finally, show the modal
        $('#editPetModel').modal('show');
    });

//Search
    $('#searchInput').on('input', function () {
        const searchQuery = $(this).val();
        console.log(searchQuery);
    });


//    Form Submit
    $('#addPetForm').submit(function (event) {
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

    $('#editPetForm').submit(function (event) {
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

    $('#deletePetForm').submit(function (event) {
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

