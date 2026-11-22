
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Bank Account | Skyline Bank</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body {
    background: #f0f4f8;
    font-family: Arial, sans-serif;
}

.navbar {
    background: #102b50;
    padding: 15px 25px;
}

.navbar-brand {
    color: white;
    font-size: 23px;
    font-weight: bold;
}

.navbar-brand:hover {
    color: #f4c542;
}

.main-container {
    max-width: 850px;
    margin: 45px auto;
}

.form-card {
    background: white;
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.08);
    overflow: hidden;
}

.form-header {
    background: linear-gradient(120deg, #102b50, #1769aa);
    color: white;
    padding: 28px;
}

.form-header h3 {
    font-weight: bold;
    margin-bottom: 8px;
}

.form-body {
    padding: 30px;
}

.form-label {
    font-weight: 600;
    color: #263b53;
}

.form-control, .form-select {
    padding: 11px;
    border-radius: 8px;
}

.form-control:focus, .form-select:focus {
    border-color: #1769aa;
    box-shadow: 0 0 5px rgba(23,105,170,0.2);
}

.section-title {
    color: #1769aa;
    font-weight: bold;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
    margin-bottom: 22px;
}

.btn-submit {
    background: #1769aa;
    color: white;
    padding: 11px 30px;
    border: none;
    border-radius: 8px;
}

.btn-submit:hover {
    background: #102b50;
    color: white;
}

.btn-reset {
    padding: 11px 25px;
    border-radius: 8px;
}

.footer {
    text-align: center;
    color: #777;
    margin: 25px 0;
    font-size: 14px;
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <a class="navbar-brand text-decoration-none" href="#">
        <i class="bi bi-bank2"></i> SKYLINE BANK
    </a>
</nav>

<div class="container main-container">

    <div class="form-card">

        <!-- Header -->
        <div class="form-header">
            <h3>
                <i class="bi bi-credit-card-2-front"></i>
                Add New Bank Account
            </h3>
            <p class="mb-0">
                Create a new bank account for an existing customer.
            </p>
        </div>

        <!-- Form Body -->
        <div class="form-body">

            <form action="AddAccount.jsp" method="post">

                <!-- Customer Information -->
                <h5 class="section-title">
                    <i class="bi bi-person-circle"></i>
                    Customer Information
                </h5>

                <div class="row g-3 mb-4">

                    <div class="col-md-6">
                        <label class="form-label">
                            Customer ID <span class="text-danger">*</span>
                        </label>

                        <input type="text"
                               class="form-control"
                               id="customerId"
                               name="n1"
                               placeholder="Enter Customer ID"
                               maxlength="50"
                               required>

                        <small class="text-muted">
                            Must match an existing holder ID.
                        </small>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">
                            Account Number <span class="text-danger">*</span>
                        </label>

                        <input type="text"
                               class="form-control"
                               id="account_no"
                               name="n2"
                               placeholder="Enter Account Number"
                               maxlength="15"
                               required>
                    </div>

                </div>

                <!-- Account Details -->
                <h5 class="section-title">
                    <i class="bi bi-wallet2"></i>
                    Account Details
                </h5>

                <div class="row g-3 mb-4">

                    <div class="col-md-6">
                        <label class="form-label">
                            Account Type <span class="text-danger">*</span>
                        </label>

                        <select class="form-select"
                                name="n3"
                                id="account_type"
                                required>

                            <option value="">Select Account Type</option>
                            <option value="SAVINGS">Savings Account</option>
                            <option value="CURRENT">Current Account</option>
                            <option value="SALARY">Salary Account</option>
                            <option value="FIXED DEPOSIT">Fixed Deposit</option>

                        </select>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">
                            Opening Date <span class="text-danger">*</span>
                        </label>

                        <input type="date"
                               class="form-control"
                               name="n4"
                               id="opening_date"
                               required>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">
                            Opening Balance (₹)
                            <span class="text-danger">*</span>
                        </label>

                        <input type="number"
                               class="form-control"
                               name="n5"
                               id="balance"
                               placeholder="Enter Opening Balance"
                               min="0"
                               max="9999999999.99"
                               step="0.01"
                               required>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">
                            Account Status <span class="text-danger">*</span>
                        </label>

                        <select class="form-select"
                                name="n6"
                                id="status"
                                required>

                            <option value="">Select Status</option>
                            <option value="ACTIVE">Active</option>
                            <option value="INACTIVE">Inactive</option>
                            <option value="BLOCKED">Blocked</option>
                            <option value="PENDING">Pending</option>

                        </select>
                    </div>

                </div>

                <!-- Buttons -->
                <div class="d-flex flex-wrap justify-content-end gap-3 mt-4">

                    <button type="reset"
                            class="btn btn-outline-secondary btn-reset">
                        <i class="bi bi-arrow-counterclockwise"></i>
                        Reset
                    </button>

                    <button type="submit" class="btn btn-submit">
                        <i class="bi bi-check-circle"></i>
                        Create Account
                    </button>

                </div>

            </form>

        </div>
    </div>

    <div class="footer">
        © 2026 Skyline Bank | Banking Management System
    </div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

// Set today's date as default
document.addEventListener("DOMContentLoaded", function() {

    let today = new Date();

    let formattedDate =
        today.getFullYear() + "-" +
        String(today.getMonth() + 1).padStart(2, '0') + "-" +
        String(today.getDate()).padStart(2, '0');

    document.getElementById("opening_date").value = formattedDate;

    // Prevent future opening dates
    document.getElementById("opening_date").max = formattedDate;

});

// Form Validation
document.getElementById("accountForm").addEventListener("submit", function(event) {

    let customerId = document.getElementById("customerId").value.trim();
    let accountNo = document.getElementById("account_no").value.trim();
    let balance = document.getElementById("balance").value;

    if (customerId === "") {
        alert("Please enter Customer ID.");
        event.preventDefault();
        return;
    }

    if (accountNo === "") {
        alert("Please enter Account Number.");
        event.preventDefault();
        return;
    }

    if (Number(balance) < 0 || balance === "") {
        alert("Please enter a valid opening balance.");
        event.preventDefault();
        return;
    }

    alert("Account form submitted successfully!");

});

</script>

</body>
</html>
