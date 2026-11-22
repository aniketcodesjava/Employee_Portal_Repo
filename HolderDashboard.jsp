
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank | Holder Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>

/* =========================
   GLOBAL VARIABLES
========================= */

:root {
    --body-bg: #f3f6fb;
    --card-bg: #ffffff;
    --text-color: #1e293b;
    --muted-color: #718096;
    --border-color: #e8edf4;
    --sidebar-bg: #101d35;
    --primary: #2563eb;
    --table-head: #f1f5f9;
}

body.dark-mode {
    --body-bg: #101827;
    --card-bg: #1e293b;
    --text-color: #f1f5f9;
    --muted-color: #a0aec0;
    --border-color: #334155;
    --sidebar-bg: #0b1220;
    --primary: #60a5fa;
    --table-head: #263449;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Inter', sans-serif;
    background: var(--body-bg);
    color: var(--text-color);
    transition: 0.3s;
}

a {
    text-decoration: none;
}

/* =========================
   SIDEBAR
========================= */

.sidebar {
    width: 260px;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    background: var(--sidebar-bg);
    padding: 25px 15px;
    color: white;
    z-index: 1000;
    overflow-y: auto;
    transition: 0.3s;
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
    color: #8293ac;
    font-size: 11px;
    letter-spacing: 1.5px;
    padding: 10px 15px;
    margin-top: 12px;
}

.sidebar a {
    display: flex;
    align-items: center;
    gap: 13px;
    color: #b8c5da;
    padding: 13px 15px;
    margin: 5px 0;
    border-radius: 8px;
    font-size: 13px;
    transition: 0.3s;
}

.sidebar a i {
    font-size: 18px;
}

.sidebar a:hover,
.sidebar a.active {
    background: #1d3a63;
    color: #38bdf8;
}

/* =========================
   MAIN CONTENT
========================= */

.main-content {
    margin-left: 260px;
    padding: 25px 30px;
    transition: 0.3s;
}

/* =========================
   TOP NAVBAR
========================= */

.topbar {
    background: var(--card-bg);
    padding: 15px 22px;
    border: 1px solid var(--border-color);
    border-radius: 12px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 25px;
}

.topbar h5 {
    font-weight: 700;
    margin: 0;
}

.topbar small {
    color: var(--muted-color);
}

.top-actions {
    display: flex;
    align-items: center;
    gap: 18px;
}

.theme-btn {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    border: 1px solid var(--border-color);
    background: var(--body-bg);
    color: var(--text-color);
    font-size: 19px;
}

.holder-info {
    display: flex;
    align-items: center;
    gap: 10px;
}

.avatar {
    width: 42px;
    height: 42px;
    background: #dbeafe;
    color: #2563eb;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 21px;
}

.menu-btn {
    display: none;
    background: none;
    border: none;
    font-size: 25px;
    color: var(--text-color);
}

/* =========================
   WELCOME SECTION
========================= */

