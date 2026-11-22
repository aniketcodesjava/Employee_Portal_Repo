
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.UUID" %>

<%
    String message = "";
    String messageType = "";

    if ("POST".equalsIgnoreCase(request.getMethod())) {

        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement checkPs = null;
        ResultSet rs = null;

        try {

            int accId = Integer.parseInt(request.getParameter("accId"));
            double amount = Double.parseDouble(request.getParameter("amount"));

            String transactionType = "DEPOSIT";
            String transactionDate = request.getParameter("transaction_date");
            String description = request.getParameter("description");
            String referenceNumber = request.getParameter("reference_number");

            if (amount <= 0) {
                throw new Exception("Amount must be greater than zero.");
            }

            if (referenceNumber == null || referenceNumber.trim().isEmpty()) {
                throw new Exception("Reference number is required.");
            }

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/bankproject",
                "root",
                "root"
            );

            con.setAutoCommit(false);

            // Check account
            checkPs = con.prepareStatement(
                "SELECT accId, status FROM account WHERE accId = ?"
            );

            checkPs.setInt(1, accId);

            rs = checkPs.executeQuery();

            if (!rs.next()) {
                throw new Exception("Account not found!");
            }

            String status = rs.getString("status");

            if (!"ACTIVE".equalsIgnoreCase(status)) {
                throw new Exception("Account is not active.");
            }

            rs.close();
            checkPs.close();

            // Insert transaction
            String sql = "INSERT INTO transactions " +
                "(accId, transaction_type, amount, transaction_date, description, reference_number) " +
                "VALUES (?, ?, ?, ?, ?, ?)";

            ps = con.prepareStatement(sql);

            ps.setInt(1, accId);
            ps.setString(2, transactionType);
            ps.setDouble(3, amount);
            ps.setDate(4, Date.valueOf(transactionDate));
            ps.setString(5, description);
            ps.setString(6, referenceNumber);

            int result = ps.executeUpdate();

            if (result > 0) {

                // Update account balance
                PreparedStatement updatePs = con.prepareStatement(
                    "UPDATE account SET balance = COALESCE(balance, 0) + ? WHERE accId = ?"
                );

                updatePs.setDouble(1, amount);
                updatePs.setInt(2, accId);

                updatePs.executeUpdate();
                updatePs.close();

                con.commit();

                message = "Deposit successful! Amount: Rs. " + amount;
                messageType = "success";
            }

        } catch (Exception e) {

            try {
                if (con != null) {
                    con.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

            message = e.getMessage();
            messageType = "danger";

        } finally {

            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (checkPs != null) checkPs.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    String reference = "DEP" + System.currentTimeMillis();
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank | Cash Deposit</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;
    background: linear-gradient(135deg, #071b35, #123e69, #087e91);
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 30px 15px;
}

.deposit-container {
    width: 100%;
    max-width: 850px;
    background: #ffffff;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 15px 50px rgba(0,0,0,0.25);
}

.deposit-header {
    background: linear-gradient(120deg, #092747, #087e91);
    color: white;
    padding: 30px;
    text-align: center;
}

.deposit-header .bank-icon {
    font-size: 42px;
    color: #ffd166;
}

.deposit-header h2 {
    font-weight: 700;
    margin-top: 10px;
}

.deposit-header p {
    color: #d6e9f5;
    margin-bottom: 0;
}

.deposit-body {
    padding: 35px;
}

.form-label {
    font-weight: 600;
    color: #26384d;
}

.form-control,
.form-select {
    min-height: 48px;
    border-radius: 9px;
    border: 1px solid #d6dfe8;
}

.form-control:focus,
.form-select:focus {
    border-color: #087e91;
    box-shadow: 0 0 0 0.2rem rgba(8,126,145,0.15);
}

.input-group-text {
    background: #edf5f8;
    border-radius: 9px 0 0 9px;
}

.input-group .form-control {
    border-radius: 0 9px 9px 0;
}

.deposit-btn {
    background: linear-gradient(120deg, #07866d, #10a881);
    color: white;
    border: none;
    border-radius: 10px;
    padding: 13px;
    font-weight: 600;
    transition: 0.3s;
}

.deposit-btn:hover {
    background: #066c59;
    color: white;
    transform: translateY(-2px);
}

.reset-btn {
    border-radius: 10px;
    padding: 13px;
    font-weight: 600;
}

.info-box {
    background: #edf8f5;
    border-left: 4px solid #0c9b79;
    border-radius: 8px;
    padding: 13px;
    color: #236b59;
    font-size: 13px;
}

.footer-text {
    text-align: center;
    color: #82909d;
    font-size: 12px;
    margin-top: 25px;
}

@media(max-width:576px) {
    .deposit-body {
        padding: 22px;
    }

    .deposit-header {
        padding: 25px 15px;
    }
}

</style>

</head>

<body>

<div class="deposit-container">

    <!-- Header -->
    <div class="deposit-header">

        <i class="bi bi-bank bank-icon"></i>

        <h2>Skyline Bank</h2>

        <p>Cash Deposit Transaction</p>

    </div>

    <!-- Form Body -->
    <div class="deposit-body">

        <% if (!message.isEmpty()) { %>

            <div class="alert alert-<%=messageType%> alert-dismissible fade show">

                <i class="bi bi-info-circle-fill me-2"></i>

                <%=message%>

                <button type="button" class="btn-close"
                data-bs-dismiss="alert"></button>

            </div>

        <% } %>

        <div class="info-box mb-4">

            <i class="bi bi-shield-check me-2"></i>

            Please verify account details and deposit amount before submitting.

        </div>

        <form action="SaveDeposit.jsp"  method="post">

            <div class="row g-4">

                <!-- Account ID -->
                <div class="col-md-6">

                    <label class="form-label">
                        Account ID
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-person-vcard"></i>
                        </span>

                        <input type="number"
                        name="n1"
                        id="accId"
                        class="form-control"
                        placeholder="Enter Account ID"
                        min="1"
                        required>

                    </div>

                </div>

                <!-- Transaction Type -->
                <div class="col-md-6">

                    <label class="form-label">
                        Transaction Type
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-arrow-down-circle"></i>
                        </span>

                        <input type="text"
                        class="form-control"
                        name="n2"
                        value="DEPOSIT"
                        readonly>

                    </div>

                    <input type="hidden"
                    name="transaction_type"
                    value="DEPOSIT">

                </div>

                <!-- Amount -->
                <div class="col-md-6">

                    <label class="form-label">
                        Deposit Amount (₹)
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-currency-rupee"></i>
                        </span>

                        <input type="number"
                        name="n3"
                        id="amount"
                        class="form-control"
                        placeholder="Enter amount"
                        min="0.01"
                        step="0.01"
                        required>

                    </div>

                </div>

                <!-- Transaction Date -->
                <div class="col-md-6">

                    <label class="form-label">
                        Transaction Date
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-calendar-event"></i>
                        </span>

                        <input type="date"
                        name="n4"
                        id="transaction_date"
                        class="form-control"
                     
                        required>

                    </div>

                </div>

                <!-- Description -->
                <div class="col-md-12">

                    <label class="form-label">
                        Description
                    </label>

                    <textarea 
                    id="description"
                    name="n5"
                    class="form-control"
                    rows="3"
                    maxlength="100"
                    placeholder="Enter transaction description"></textarea>

                </div>

                <!-- Reference Number -->
                <div class="col-md-12">

                    <label class="form-label">
                        Reference Number
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-upc-scan"></i>
                        </span>

                        <input type="text"
                        name="n6"
                        class="form-control"
                        value="<%=reference%>"
                        readonly
                        required>

                    </div>

                </div>

                <!-- Buttons -->
                <div class="col-md-6">

                    <button type="submit"
                    class="btn deposit-btn w-100">

                        <i class="bi bi-check-circle me-2"></i>

                        Confirm Deposit

                    </button>

                </div>

                <div class="col-md-6">

                    <button type="reset"
                    class="btn btn-outline-secondary reset-btn w-100">

                        <i class="bi bi-arrow-counterclockwise me-2"></i>

                        Reset Form

                    </button>

                </div>

            </div>

        </form>

        <div class="footer-text">

            © 2026 Skyline Bank | Secure Banking Services

        </div>

    </div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

<script>

// Deposit Form Validation

document.getElementById("depositForm").addEventListener("submit", function(e) {

    let accountId = document.getElementById("accId").value;
    let amount = parseFloat(document.getElementById("amount").value);
    let transactionDate = document.getElementById("transaction_date").value;

    if (accountId <= 0) {

        e.preventDefault();
        alert("Please enter a valid Account ID.");
        return;

    }

    if (isNaN(amount) || amount <= 0) {

        e.preventDefault();
        alert("Please enter a valid deposit amount.");
        return;

    }

    if (!transactionDate) {

        e.preventDefault();
        alert("Please select transaction date.");
        return;

    }

    let confirmDeposit = confirm(
        "Are you sure you want to deposit ₹" + amount + "?"
    );

    if (!confirmDeposit) {

        e.preventDefault();

    }

});

// Prevent future transaction date

document.getElementById("transaction_date").max =
    new Date().toISOString().split("T")[0];

</script>

</body>
</html>
