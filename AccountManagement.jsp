
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Account Management | Skyline Bank</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>

body {
    background: #f1f5f9;
    font-family: Arial, sans-serif;
}

/* Navbar */

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

/* Main Container */

.main-container {
    padding: 35px 15px;
}

/* Page Header */

.page-title {
    color: #102b50;
    font-weight: bold;
}

.page-subtitle {
    color: #64748b;
}

/* Cards */

.option-card {
    background: white;
    border: none;
    border-radius: 12px;
    padding: 22px;
    box-shadow: 0 3px 12px rgba(0,0,0,0.06);
    transition: 0.3s;
    height: 100%;
}

.option-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 7px 20px rgba(0,0,0,0.12);
}

.option-icon {
    font-size: 30px;
    color: #1769aa;
    margin-bottom: 12px;
}

.option-card h5 {
    font-weight: bold;
    color: #102b50;
}

/* Table Card */

.table-card {
    background: white;
    border-radius: 12px;
    padding: 25px;
    box-shadow: 0 3px 15px rgba(0,0,0,0.06);
    margin-top: 35px;
}

.table-title {
    color: #102b50;
    font-weight: bold;
}

.table thead th {
    background: #102b50;
    color: white;
    padding: 14px;
    white-space: nowrap;
}

.table tbody td {
    padding: 13px;
    vertical-align: middle;
    white-space: nowrap;
}

.table tbody tr:hover {
    background: #f1f7ff;
}

.badge-active {
    background: #d1fae5;
    color: #047857;
    padding: 7px 12px;
}

.badge-inactive {
    background: #e2e8f0;
    color: #475569;
    padding: 7px 12px;
}

.badge-blocked {
    background: #fee2e2;
    color: #b91c1c;
    padding: 7px 12px;
}

.badge-pending {
    background: #fef3c7;
    color: #92400e;
    padding: 7px 12px;
}

.action-btn {
    margin: 2px;
}

.footer {
    text-align: center;
    color: #64748b;
    margin-top: 30px;
    padding-bottom: 15px;
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg">

    <div class="container-fluid">

        <a class="navbar-brand text-decoration-none" href="#">
            <i class="bi bi-bank2"></i>
            SKYLINE BANK
        </a>

        <span class="text-white">
            <i class="bi bi-person-circle"></i>
            Admin Panel
        </span>

    </div>

</nav>


    <!-- Account Details Table -->

    <div class="table-card" id="accountTable">

        <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">

            <div>

                <h4 class="table-title">
                    <i class="bi bi-list-ul"></i>
                    All Bank Accounts
                </h4>

                <p class="text-muted mb-0">
                    Manage all registered bank accounts.
                </p>

            </div>

            <a href="CreateAccount.jsp" class="btn btn-primary mt-2">

                <i class="bi bi-plus-circle"></i>
                Add New Account

            </a>

        </div>


        <!-- Search -->

        <div class="row mb-3">

            <div class="col-md-5">

                <div class="input-group">

                    <span class="input-group-text">
                        <i class="bi bi-search"></i>
                    </span>

                    <input type="text"
                           id="searchInput"
                           class="form-control"
                           placeholder="Search customer ID, account number...">

                </div>

            </div>

        </div>


        <!-- Table -->

        <div class="table-responsive">

            <table class="table table-bordered table-hover text-center"
                   id="accountData">

                <thead>

                    <tr>

                        <th>Customer ID</th>

                        <th>Account Number</th>

                        <th>Account Type</th>

                        <th>Opening Date</th>

                        <th>Balance (₹)</th>

                        <th>Status</th>

                        <th>Actions</th>

                    </tr>

                </thead>

                <tbody>

<%

  String id="",acc="",actype="",date="",bal="",sta="";

  Class.forName("com.mysql.cj.jdbc.Driver");

  Connection con = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/bankmanagement",
      "root",
      "123456"
  );

  PreparedStatement ps = con.prepareStatement(
      "select customerId,account_no,account_type,opening_date,balance,status from account"
  );

  ResultSet rs = ps.executeQuery();

  while(rs.next())

  {

      id = rs.getString(1);

      acc = rs.getString(2);

      actype = rs.getString(3);

      date = rs.getString(4);

      bal = rs.getString(5);

      sta = rs.getString(6);

%>

                    <tr>

                        <td><%=id %></td>

                        <td>
                            <strong><%=acc %></strong>
                        </td>

                        <td><%=actype %></td>

                        <td><%=date %></td>

                        <td>
                            ₹ <%=bal %>
                        </td>

                        <td>

                            <% if("ACTIVE".equalsIgnoreCase(sta)) { %>

                                <span class="badge badge-active">
                                    ACTIVE
                                </span>

                            <% } else if("INACTIVE".equalsIgnoreCase(sta)) { %>

                                <span class="badge badge-inactive">
                                    INACTIVE
                                </span>

                            <% } else if("BLOCKED".equalsIgnoreCase(sta)) { %>

                                <span class="badge badge-blocked">
                                    BLOCKED
                                </span>

                            <% } else { %>

                                <span class="badge badge-pending">
                                    <%=sta %>
                                </span>

                            <% } %>

                        </td>


                        <!-- Actions -->

                        <td>

                          

                            <a href="UpdateAccount.jsp?id=<%=id%>"
                               class="btn btn-sm btn-warning action-btn"
                               title="Update Account">

                                <i class="bi bi-pencil-square"></i>

                            </a>


                            <% if("ACTIVE".equalsIgnoreCase(sta)) { %>

                            <a href="CloseAccount.jsp?id=<%=id%>"
                               class="btn btn-sm btn-danger action-btn"
                               onclick="return confirmClose('<%=acc%>')"
                               title="Close Account">

                                <i class="bi bi-x-circle"></i>

                            </a>

                            <% } %>

                        </td>

                    </tr>

<%

  }

  rs.close();
  ps.close();
  con.close();

%>

                </tbody>

            </table>

        </div>

    </div>


    <!-- Footer -->

    <div class="footer">

        <p>
            © 2026 Skyline Bank | Banking Management System
        </p>

    </div>

</div>


<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


<script>

// Search Account Records

document.getElementById("searchInput").addEventListener("keyup", function() {

    let searchValue = this.value.toLowerCase();

    let rows = document.querySelectorAll("#accountData tbody tr");

    rows.forEach(function(row) {

        let rowData = row.innerText.toLowerCase();

        row.style.display = rowData.includes(searchValue) ? "" : "none";

    });

});


// Close Account Confirmation

function confirmClose(accountNo) {

    return confirm(
        "Are you sure you want to close Account Number: " +
        accountNo + " ?"
    );

}

</script>

</body>

</html>