.welcome {
    background: linear-gradient(110deg, #102747, #1765a5);
    padding: 30px;
    border-radius: 14px;
    color: white;
    margin-bottom: 28px;
}

.welcome h3 {
    font-weight: 800;
    margin-bottom: 10px;
}

.welcome p {
    color: #d2e5fa;
    font-size: 14px;
    margin: 0;
}

.welcome .btn {
    margin-top: 18px;
}

/* =========================
   BALANCE CARD
========================= */

.balance-card {
    background: linear-gradient(120deg, #1e40af, #2563eb);
    padding: 25px;
    border-radius: 14px;
    color: white;
    height: 100%;
}

.balance-card h2 {
    font-size: 32px;
    font-weight: 800;
    margin: 12px 0;
}

.balance-card p {
    font-size: 13px;
    color: #dbeafe;
}

.balance-card .account-number {
    letter-spacing: 2px;
}

/* =========================
   STAT CARDS
========================= */

.stat-card {
    background: var(--card-bg);
    padding: 22px;
    border-radius: 12px;
    border: 1px solid var(--border-color);
    height: 100%;
    transition: 0.3s;
}

.stat-card:hover {
    transform: translateY(-4px);
}

.stat-icon {
    width: 47px;
    height: 47px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
    font-size: 21px;
    margin-bottom: 17px;
}

.blue {
    background: #dbeafe;
    color: #2563eb;
}

.green {
    background: #dcfce7;
    color: #16a34a;
}

.orange {
    background: #ffedd5;
    color: #ea580c;
}

.purple {
    background: #f3e8ff;
    color: #9333ea;
}

.stat-card h4 {
    font-weight: 800;
    margin-bottom: 5px;
}

.stat-card p {
    color: var(--muted-color);
    font-size: 12px;
    margin: 0;
}

/* =========================
   SECTION TITLES
========================= */

.section-title {
    font-size: 19px;
    font-weight: 700;
    margin: 28px 0 18px;
}

/* =========================
   SERVICE CARDS
========================= */

.service-card {
    background: var(--card-bg);
    border: 1px solid var(--border-color);
    border-radius: 12px;
    padding: 23px;
    height: 100%;
    transition: 0.3s;
}

.service-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 7px 22px rgba(0,0,0,0.08);
}

.service-icon {
    width: 50px;
    height: 50px;
    background: #eaf2ff;
    color: #2563eb;
    border-radius: 11px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 23px;
    margin-bottom: 16px;
}

.service-card h6 {
    font-weight: 700;
    margin-bottom: 9px;
}

.service-card p {
    font-size: 12px;
    color: var(--muted-color);
    min-height: 35px;
}

.service-card a {
    color: var(--primary);
    font-size: 13px;
    font-weight: 700;
}

/* =========================
   ACCOUNT DETAILS
========================= */

.content-box {
    background: var(--card-bg);
    border: 1px solid var(--border-color);
    padding: 23px;
    border-radius: 12px;
    height: 100%;
}

.detail-row {
    display: flex;
    justify-content: space-between;
    gap: 12px;
    padding: 13px 0;
    border-bottom: 1px solid var(--border-color);
    font-size: 13px;
}

.detail-row:last-child {
    border-bottom: none;
}

.detail-row span:first-child {
    color: var(--muted-color);
}

.detail-row strong {
    text-align: right;
}

/* =========================
   TRANSACTION TABLE
========================= */

.table-box {
    background: var(--card-bg);
    padding: 22px;
    border: 1px solid var(--border-color);
    border-radius: 12px;
}

.table {
    color: var(--text-color);
    margin-bottom: 0;
}

.table th {
    background: var(--table-head);
    color: var(--muted-color);
    font-size: 12px;
    white-space: nowrap;
}

.table td {
    font-size: 13px;
    vertical-align: middle;
    background: var(--card-bg);
    color: var(--text-color);
}

.deposit-badge {
    background: #dcfce7;
    color: #15803d;
}

.withdraw-badge {
    background: #fee2e2;
    color: #dc2626;
}

/* =========================
   FOOTER
========================= */

footer {
    text-align: center;
    margin-top: 35px;
    color: var(--muted-color);
    font-size: 12px;
    line-height: 2;
}

/* =========================
   RESPONSIVE
========================= */

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
        padding: 13px;
    }

    .top-actions {
        gap: 10px;
    }

    .holder-name {
        display: none;
    }

    .welcome {
        padding: 22px;
    }

    .balance-card h2 {
        font-size: 26px;
    }

}


</style>
</head>

<body>

<!-- =========================
     SIDEBAR
========================= -->

