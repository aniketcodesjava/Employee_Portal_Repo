
<%@page import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Skyline Bank | Admin Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* THEME VARIABLES */

:root {
    --body-bg: #f3f6fb;
    --card-bg: #ffffff;
    --text-color: #1e293b;
    --muted-color: #718096;
    --border-color: #edf0f5;
    --table-head: #f1f5f9;
    --table-hover: #f8fafc;
}

body.dark-mode {
    --body-bg: #0f172a;
    --card-bg: #1e293b;
    --text-color: #f1f5f9;
    --muted-color: #a0aec0;
    --border-color: #334155;
    --table-head: #263449;
    --table-hover: #334155;
}

body {
    font-family: 'Inter', sans-serif;
    background: var(--body-bg);
    color: var(--text-color);
    transition: background 0.3s, color 0.3s;
}

/* SIDEBAR */

.sidebar {
    width: 260px;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    background: #101d35;
    color: white;
    padding: 25px 15px;
    transition: 0.3s;
    z-index: 1000;
    overflow-y: auto;
}

.brand {
    font-size: 23px;
    font-weight: 800;
    padding: 5px 12px 30px;
    color: white;
}

.brand span {
    color: #38bdf8;
}

.sidebar h6 {
    color: #8190aa;
    font-size: 11px;
    letter-spacing: 1.5px;
    padding: 10px 15px;
    margin-top: 10px;
}

.sidebar a {
    display: flex;
    align-items: center;
    gap: 13px;
    text-decoration: none;
    color: #b8c5da;
    padding: 13px 15px;
    margin: 5px 0;
    border-radius: 8px;
    font-size: 14px;
    transition: 0.3s;
}

.sidebar a:hover,
.sidebar a.active {
    background: #1d3a63;
    color: #38bdf8;
}

.sidebar a i {
    font-size: 18px;
}

/* MAIN CONTENT */

.main-content {
    margin-left: 260px;
    padding: 25px 30px;
    transition: 0.3s;
}

/* NAVBAR */

.topbar {
    background: var(--card-bg);
    color: var(--text-color);
    padding: 15px 22px;
    border-radius: 12px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 28px;
    box-shadow: 0 3px 15px rgba(0,0,0,0.04);
    border: 1px solid var(--border-color);
    transition: 0.3s;
}

.topbar h5 {
    margin: 0;
    font-weight: 700;
    color: var(--text-color);
}

.admin-info {
    display: flex;
    align-items: center;
    gap: 12px;
}

.admin-avatar {
    width: 42px;
    height: 42px;
    background: #dbeafe;
    color: #1d4ed8;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 21px;
}

/* DARK MODE BUTTON */

.theme-btn {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    border: 1px solid var(--border-color);
    background: var(--body-bg);
    color: var(--text-color);
    font-size: 19px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: 0.3s;
}

.theme-btn:hover {
    background: #2563eb;
    color: white;
    transform: rotate(15deg);
}

/* WELCOME */

