
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.math.BigDecimal" %>

<%
    String message = "";
    String messageType = "";

    if ("POST".equalsIgnoreCase(request.getMethod())) {

        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement checkPs = null;
        PreparedStatement updatePs = null;
        ResultSet rs = null;

        try {

            int accId = Integer.parseInt(request.getParameter("accId"));

            BigDecimal amount = new BigDecimal(
                request.getParameter("amount")
            );

            String transactionType = "WITHDRAW";

            String transactionDate =
                request.getParameter("transaction_date");

            String description =
                request.getParameter("description");

            String referenceNumber =
                request.getParameter("reference_number");

            if (amount.compareTo(BigDecimal.ZERO) <= 0) {
                throw new Exception("Withdrawal amount must be greater than zero.");
            }

            if (referenceNumber == null ||
                referenceNumber.trim().isEmpty()) {

                throw new Exception("Reference number is required.");
            }

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/bankproject",
                "root",
                "root"
            );

            con.setAutoCommit(false);

            // Check account and lock row
            checkPs = con.prepareStatement(
                "SELECT balance, status FROM account WHERE accId = ? FOR UPDATE"
            );

            checkPs.setInt(1, accId);

            rs = checkPs.executeQuery();

            if (!rs.next()) {
                throw new Exception("Account not found!");
            }

            BigDecimal balance = rs.getBigDecimal("balance");

            String status = rs.getString("status");

            if (!"ACTIVE".equalsIgnoreCase(status)) {
                throw new Exception("Account is not active.");
            }

            if (balance == null) {
                balance = BigDecimal.ZERO;
            }

            // Check available balance
            if (balance.compareTo(amount) < 0) {

                throw new Exception(
                    "Insufficient balance! Available balance: Rs. " + balance
                );

            }

            rs.close();
            rs = null;

            checkPs.close();
            checkPs = null;

            // Insert withdrawal transaction
            String sql =
                "INSERT INTO transactions " +
                "(accId, transaction_type, amount, transaction_date, description, reference_number) " +
                "VALUES (?, ?, ?, ?, ?, ?)";

            ps = con.prepareStatement(sql);

            ps.setInt(1, accId);
            ps.setString(2, transactionType);
            ps.setBigDecimal(3, amount);
            ps.setDate(4, Date.valueOf(transactionDate));
            ps.setString(5, description);
            ps.setString(6, referenceNumber);

            int result = ps.executeUpdate();

            if (result > 0) {

                // Deduct amount from account balance
                updatePs = con.prepareStatement(
                    "UPDATE account SET balance = balance - ? " +
                    "WHERE accId = ? AND balance >= ?"
                );

                updatePs.setBigDecimal(1, amount);
                updatePs.setInt(2, accId);
                updatePs.setBigDecimal(3, amount);

                int updated = updatePs.executeUpdate();

                if (updated == 0) {
                    throw new Exception("Balance update failed!");
                }

                con.commit();

                BigDecimal remainingBalance = balance.subtract(amount);

                message =
                    "Withdrawal successful! Amount: Rs. " + amount +
                    " | Remaining Balance: Rs. " + remainingBalance;

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
                if (updatePs != null) updatePs.close();
                if (con != null) con.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

    }

    String reference = "WTH" + System.currentTimeMillis();

%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank | Cash Withdrawal</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
rel="stylesheet">

<!-- Google Fonts -->
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

    background: linear-gradient(
        135deg,
        #071b35,
        #123e69,
        #087e91
    );

    display: flex;

    align-items: center;

    justify-content: center;

    padding: 30px 15px;
}

.withdraw-container {

    width: 100%;

    max-width: 850px;

    background: #ffffff;

    border-radius: 20px;

    overflow: hidden;

    box-shadow: 0 15px 50px rgba(0,0,0,0.25);

}

.withdraw-header {

    background: linear-gradient(
        120deg,
        #092747,
        #b52c39
    );

    color: white;

    padding: 30px;

    text-align: center;

}

