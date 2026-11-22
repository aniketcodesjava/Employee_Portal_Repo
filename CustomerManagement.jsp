
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Customer Management</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
rel="stylesheet">

<style>

body {
    background: #f4f7fb;
    font-family: Arial, sans-serif;
}

.main-container {
    margin: 40px auto;
    max-width: 1250px;
}

.page-title {
    color: #17365d;
    font-weight: bold;
}

.customer-card {
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.08);
}

.search-box {
    max-width: 350px;
}

.table thead {
    background: #17365d;
    color: white;
}

.table thead th {
    background: #17365d;
    color: white;
    white-space: nowrap;
}

.table td {
    vertical-align: middle;
}

.btn-add {
    background: #198754;
    color: white;
}

.btn-add:hover {
    background: #146c43;
    color: white;
}

/* Same Size Edit and Delete Buttons */
.action-btn {
    width: 100px;
    height: 35px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 5px;
    margin: 3px;
    font-size: 13px;
    white-space: nowrap;
}

</style>

</head>

<body>

<div class="container-fluid main-container">

    <!-- Page Heading -->

    <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-3">

        <div>

            <h2 class="page-title">
                <i class="bi bi-people-fill"></i>
                Customer Management
            </h2>

            <p class="text-muted mb-0">
                View, search and manage customer details
            </p>

        </div>

        <!-- Add Customer Button -->

        <a href="holderRegister.jsp" class="btn btn-add">

            <i class="bi bi-person-plus-fill"></i>
            Add Customer

        </a>

    </div>


    <div class="customer-card">

        <!-- Search Bar -->

        <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-3">

            <h5 class="mb-0">
                Customer List
            </h5>

            <div class="input-group search-box">

                <span class="input-group-text">
                    <i class="bi bi-search"></i>
                </span>

                <input type="text"
                       id="searchInput"
                       class="form-control"
                       placeholder="Search customer...">

            </div>

        </div>


        <!-- Customer Table -->

        <div class="table-responsive">

            <table class="table table-bordered table-hover text-center"
                   id="customerTable">

                <thead>

                    <tr>

                        <th>Id</th>
                        <th>Name</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Mobile</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Identity Type</th>
                        <th>Identity Number</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

<%

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/bankmanagement",
    "root",
    "123456"
);

PreparedStatement ps = con.prepareStatement("select * from holder");

ResultSet rs = ps.executeQuery();

while(rs.next())
{

%>

                    <tr>

                        <td><%= rs.getString(1) %></td>

                        <td><%= rs.getString(2) %></td>

                        <td><%= rs.getString(3) %></td>

                        <td><%= rs.getString(4) %></td>

                        <td><%= rs.getString(5) %></td>

                        <td><%= rs.getString(6) %></td>

                        <td><%= rs.getString(7) %></td>

                        <td><%= rs.getString(8) %></td>

                        <td><%= rs.getString(9) %></td>

                        <td>

                            <!-- Edit Button -->

                            <a href="Update.jsp?id=<%= rs.getString(1) %>"
                               class="btn btn-sm btn-primary action-btn">

                                <i class="bi bi-pencil-square"></i>
                                Edit

                            </a>

                            <!-- Delete Button -->

                            <a href="Delete.jsp?id=<%= rs.getString(1) %>"
                               class="btn btn-sm btn-danger action-btn"
                               onclick="return confirm('Are you sure you want to delete this customer?');">

                                <i class="bi bi-trash"></i>
                                Delete

                            </a>

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

            <p id="noData"
               class="text-center text-danger mt-3"
               style="display:none;">

                No customer found!

            </p>

        </div>

    </div>

</div>


<!-- JavaScript Search -->

<script>

document.getElementById("searchInput").addEventListener("keyup", function() {

    let searchValue = this.value.toLowerCase();

    let table = document.getElementById("customerTable");

    let rows = table.getElementsByTagName("tbody")[0]
                    .getElementsByTagName("tr");

    let found = 0;

    for(let i = 0; i < rows.length; i++) {

        let rowText = rows[i].innerText.toLowerCase();

        if(rowText.includes(searchValue)) {

            rows[i].style.display = "";
            found++;

        } else {

            rows[i].style.display = "none";

        }

    }

    document.getElementById("noData").style.display =
        found === 0 ? "block" : "none";

});

</script>

</body>
</html>