.welcome {
    background: linear-gradient(110deg, #102747, #1765a5);
    color: white;
    padding: 28px;
    border-radius: 14px;
    margin-bottom: 28px;
}

.welcome h3 {
    font-weight: 700;
    margin-bottom: 10px;
    color: white;
}

.welcome p {
    color: #d2e5fa;
    margin: 0;
}

/* STATISTIC CARDS */

.stat-card {
    background: var(--card-bg);
    color: var(--text-color);
    padding: 23px;
    border-radius: 12px;
    margin-bottom: 22px;
    box-shadow: 0 3px 15px rgba(0,0,0,0.04);
    transition: 0.3s;
    border: 1px solid var(--border-color);
}

.stat-card:hover {
    transform: translateY(-5px);
}

.stat-icon {
    width: 48px;
    height: 48px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
    font-size: 23px;
    margin-bottom: 18px;
}

.blue { background: #dbeafe; color: #2563eb; }
.green { background: #dcfce7; color: #16a34a; }
.orange { background: #ffedd5; color: #ea580c; }
.purple { background: #f3e8ff; color: #9333ea; }

.stat-card h3 {
    font-size: 27px;
    font-weight: 800;
    color: var(--text-color);
}

.stat-card p {
    color: var(--muted-color);
    font-size: 13px;
    margin-bottom: 0;
}

/* SECTION */

.section-title {
    font-size: 19px;
    font-weight: 700;
    margin: 15px 0 18px;
    color: var(--text-color);
}

/* MODULE CARDS */

.module-card {
    background: var(--card-bg);
    color: var(--text-color);
    padding: 22px;
    border-radius: 12px;
    border: 1px solid var(--border-color);
    height: 100%;
    transition: 0.3s;
}

.module-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 7px 22px rgba(0,0,0,0.07);
}

.module-icon {
    width: 48px;
    height: 48px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 22px;
    background: #eaf2ff;
    color: #2563eb;
    margin-bottom: 15px;
}

.module-card h6 {
    font-weight: 700;
    color: var(--text-color);
}

.module-card p {
    font-size: 12px;
    color: var(--muted-color);
    min-height: 35px;
}

.module-card a {
    font-size: 13px;
    font-weight: 600;
    text-decoration: none;
    color: #3b82f6;
}

/* TABLE */

.table-box {
    background: var(--card-bg);
    color: var(--text-color);
    padding: 22px;
    border-radius: 12px;
    margin-top: 25px;
    border: 1px solid var(--border-color);
}

.table {
    color: var(--text-color);
    margin-bottom: 0;
    --bs-table-bg: var(--card-bg);
    --bs-table-color: var(--text-color);
    --bs-table-border-color: var(--border-color);
    --bs-table-hover-bg: var(--table-hover);
    --bs-table-hover-color: var(--text-color);
}

.table th {
    background: var(--table-head);
    color: var(--muted-color);
    font-size: 12px;
}

.table td {
    font-size: 13px;
    vertical-align: middle;
    background: var(--card-bg);
    color: var(--text-color);
}

.badge-deposit {
    background: #dcfce7;
    color: #15803d;
}

.badge-withdraw {
    background: #fee2e2;
    color: #dc2626;
}

/* FOOTER */

footer {
    text-align: center;
    color: var(--muted-color);
    font-size: 12px;
    margin-top: 35px;
}

/* BOOTSTRAP TEXT OVERRIDE */

.text-secondary {
    color: var(--muted-color) !important;
}

/* RESPONSIVE */

.menu-btn {
    display: none;
    border: none;
    background: transparent;
    color: var(--text-color);
    font-size: 24px;
}

@media(max-width: 992px) {

    .sidebar {
        left: -260px;
    }

    .sidebar.show {
        left: 0;
    }

    .main-content {
        margin-left: 0;
        padding: 18px;
    }

    .menu-btn {
        display: block;
    }
}

@media(max-width: 576px) {

    .topbar {
        padding: 12px;
    }

    .admin-info {
        gap: 7px;
    }

    .theme-btn {
        width: 36px;
        height: 36px;
        font-size: 16px;
    }

    .welcome {
        padding: 20px;
    }
}

</style>
</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar" id="sidebar">

    <div class="brand">
        <i class="bi bi-bank"></i>
        SKYLINE<span>BANK</span>
    </div>

    <h6>MAIN MENU</h6>

    <a href="#" class="active">
        <i class="bi bi-grid"></i> Dashboard
    </a>

    <h6>BANK MANAGEMENT</h6>

    <a href="CustomerManagement.jsp">
        <i class="bi bi-people"></i> Customer Management
    </a>

    <a href="AccountManagement.jsp">
        <i class="bi bi-wallet2"></i> Account Management
    </a>

    <a href="deposit.jsp">
        <i class="bi bi-cash-stack"></i> Deposit Management
    </a>

    <a href="withdraw.jsp">
        <i class="bi bi-currency-exchange"></i> Withdrawal Management
    </a>

    <a href="Transactions.jsp">
        <i class="bi bi-clock-history"></i> Transaction History
    </a>


    <a href="AdminLogout.jsp" onclick="confirmLogout(event)">
        <i class="bi bi-box-arrow-right"></i> Logout
    </a>

</div>

<!-- MAIN CONTENT -->

<div class="main-content">

    <!-- TOP NAVBAR -->

    <div class="topbar">

        <div class="d-flex align-items-center gap-3">

            <button class="menu-btn" onclick="toggleSidebar()">
                <i class="bi bi-list"></i>
            </button>

            <div>
                <h5>Admin Dashboard</h5>
                <small class="text-secondary">Bank Management System</small>
            </div>

        </div>

        <div class="admin-info">

            <!-- DARK MODE BUTTON -->

            <button class="theme-btn"
                    id="themeToggle"
                    onclick="toggleTheme()"
                    title="Toggle Dark Mode"
                    aria-label="Toggle Dark Mode">

                <i class="bi bi-moon-stars-fill" id="themeIcon"></i>

            </button>

            <div class="text-end d-none d-sm-block">

                <strong style="font-size:13px;">

                    <h5>
                    <%
                        String hs1 = (String)session.getAttribute("temp");
                        out.println(hs1);
                    %>
                    </h5>

                </strong>

                <div class="text-secondary" style="font-size:11px;">
                    System Admin
                </div>

            </div>

            <div class="admin-avatar">
                <i class="bi bi-person-fill"></i>
            </div>

        </div>

    </div>

    <%
        String str = (String)session.getAttribute("temp");

        if(str == null) {
            response.sendRedirect("AdminLogin.jsp");
            return;
        }
    %>

    <!-- WELCOME SECTION -->

    <div class="welcome">

        <h3>
            Welcome Back Admin,
            <%
                String hs = (String)session.getAttribute("temp");
                out.println(hs);
            %>
        </h3>

        <p>
            Manage your banking operations, customers and transactions
            from one place.
        </p>

    </div>

    <!-- STATISTICS -->

    <h5 class="section-title">Dashboard Overview</h5>

    <div class="row">

        <div class="col-xl-3 col-md-6">
            <div class="stat-card">
                <div class="stat-icon blue">
                    <i class="bi bi-people-fill"></i>
                </div>
                
                <%
                 int totalCustomer=0;
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
              PreparedStatement ps=con.prepareStatement("select count(id) from holder"); 
              ResultSet rs=ps.executeQuery();
              if(rs.next())
              {
            	  totalCustomer=rs.getInt(1);
              }               
                %>
               
               <h1><%=totalCustomer %></h1> 
                <p>Total Customers</p>
            </div>
        </div>

        <div class="col-xl-3 col-md-6">
            <div class="stat-card">
                <div class="stat-icon green">
                    <i class="bi bi-wallet-fill"></i>
                </div>
                
                
                 <%
                 int totalAccount=0;
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
              PreparedStatement ps1=con1.prepareStatement("select count(accId) from account"); 
              ResultSet rs1=ps1.executeQuery();
              if(rs1.next())
              {
            	  totalAccount=rs1.getInt(1);
              }               
                %>
                
                <h1><%=totalAccount%></h1>
                <p>Total Bank Accounts</p>
            </div>
        </div>

        <div class="col-xl-3 col-md-6">
            <div class="stat-card">
                <div class="stat-icon orange">
                    <i class="bi bi-arrow-left-right"></i>
                </div>
                
                  <%
                 int totalTransaction=0;
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
              PreparedStatement ps2=con1.prepareStatement("select count(transaction_id) from transactions"); 
              ResultSet rs2=ps2.executeQuery();
              if(rs2.next())
              {
            	  totalTransaction=rs2.getInt(1);
              }               
                %>
                
                
                <h1><%=totalTransaction %></h1>
                <p>Total Transactions</p>
            </div>
        </div>

    </div>

<!-- JAVASCRIPT -->

<script>

/* SIDEBAR TOGGLE */

function toggleSidebar() {

    document.getElementById("sidebar")
            .classList.toggle("show");

}

/* DARK MODE / LIGHT MODE */

function applyTheme(theme) {

    const icon = document.getElementById("themeIcon");

    if (theme === "dark") {

        document.body.classList.add("dark-mode");

        icon.className = "bi bi-sun-fill";

    } else {

        document.body.classList.remove("dark-mode");

        icon.className = "bi bi-moon-stars-fill";

    }

}

/* TOGGLE THEME */

function toggleTheme() {

    const isDark = document.body.classList.contains("dark-mode");

    const newTheme = isDark ? "light" : "dark";

    applyTheme(newTheme);

    localStorage.setItem("adminTheme", newTheme);

}

/* LOAD SAVED THEME */

document.addEventListener("DOMContentLoaded", function() {

    const savedTheme = localStorage.getItem("adminTheme") || "light";

    applyTheme(savedTheme);

});

/* LOGOUT CONFIRMATION */

function confirmLogout(event) {

    event.preventDefault();

    let confirmAction = confirm(
        "Are you sure you want to logout?"
    );

    if(confirmAction) {

        window.location.href = "AdminLogout.jsp";

    }

}

/* ACTIVE MENU SELECTION */

let menuLinks = document.querySelectorAll(".sidebar a");

menuLinks.forEach(function(link) {

    link.addEventListener("click", function() {

        menuLinks.forEach(function(item) {
            item.classList.remove("active");
        });

        this.classList.add("active");

    });

});

</script>

</body>
</html>