<div class="sidebar" id="sidebar">

    <div class="brand">
        <i class="bi bi-bank"></i>
        SKYLINE<span>BANK</span>
    </div>

    <h6>MAIN MENU</h6>

    <a href="#dashboard" class="active">
        <i class="bi bi-grid"></i>
        Dashboard
    </a>

    <h6>MY BANKING</h6>

    <a href="#profile">
        <i class="bi bi-person-circle"></i>
        My Profile
    </a>

    <a href="#account">
        <i class="bi bi-wallet2"></i>
        My Account
    </a>

    <a href="#deposit">
        <i class="bi bi-cash-stack"></i>
        Cash Deposit
    </a>

    <a href="#withdraw">
        <i class="bi bi-currency-exchange"></i>
        Cash Withdrawal
    </a>

    <a href="#Transactions">
        <i class="bi bi-clock-history"></i>
        Transaction History
    </a>

    

    <a href="HolderLogout.jsp">
        <i class="bi bi-box-arrow-right"></i>
        Logout
    </a>

</div>


  <%
  
    String str1=(String)session.getAttribute("temp");
    if(str1==null)
    {
    	    response.sendRedirect("holderLogin.jsp");
    	    return;
    }
   
   %>
   
   


<!-- =========================
     MAIN CONTENT
========================= -->