.withdraw-header .bank-icon {

    font-size: 42px;

    color: #ffd166;

}

.withdraw-header h2 {

    font-weight: 700;

    margin-top: 10px;

}

.withdraw-header p {

    color: #f5dfe1;

    margin-bottom: 0;

}

.withdraw-body {

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

    border-color: #b52c39;

    box-shadow: 0 0 0 0.2rem rgba(181,44,57,0.15);

}

.input-group-text {

    background: #fceff0;

    border-radius: 9px 0 0 9px;

}

.input-group .form-control {

    border-radius: 0 9px 9px 0;

}

.withdraw-btn {

    background: linear-gradient(
        120deg,
        #c0392b,
        #e74c3c
    );

    color: white;

    border: none;

    border-radius: 10px;

    padding: 13px;

    font-weight: 600;

    transition: 0.3s;

}

.withdraw-btn:hover {

    background: #a52820;

    color: white;

    transform: translateY(-2px);

}

.reset-btn {

    border-radius: 10px;

    padding: 13px;

    font-weight: 600;

}

.info-box {

    background: #fff1f1;

    border-left: 4px solid #d94343;

    border-radius: 8px;

    padding: 13px;

    color: #9d3434;

    font-size: 13px;

}

.footer-text {

    text-align: center;

    color: #82909d;

    font-size: 12px;

    margin-top: 25px;

}

@media(max-width:576px) {

    .withdraw-body {
        padding: 22px;
    }

    .withdraw-header {
        padding: 25px 15px;
    }

}

</style>

</head>

<body>

<div class="withdraw-container">

    <!-- Header -->

    <div class="withdraw-header">

       

        <h2> <i class="bi bi-bank bank-icon"></i>  Skyline Bank</h2>

        <p>Cash Withdrawal Transaction</p>

    </div>


    <!-- Form Body -->

    <div class="withdraw-body">

        <div class="info-box mb-4">

            <i class="bi bi-shield-exclamation me-2"></i>

            Please verify your account details and available balance before withdrawal.

        </div>


        <form action="SaveWithdraw.jsp" method="post" >

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

                            <i class="bi bi-arrow-up-circle"></i>

                        </span>

                        <input type="text"

                        class="form-control"

                        value="WITHDRAW"

                        readonly>

                    </div>

                    <input type="hidden"

                    name="n2"

                    value="WITHDRAW">

                </div>


                <!-- Amount -->

                <div class="col-md-6">

                    <label class="form-label">

                        Withdrawal Amount (₹)

                    </label>

                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-currency-rupee"></i>

                        </span>

                        <input type="number"

                        name="n3"

                        id="amount"

                        class="form-control"

                        placeholder="Enter withdrawal amount"

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

                    name="n5"

                    id="description"

                    class="form-control"

                    rows="3"

                    maxlength="100"

                    placeholder="Enter withdrawal description"></textarea>

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

                    class="btn withdraw-btn w-100">

                        <i class="bi bi-check-circle me-2"></i>

                        Confirm Withdrawal

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
    </div>

</div>


<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


<!-- JavaScript Validation -->

<script>

document.getElementById("withdrawForm").addEventListener("submit", function(e) {

    let accountId = document.getElementById("accId").value;

    let amount = parseFloat(
        document.getElementById("amount").value
    );

    let transactionDate =
        document.getElementById("transaction_date").value;


    if (accountId <= 0) {

        e.preventDefault();

        alert("Please enter a valid Account ID.");

        return;

    }


    if (isNaN(amount) || amount <= 0) {

        e.preventDefault();

        alert("Please enter a valid withdrawal amount.");

        return;

    }


    if (!transactionDate) {

        e.preventDefault();

        alert("Please select transaction date.");

        return;

    }


    let confirmWithdraw = confirm(

        "Are you sure you want to withdraw ₹" + amount + "?"

    );


    if (!confirmWithdraw) {

        e.preventDefault();

    }

});


// Prevent future transaction date

document.getElementById("transaction_date").max =

    new Date().toISOString().split("T")[0];

</script>

</body>

</html>
