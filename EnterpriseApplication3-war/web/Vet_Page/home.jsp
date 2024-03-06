<%-- 
    Document   : home
    Created on : Mar 7, 2024, 2:28:30 AM
    Author     : ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="my-3">
        <div class="row justify-content-between" >
            <div class="col">
                <h2>Appointment List</h2>   
            </div>
            <div class="col-2 text-end">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addAppointmentModel" class="btn btn-success add-Appointment-button" data-action="Add Appointment">Add Appointment</button> 

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
                    <th scope="col">Appointment Start Time</th>
                    <th scope="col">Appointment End Time</th>
                    <th scope="col">Customer Name</th>
                    <th scope="col">Vet Name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>07/03/2024 10:00 am </td>
                    <td>07/03/2024 10:15 am </td>
                    <td>Mark</td>
                    <td>Tim</td>
                    <td style="width: 450px"> 
                        <button type="button" data-bs-toggle="modal" data-bs-target="#editAppointmentModel" class="btn btn-primary edit-Appointment-button" data-action="Edit Appointment">Edit Appointment</button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#approveAppointmentModel" class="btn btn-danger reject-Appointment-button" >Cancel</button> 
                        <button class="btn delete-Appointment-button" type="button" data-bs-toggle="modal" data-bs-target="#deleteAppointmentModel" ><i class="fas fa-trash-alt"></i> </button>
                    </td>
                </tr>


            </tbody>
        </table>
    </div>

</div>
<!-- Add Appointment Model -->
<div class="modal fade" id="addAppointmentModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="addAppointmentForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Appointment-add-title">Add Appointment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Customer Name</label>
                        <select required id='customerName' name='owner_id' class="form-select" aria-label="customerName" >
                            <option selected disabled>Please Select Customer</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Pet Name</label>
                        <select required id='customerName' name='pet_id' class="form-select" aria-label="PetName" >
                            <option selected disabled>Please Select Pet</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Vet Name</label>
                        <select required id='vetName' name='vet_id' class="form-select" aria-label="customerName" >
                            <option selected disabled>Please Select Vet</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="appointment_start_time" class="form-label">Appointment Start Time</label>
                        <input required type="datetime-local" class="form-control" id="appointment_start_time" name="appointment_start_time" placeholder="Please Key in Your Name">
                    </div>
                    <div class="mb-3">
                        <label for="appointment_end_time" class="form-label">Appointment End Time</label>
                        <input required type="datetime-local" class="form-control" id="appointment_end_time" name="appointment_end_time" placeholder="Please Key in Your Name">
                    </div>
                    <div class="mb-3">
                        <label for="diagnosis" class="form-label">Diagnosis</label>
                        <textarea required type="text" class="form-control" id="diagnosis" name="diagnosis" placeholder="Please Key in Diagnosis" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="prognosis" class="form-label">Prognosis</label>
                        <textarea required type="text" class="form-control" id="prognosis" name="prognosis" placeholder="Please Key in Prognosis" rows="3"></textarea>
                    </div>
                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="add">
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