<div class="main-content" id="dashboard">

    <!-- TOP NAVBAR -->

    <div class="topbar">

        <div class="d-flex align-items-center gap-3">

            <button class="menu-btn" onclick="toggleSidebar()">
                <i class="bi bi-list"></i>
            </button>

            <div>
                <h5>Holder Dashboard</h5>
                <small>Personal Banking Portal</small>
            </div>

        </div>

        <div class="top-actions">

            <!-- DARK MODE BUTTON -->

            <button class="theme-btn"
                    id="themeToggle"
                    onclick="toggleTheme()"
                    title="Toggle Dark Mode">

                <i class="bi bi-moon-stars-fill" id="themeIcon"></i>

            </button>

            <!-- HOLDER INFO -->

            <div class="holder-info">

                <div class="holder-name text-end">

                    <strong style="font-size:13px;">
                      <h5>
                      <%
                      
                     String str=(String) session.getAttribute("temp");
                     out.println(str);
                      
                      %>
                      </h5>
                    </strong>

                    <div style="font-size:11px;color:var(--muted-color);">
                        Bank Holder
                    </div>

                </div>

                <div class="avatar">
                    <i class="bi bi-person-fill"></i>
                </div>

            </div>

        </div>

    </div>


    <!-- WELCOME SECTION -->

    <div class="welcome">

        <h3>Welcome Back, <%
                      
                     String str2=(String) session.getAttribute("temp");
                     out.println(str2);
                      
                      %>!</h3>

        <p>
            Manage your bank account, check your balance
            and track your transactions easily.
        </p>

        <a href="#account" class="btn btn-light btn-sm mt-3">
            <i class="bi bi-wallet2"></i>
            View My Account
        </a>

    </div>


    <!-- BALANCE AND STATISTICS -->

    <h5 class="section-title mt-0">
        My Banking Overview
    </h5>

    <div class="row g-3">

        <!-- BALANCE -->

        <div class="col-lg-5">

            <div class="balance-card">

                <div class="d-flex justify-content-between">

                    <span>
                        <i class="bi bi-wallet2"></i>
                        Available Balance
                    </span>

                    <i class="bi bi-bank fs-3"></i>

                </div>

                <h2>₹45,000.00</h2>

                <p class="account-number">
                    Account: XXXX XXXX 1234
                </p>

                <p class="mb-0">
                    Savings Account
                </p>

            </div>

        </div>


        <!-- TOTAL DEPOSIT -->

        <div class="col-lg-7">

            <div class="row g-3 h-100">

                <div class="col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon green">
                            <i class="bi bi-arrow-down-left"></i>
                        </div>

                        <h4>₹25,000</h4>

                        <p>Total Deposits</p>

                    </div>

                </div>


                <div class="col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon orange">
                            <i class="bi bi-arrow-up-right"></i>
                        </div>

                        <h4>₹10,000</h4>

                        <p>Total Withdrawals</p>

                    </div>

                </div>


                <div class="col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon blue">
                            <i class="bi bi-credit-card"></i>
                        </div>

                        <h4>1234</h4>

                        <p>Account Last Digits</p>

                    </div>

                </div>


                <div class="col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon purple">
                            <i class="bi bi-check-circle"></i>
                        </div>

                        <h4>Active</h4>

                        <p>Account Status</p>

                    </div>

                </div>

            </div>

        </div>

    </div>


    <!-- HOLDER SERVICES -->

    <h5 class="section-title">
        My Banking Services
    </h5>

    <div class="row g-3">


        <!-- PROFILE -->

        <div class="col-lg-4 col-md-6" id="profile">

            <div class="service-card">

                <div class="service-icon">
                    <i class="bi bi-person-vcard"></i>
                </div>

                <h6>My Profile</h6>

                <p>
                    View and update your personal information,
                    email and contact details.
                </p>

                <a href="myProfile.html">
                    View Profile
                    <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </div>


        <!-- ACCOUNT -->

        <div class="col-lg-4 col-md-6" id="account">

            <div class="service-card">

                <div class="service-icon">
                    <i class="bi bi-wallet2"></i>
                </div>

                <h6>My Account</h6>

                <p>
                    Check account number, account type,
                    opening date and available balance.
                </p>

                <a href="myAccount.html">
                    Account Details
                    <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </div>


        <!-- DEPOSIT -->

        <div class="col-lg-4 col-md-6" id="deposit">

            <div class="service-card">

                <div class="service-icon">
                    <i class="bi bi-cash-stack"></i>
                </div>

                <h6>Cash Deposit</h6>

                <p>
                    Submit a deposit entry and check
                    your updated account balance.
                </p>

                <a href="holderDeposit.html">
                    Deposit Now
                    <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </div>


        <!-- WITHDRAW -->

        <div class="col-lg-4 col-md-6" id="withdraw">

            <div class="service-card">

                <div class="service-icon">
                    <i class="bi bi-currency-exchange"></i>
                </div>

                <h6>Cash Withdrawal</h6>

                <p>
                    Submit a withdrawal request with
                    available balance validation.
                </p>

                <a href="holderWithdraw.html">
                    Withdraw Now
                    <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </div>


        <!-- TRANSACTION HISTORY -->

        <div class="col-lg-4 col-md-6" id="transactions">

            <div class="service-card">

                <div class="service-icon">
                    <i class="bi bi-clock-history"></i>
                </div>

                <h6>Transaction History</h6>

                <p>
                    View your deposit and withdrawal
                    records with transaction dates.
                </p>

                <a href="holderTransactions.html">
                    View History
                    <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </div>


        <!-- ACCOUNT SECURITY -->

        <div class="col-lg-4 col-md-6">

            <div class="service-card">

                <div class="service-icon">
                    <i class="bi bi-shield-lock"></i>
                </div>

                <h6>Account Security</h6>

                <p>
                    Review account security information
                    and password settings.
                </p>

                <a href="changePassword.html">
                    Security Settings
                    <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </div>

    </div>


    <!-- ACCOUNT DETAILS -->

    <h5 class="section-title">
        My Account Information
    </h5>

    <div class="content-box">

        <div class="row g-3">

            <div class="col-md-6">

                <div class="detail-row">
                    <span>Customer Name</span>
                    <strong>Rahul Sharma</strong>
                </div>

                <div class="detail-row">
                    <span>Customer ID</span>
                    <strong>CUST1001</strong>
                </div>

                <div class="detail-row">
                    <span>Account Number</span>
                    <strong>XXXX XXXX 1234</strong>
                </div>

                <div class="detail-row">
                    <span>Account Type</span>
                    <strong>Savings</strong>
                </div>

            </div>


            <div class="col-md-6">

                <div class="detail-row">
                    <span>Email Address</span>
                    <strong>rahul@example.com</strong>
                </div>

                <div class="detail-row">
                    <span>Mobile Number</span>
                    <strong>98XXXXXX10</strong>
                </div>

                <div class="detail-row">
                    <span>Account Status</span>
                    <strong class="text-success">Active</strong>
                </div>

                <div class="detail-row">
                    <span>Opening Date</span>
                    <strong>01-Jan-2026</strong>
                </div>

            </div>

        </div>

    </div>


    <!-- RECENT TRANSACTIONS -->

    <h5 class="section-title">
        Recent Transactions
    </h5>

    <div class="table-box">

        <div class="d-flex justify-content-between align-items-center mb-3">

            <h6 class="fw-bold mb-0">
                My Recent Activity
            </h6>

            <a href="holderTransactions.html"
               class="btn btn-outline-primary btn-sm">

                View All

            </a>

        </div>


        <div class="table-responsive">

            <table class="table table-hover">

                <thead>

                    <tr>
                        <th>Transaction ID</th>
                        <th>Transaction Type</th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th>Status</th>
                    </tr>

                </thead>

                <tbody>

                    <tr>

                        <td>TXN1001</td>

                        <td>
                            <span class="badge deposit-badge">
                                Deposit
                            </span>
                        </td>

                        <td class="text-success fw-bold">
                            + ₹5,000
                        </td>

                        <td>19-Nov-2026</td>

                        <td>
                            <span class="badge bg-success">
                                Success
                            </span>
                        </td>

                    </tr>


                    <tr>

                        <td>TXN1002</td>

                        <td>
                            <span class="badge withdraw-badge">
                                Withdrawal
                            </span>
                        </td>

                        <td class="text-danger fw-bold">
                            - ₹2,000
                        </td>

                        <td>18-Nov-2026</td>

                        <td>
                            <span class="badge bg-success">
                                Success
                            </span>
                        </td>

                    </tr>


                    <tr>

                        <td>TXN1003</td>

                        <td>
                            <span class="badge deposit-badge">
                                Deposit
                            </span>
                        </td>

                        <td class="text-success fw-bold">
                            + ₹8,000
                        </td>

                        <td>17-Nov-2026</td>

                        <td>
                            <span class="badge bg-success">
                                Success
                            </span>
                        </td>

                    </tr>

                </tbody>

            </table>

        </div>

    </div>


    <!-- FOOTER -->

    <footer>

        © 2026 Skyline Bank. All Rights Reserved.

        <br>

        Banking Management System | Educational Project

    </footer>

