
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank - Holder Registration</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
rel="stylesheet">

<style>

body {
    background: linear-gradient(135deg, #071b35, #087eae);
    font-family: Arial, sans-serif;
    min-height: 100vh;
    padding: 35px 12px;
}

.registration-container {
    max-width: 850px;
    margin: auto;
    background: white;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

.heading {
    text-align: center;
    color: #092d50;
    margin-bottom: 10px;
    font-weight: bold;
}

.subtitle {
    text-align: center;
    color: #777;
    margin-bottom: 30px;
}

.form-label {
    font-weight: bold;
    color: #333;
}

.form-control, .form-select {
    padding: 11px;
    border-radius: 6px;
}

.form-control:focus, .form-select:focus {
    border-color: #087eae;
    box-shadow: 0 0 5px rgba(8,126,174,0.3);
}

.section-title {
    color: #087eae;
    font-size: 18px;
    font-weight: bold;
    margin: 25px 0 18px;
    border-bottom: 2px solid #e5edf3;
    padding-bottom: 8px;
}

.register-btn {
    background: #087eae;
    color: white;
    padding: 12px;
    font-weight: bold;
    border: none;
    border-radius: 6px;
}

.register-btn:hover {
    background: #064d75;
    color: white;
}

.login-link {
    text-align: center;
    margin-top: 22px;
}

.login-link a {
    color: #087eae;
    font-weight: bold;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}

.required {
    color: red;
}

</style>

</head>

<body>

<div class="registration-container">

    <h2 class="heading">
        <i class="bi bi-bank"></i> Skyline Bank
    </h2>

    <h4 class="text-center text-secondary">
       Add Bank Holder
    </h4>

    <p class="subtitle">
        Add new bank holder account
    </p>

    <form action="SaveHolderRegistration.jsp" method="post"
          onsubmit="return validateForm()">

        <!-- Personal Information -->

        <div class="section-title">
            <i class="bi bi-person"></i>
            Personal Information
        </div>

        <div class="row g-3">

            <div class="col-md-6">

                <label class="form-label">
                    Full Name <span class="required">*</span>
                </label>

                <input type="text"
                       class="form-control"
                       name="n1"
                       id="full_name"
                       placeholder="Enter full name"
                       maxlength="100"
                       required>

            </div>

            <div class="col-md-6">

                <label class="form-label">
                    Date of Birth <span class="required">*</span>
                </label>

                <input type="date"
                       class="form-control"
                       name="n2"
                       id="date_of_birth"
                       required>

            </div>

            <div class="col-md-6">

                <label class="form-label">
                    Gender <span class="required">*</span>
                </label>

                <select class="form-select"
                        name="n3"
                        id="gender"
                        required>

                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>

                </select>

            </div>

            <div class="col-md-6">

                <label class="form-label">
                    Mobile Number <span class="required">*</span>
                </label>

                <input type="tel"
                       class="form-control"
                       name="n4"
                       id="mobile"
                       placeholder="Enter 10 digit mobile"
                       pattern="[6-9][0-9]{9}"
                       maxlength="10"
                       required>

            </div>

            <div class="col-12">

                <label class="form-label">
                    Email Address <span class="required">*</span>
                </label>

                <input type="email"
                       class="form-control"
                       name="n5"
                       id="email"
                       placeholder="example@gmail.com"
                       maxlength="100"
                       required>

            </div>

            <div class="col-12">

                <label class="form-label">
                    Address <span class="required">*</span>
                </label>

                <textarea class="form-control"
                          name="n6"
                          id="address"
                          rows="3"
                          placeholder="Enter complete address"
                          minlength="10"
                          maxlength="250"
                          required></textarea>

            </div>

        </div>

        <!-- Identity Information -->

        <div class="section-title">
            <i class="bi bi-card-text"></i>
            Identity Information
        </div>

        <div class="row g-3">

            <div class="col-md-6">

                <label class="form-label">
                    Identity Type <span class="required">*</span>
                </label>

                <select class="form-select"
                        name="n7"
                        id="identity_type"
                        required>

                    <option value="">Select Identity Type</option>
                    <option value="PAN">PAN Card</option>
                    <option value="Aadhaar">Aadhaar Card</option>
                    <option value="Voter ID">Voter ID</option>
                    <option value="Passport">Passport</option>

                </select>

            </div>

            <div class="col-md-6">

                <label class="form-label">
                    Identity Number <span class="required">*</span>
                </label>

                <input type="text"
                       class="form-control"
                       name="n8"
                       id="identity_number"
                       placeholder="Enter identity number"
                       maxlength="30"
                       required>

            </div>

        </div>

     
      
        <p id="errorMessage"
           class="text-danger text-center mt-3"></p>

        <!-- Submit Button -->

        <div class="d-grid mt-4">

            <button type="submit" class="btn register-btn">
                <i class="bi bi-person-plus"></i>
                Add Now
            </button>

        </div>

        <div class="login-link">

            

            <a href="CustomerManagement.jsp">
                <i class="bi bi-arrow-left"></i>
                Back to Home
            </a>

        </div>

    </form>

</div>

<script>

// Registration Form Validation

function validateForm() {

    let fullName = document.getElementById("full_name").value.trim();

    let dob = document.getElementById("date_of_birth").value;

    let mobile = document.getElementById("mobile").value.trim();

    let address = document.getElementById("address").value.trim();

    let identity = document.getElementById("identity_number").value.trim();

    let username = document.getElementById("username").value.trim();

    let password = document.getElementById("password").value;

    let confirmPassword = document.getElementById("confirm_password").value;

    let error = document.getElementById("errorMessage");

    error.innerHTML = "";

    if (fullName.length < 2 || !/^[a-zA-Z ]+$/.test(fullName)) {

        error.innerHTML = "Please enter a valid full name.";
        return false;
    }

    if (!dob || new Date(dob + "T00:00:00") >= new Date(
        new Date().toDateString())) {

        error.innerHTML = "Please enter a valid past date of birth.";
        return false;
    }

    if (!/^[6-9][0-9]{9}$/.test(mobile)) {

        error.innerHTML = "Please enter a valid 10 digit mobile number.";
        return false;
    }

    if (address.length < 10) {

        error.innerHTML = "Please enter a complete address.";
        return false;
    }

    if (identity === "") {

        error.innerHTML = "Please enter identity number.";
        return false;
    }

    if (username.length < 4) {

        error.innerHTML = "Username must contain at least 4 characters.";
        return false;
    }

    if (password.length < 8) {

        error.innerHTML = "Password must contain at least 8 characters.";
        return false;
    }

    if (password !== confirmPassword) {

        error.innerHTML = "Password and Confirm Password do not match.";
        return false;
    }

    return true;
}

</script>

</body>
</html>