<!-- Edit Appointment Model -->
<div class="modal fade" id="editAppointmentModel" tabindex="-1" aria-labelledby="actionModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="editAppointmentForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Appointment-add-title">Edit Appointment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Customer Name</label>
                        <select required id='customerName' name='owner_id' class="form-select" aria-label="customerName" >
                            <option selected disabled>Please Select Customer</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Pet Name</label>
                        <select required id='customerName' name='pet_id' class="form-select" aria-label="PetName" >
                            <option selected disabled>Please Select Pet</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="ExpertiseInput" class="form-label">Vet Name</label>
                        <select required id='vetName' name='vet_id' class="form-select" aria-label="customerName" >
                            <option selected disabled>Please Select Vet</option>
                            <option value="1">Mark</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="appointment_start_time" class="form-label">Appointment Start Time</label>
                        <input required type="datetime-local" class="form-control" id="appointment_start_time" name="appointment_start_time" placeholder="Please Key in Your Name">
                    </div>
                    <div class="mb-3">
                        <label for="appointment_end_time" class="form-label">Appointment End Time</label>
                        <input required type="datetime-local" class="form-control" id="appointment_end_time" name="appointment_end_time" placeholder="Please Key in Your Name">
                    </div>
                    <div class="mb-3">
                        <label for="diagnosis" class="form-label">Diagnosis</label>
                        <textarea required type="text" class="form-control" id="diagnosis" name="diagnosis" placeholder="Please Key in Diagnosis" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="prognosis" class="form-label">Prognosis</label>
                        <textarea required type="text" class="form-control" id="prognosis" name="prognosis" placeholder="Please Key in Prognosis" rows="3"></textarea>
                    </div>
                    <input type="text" class="form-control" id="actionTypeInput" name="type" placeholder="Type" hidden value="edit">
                    <input type="text" class="form-control" id="editAppointmentId" name="id"  hidden >
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

<!-- Delete Appointment Model -->
<div class="modal fade" id="deleteAppointmentModel" tabindex="-1" aria-labelledby="deleteModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="deleteAppointmentForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Delete Appointment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="deleteAppointmentTitle">Do you want to delete this Appointment?</p>
                        </div>
                        <input type="text" class="form-control" id="deleteAppointmentId" name="id"  hidden >
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
<div class="modal fade" id="approveAppointmentModel" tabindex="-1" aria-labelledby="approveRejectModel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="action"  method="POST" id="approveAppointmentForm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="approveAppointmentModelTitle">Approve</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <div class="row">
                            <p id="approveAppointmentTitle">Do you want to Approve this record?</p>
                        </div>
                        <input type="text" class="form-control" id="approvedId" name="id"  hidden >
                        <input type="text" class="form-control" id="approveActionTypeInput" name="type" placeholder="Type" hidden >
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" id="approveAppointmentBtn">Approve</button>
                </div>
            </div>
        </form>

    </div>
</div>
<script>
    $('#addAppointmentModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#addAppointmentForm').trigger('reset');
        $('#add-error-message').text('');
    });
    $('#editAppointmentModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#editAppointmentForm').trigger('reset');
        $('#edit-error-message').text('');
    });
    $('#deleteAppointmentModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#deleteAppointmentForm').trigger('reset');
    });
    $('#approveAppointmentModel').on('hidden.bs.modal', function (e) {
        console.log('Modal has been dismissed.');
        $(this).find('#approveAppointmentForm').trigger('reset');
    });
    $('.add-Appointment-button').click(function () {
        var action = $(this).attr('data-action');
        console.log('action', action);
        // Use the action to change the modal's title
        $('#Appointment-add-title').text(action);
    });
    $('.approve-Appointment-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').val(id);
        $('#approveActionTypeInput').val('approve');
        $('#approveAppointmentModelTitle').text('Approve Appointment');

        $('#approveAppointmentTitle').text('Do you want to Approve this Appointment?');
        $('#approveAppointmentBtn').text('Approve');

        // Finally, show the modal
        $('#approveAppointmentModel').modal('show');
    });
    $('.reject-Appointment-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#approvedId').val(id);
        $('#approveAppointmentModelTitle').text('Reject Appointment');

        $('#approveAppointmentTitle').text('Do you want to Cancel this Appointment?');
        $('#approveActionTypeInput').val('reject');
        $('#approveAppointmentBtn').text('Reject');
        // Finally, show the modal
        $('#approveAppointmentModel').modal('show');
    });

    $('.delete-Appointment-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#deleteAppointmentId').val(id);
        $('#deleteAppointmentTitle').text('Do you want to delete this Appointment?');
        // Finally, show the modal
        $('#deleteAppointmentModel').modal('show');
    });

    $('.edit-Appointment-button').click(function () {
        //Replace with real id
        let id = '123123';
        $('#editAppointmentId').val(id);
        // Finally, show the modal
        $('#editAppointmentModel').modal('show');
    });