</div>


<!-- =========================
     JAVASCRIPT
========================= -->

<script>

// SIDEBAR TOGGLE

function toggleSidebar() {

    document.getElementById("sidebar")
            .classList.toggle("show");

}


// DARK MODE TOGGLE

function toggleTheme() {

    document.body.classList.toggle("dark-mode");

    let icon = document.getElementById("themeIcon");

    if(document.body.classList.contains("dark-mode")) {

        icon.className = "bi bi-sun-fill";

        localStorage.setItem("holderTheme", "dark");

    } else {

        icon.className = "bi bi-moon-stars-fill";

        localStorage.setItem("holderTheme", "light");

    }

}


// RESTORE SAVED THEME

window.addEventListener("DOMContentLoaded", function() {

    let savedTheme = localStorage.getItem("holderTheme");

    let icon = document.getElementById("themeIcon");

    if(savedTheme === "dark") {

        document.body.classList.add("dark-mode");

        icon.className = "bi bi-sun-fill";

    }

});


// ACTIVE SIDEBAR MENU

let links = document.querySelectorAll(".sidebar a[href^='#']");

links.forEach(function(link) {

    link.addEventListener("click", function() {

        links.forEach(function(item) {

            item.classList.remove("active");

        });

        this.classList.add("active");

        if(window.innerWidth <= 992) {

            document.getElementById("sidebar")
                    .classList.remove("show");

        }

    });

});

</script>

</body>
</html>
