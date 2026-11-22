
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Transaction History | Skyline Bank</title>

<!-- Bootstrap 5.3.3 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
rel="stylesheet">

<style>

body {
    background: #f1f5f9;
    font-family: 'Segoe UI', sans-serif;
}

.main-container {
    padding: 40px 20px;
}

.page-header {
    background: linear-gradient(135deg, #0f172a, #1e40af);
    color: white;
    padding: 30px;
    border-radius: 15px;
    margin-bottom: 30px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.12);
}

.page-header h2 {
    font-weight: 700;
    margin-bottom: 8px;
}

.page-header p {
    margin: 0;
    color: #cbd5e1;
}

.table-card {
    background: white;
    border-radius: 15px;
    padding: 25px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.07);
}

.table-title {
    font-size: 20px;
    font-weight: 700;
    color: #0f172a;
    margin-bottom: 20px;
}

.custom-table {
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
}

.custom-table thead th {
    background: #0f172a;
    color: white;
    padding: 16px 14px;
    font-size: 13px;
    white-space: nowrap;
    border: none;
}

.custom-table tbody td {
    padding: 15px 14px;
    vertical-align: middle;
    font-size: 14px;
    color: #334155;
    border-bottom: 1px solid #e2e8f0;
}

.custom-table tbody tr:hover {
    background: #eff6ff;
    transition: 0.3s;
}

.custom-table tbody tr:last-child td {
    border-bottom: none;
}

.deposit-badge {
    background: #dcfce7;
    color: #15803d;
    padding: 6px 12px;
    border-radius: 20px;
    font-weight: 600;
    font-size: 12px;
}

.withdraw-badge {
    background: #fee2e2;
    color: #dc2626;
    padding: 6px 12px;
    border-radius: 20px;
    font-weight: 600;
    font-size: 12px;
}

.amount-text {
    font-weight: 700;
    color: #0f172a;
}

.transaction-id {
    font-weight: 700;
    color: #2563eb;
}

.reference-text {
    color: #64748b;
    font-size: 13px;
}

.empty-message {
    padding: 35px !important;
    text-align: center;
    color: #64748b !important;
}

@media(max-width:768px) {

    .main-container {
        padding: 20px 10px;
    }

    .page-header {
        padding: 22px;
    }

    .table-card {
        padding: 15px;
    }

}

</style>

</head>

<body>

<div class="container-fluid main-container">

    <!-- Page Header -->
    <div class="page-header">

        <h2>
            <i class="bi bi-arrow-left-right me-2"></i>
            Transaction History
        </h2>

        <p>Skyline Bank | View all account transactions</p>

    </div>


    <!-- Transaction Table -->
    <div class="table-card">

        <div class="table-title">
            <i class="bi bi-clock-history me-2 text-primary"></i>
            All Transactions
        </div>

        <div class="table-responsive">

        <table class="table custom-table">

        <thead>

        <tr>

            <th>Transaction Id</th>
            <th>AccountId</th>
            <th>Transaction Type</th>
            <th>Amount</th>
            <th>Transaction Date</th>
            <th>Description</th>
            <th>Reference Number</th>

        </tr>

        </thead>

        <tbody>

<%

    int s1=0;

    String s2="",s3="",s4="",s5="",s6="",s7="";

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/bankmanagement",
        "root",
        "123456"
    );

    PreparedStatement ps=con.prepareStatement(
        "select * from transactions"
    );

    ResultSet rs=ps.executeQuery();

    while(rs.next())

    {

        s1=rs.getInt(1);

        s2=rs.getString(2);

        s3=rs.getString(3);

        s4=rs.getString(4);

        s5=rs.getString(5);

        s6=rs.getString(6);

        s7=rs.getString(7);

%>

        <tr>

            <td>
                <span class="transaction-id">
                    #<%=s1 %>
                </span>
            </td>

            <td>
                <%=s2 %>
            </td>

            <td>

                <% if(s3.equalsIgnoreCase("DEPOSITE") ||
                      s3.equalsIgnoreCase("DEPOSIT")) { %>

                    <span class="deposit-badge">
                        <i class="bi bi-arrow-down-circle me-1"></i>
                        <%=s3 %>
                    </span>

                <% } else { %>

                    <span class="withdraw-badge">
                        <i class="bi bi-arrow-up-circle me-1"></i>
                        <%=s3 %>
                    </span>

                <% } %>

            </td>

            <td>
                <span class="amount-text">
                    ₹ <%=s4 %>
                </span>
            </td>

            <td>
                <i class="bi bi-calendar3 me-1 text-secondary"></i>
                <%=s5 %>
            </td>

            <td>
                <%=s6 %>
            </td>

            <td>
                <span class="reference-text">
                    <%=s7 %>
                </span>
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

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