//Search
    $('#searchInput').on('input', function () {
        const searchQuery = $(this).val();
        console.log(searchQuery);
    });

    $('#addAppointmentForm #appointment_start_time').change(function () {
        $('#add-error-message').text('');
        var startDateTime = $('#addAppointmentForm #appointment_start_time').val();
        var endDateTime = $('#addAppointmentForm #appointment_end_time').val();
        if (new Date(startDateTime) >= new Date(endDateTime)) {
            // Display error message
            $('#add-error-message').text('Start Time cannnot be greater than End Time');
        }
    });
    $('#addAppointmentForm #appointment_end_time').change(function () {
        $('#add-error-message').text('');
        var startDateTime = $('#addAppointmentForm #appointment_start_time').val();
        var endDateTime = $('#addAppointmentForm #appointment_end_time').val();
        if (new Date(startDateTime) >= new Date(endDateTime)) {
            // Display error message
            $('#add-error-message').text('Start Time cannnot be greater than End Time');
        }
    });
    $('#editAppointmentForm #appointment_start_time').change(function () {
        $('#edit-error-message').text('');
        var startDateTime = $('#editAppointmentForm #appointment_start_time').val();
        var endDateTime = $('#editAppointmentForm #appointment_end_time').val();
        if (new Date(startDateTime) >= new Date(endDateTime)) {
            // Display error message
            $('#edit-error-message').text('Start Time cannnot be greater than End Time');
        }
    });
    $('#editAppointmentForm #appointment_end_time').change(function () {
        $('#edit-error-message').text('');
        var startDateTime = $('#editAppointmentForm #appointment_start_time').val();
        var endDateTime = $('#editAppointmentForm #appointment_end_time').val();
        if (new Date(startDateTime) >= new Date(endDateTime)) {
            // Display error message
            $('#edit-error-message').text('Start Time cannnot be greater than End Time');
        }
    });

//    Form Submit
    $('#addAppointmentForm').submit(function (event) {
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
        var startDateTime = $('#addAppointmentForm #appointment_start_time').val();
        var endDateTime = $('#addAppointmentForm #appointment_end_time').val();
        if (new Date(startDateTime) >= new Date(endDateTime)) {
            // Display error message
            $('#add-error-message').text('Start Time cannnot be greater than End Time');
            return false;
        }
        // Prevent the default form submission
        event.preventDefault();
        var formDataObj = {};

        $(this).find(':input').each(function () {
            if (this.name && this.value) { // Ensure the element has a name attribute
                if (this.name === 'appointment_end_time' || this.name === 'appointment_start_time') {
                    formDataObj[this.name] = new Date($(this).val()).toISOString();
                } else {
                    formDataObj[this.name] = $(this).val();
                }
            }
        });
        console.log('Data', formDataObj);
    });

    $('#editAppointmentForm').submit(function (event) {
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
        var startDateTime = $('#editAppointmentForm #appointment_start_time').val();
        var endDateTime = $('#editAppointmentForm #appointment_end_time').val();
        if (new Date(startDateTime) >= new Date(endDateTime)) {
            // Display error message
            $('#edit-error-message').text('Start Time cannnot be greater than End Time');
            return false;
        }
        // Prevent the default form submission
        event.preventDefault();
        var formDataObj = {};

        $(this).find(':input').each(function () {
            if (this.name && this.value) { // Ensure the element has a name attribute
                if (this.name === 'appointment_end_time' || this.name === 'appointment_start_time') {
                    formDataObj[this.name] = new Date($(this).val()).toISOString();
                } else {
                    formDataObj[this.name] = $(this).val();
                }
            }
        });
        console.log('Data', formDataObj);
    });

    $('#deleteAppointmentForm').submit(function (event) {
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
    $('#approveAppointmentForm').submit(function (event) {
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
