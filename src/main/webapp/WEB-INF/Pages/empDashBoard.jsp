
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Management Dashboard</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet">

<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    background: #f4f7fb;
    color: #202633;
    overflow-x: hidden;
}


/* ================= SIDEBAR ================= */

.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    width: 250px;
    height: 100vh;
    background: linear-gradient(180deg, #111827, #1e293b);
    padding: 25px 15px;
    z-index: 1000;
    transition: 0.4s;
}

.logo {
    color: white;
    font-size: 23px;
    font-weight: 700;
    text-align: center;
    margin-bottom: 35px;
}

.logo i {
    color: #38bdf8;
    margin-right: 8px;
}

.menu-title {
    color: #64748b;
    font-size: 11px;
    padding-left: 15px;
    margin-bottom: 10px;
    text-transform: uppercase;
}

.sidebar a {
    display: flex;
    align-items: center;
    color: #cbd5e1;
    text-decoration: none;
    padding: 13px 15px;
    margin: 7px 0;
    border-radius: 12px;
    transition: 0.3s;
}

.sidebar a i {
    width: 28px;
    font-size: 17px;
}

.sidebar a:hover,
.sidebar a.active {
    background: linear-gradient(90deg, #2563eb, #38bdf8);
    color: white;
    transform: translateX(5px);
    box-shadow: 0 8px 20px rgba(37,99,235,0.3);
}

.logout {
    position: absolute;
    bottom: 20px;
    left: 15px;
    right: 15px;
}


/* ================= MAIN ================= */

.main {
    margin-left: 250px;
    padding: 25px;
    transition: 0.4s;
}


/* ================= TOPBAR ================= */

.topbar {
    background: white;
    padding: 15px 22px;
    border-radius: 18px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 5px 25px rgba(0,0,0,0.05);
    margin-bottom: 25px;
}

.welcome h4 {
    font-weight: 700;
    margin-bottom: 3px;
}

.welcome p {
    color: #94a3b8;
    font-size: 13px;
    margin: 0;
}

.top-actions {
    display: flex;
    align-items: center;
    gap: 18px;
}

.search-box {
    position: relative;
}

.search-box input {
    border: none;
    background: #f1f5f9;
    padding: 10px 15px 10px 38px;
    border-radius: 25px;
    outline: none;
    width: 220px;
}

.search-box i {
    position: absolute;
    left: 14px;
    top: 12px;
    color: #64748b;
}

.notification {
    position: relative;
    font-size: 20px;
    cursor: pointer;
}

.notification span {
    position: absolute;
    top: -8px;
    right: -8px;
    background: #ef4444;
    color: white;
    width: 17px;
    height: 17px;
    border-radius: 50%;
    font-size: 9px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.profile {
    display: flex;
    align-items: center;
    gap: 10px;
}

.profile img {
    width: 43px;
    height: 43px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid #dbeafe;
}

.profile strong {
    font-size: 13px;
}

.profile small {
    display: block;
    color: #94a3b8;
}


/* ================= STAT CARDS ================= */

.stat-card {
    border: none;
    border-radius: 18px;
    padding: 22px;
    background: white;
    position: relative;
    overflow: hidden;
    box-shadow: 0 8px 30px rgba(0,0,0,0.05);
    transition: 0.4s;
    animation: slideUp 0.7s ease;
}

.stat-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.1);
}

.stat-card::after {
    content: "";
    position: absolute;
    width: 90px;
    height: 90px;
    right: -30px;
    top: -30px;
    border-radius: 50%;
    background: rgba(255,255,255,0.2);
}

.icon-box {
    width: 55px;
    height: 55px;
    border-radius: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    font-size: 22px;
    margin-bottom: 15px;
}

.blue {
    background: linear-gradient(135deg,#2563eb,#38bdf8);
}

.green {
    background: linear-gradient(135deg,#059669,#34d399);
}

.orange {
    background: linear-gradient(135deg,#ea580c,#fb923c);
}

.purple {
    background: linear-gradient(135deg,#7c3aed,#a78bfa);
}

.stat-card h2 {
    font-size: 30px;
    font-weight: 700;
    margin-bottom: 2px;
}

.stat-card p {
    color: #64748b;
    margin: 0;
}

.growth {
    margin-top: 10px;
    font-size: 12px;
    color: #16a34a;
}


/* ================= CHART CARDS ================= */

.chart-card {
    background: white;
    border-radius: 18px;
    padding: 22px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.05);
    margin-top: 25px;
    animation: fadeIn 1s ease;
}

.chart-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.chart-header h5 {
    font-weight: 600;
}

.chart-header span {
    color: #64748b;
    font-size: 12px;
}


/* ================= EMPLOYEE TABLE ================= */

.employee-card {
    background: white;
    border-radius: 18px;
    padding: 22px;
    margin-top: 25px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.05);
}

.employee-title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.employee-title h5 {
    font-weight: 600;
}

.view-btn {
    background: #eff6ff;
    color: #2563eb;
    border: none;
    padding: 8px 15px;
    border-radius: 10px;
    font-size: 12px;
}

.table {
    vertical-align: middle;
}

.table th {
    color: #64748b;
    font-size: 12px;
    font-weight: 500;
    border: none;
}

.table td {
    font-size: 13px;
    border-color: #f1f5f9;
}

.employee-info {
    display: flex;
    align-items: center;
    gap: 10px;
}

.employee-info img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
}

.status {
    padding: 5px 10px;
    border-radius: 20px;
    font-size: 10px;
}

.active-status {
    background: #dcfce7;
    color: #15803d;
}

.leave-status {
    background: #fef3c7;
    color: #b45309;
}


/* ================= PROGRESS ================= */

.progress {
    height: 7px;
    border-radius: 10px;
}

.progress-bar {
    border-radius: 10px;
}


/* ================= QUICK ACTION ================= */

.quick-card {
    background: linear-gradient(135deg,#2563eb,#7c3aed);
    color: white;
    border-radius: 18px;
    padding: 25px;
    margin-top: 25px;
    position: relative;
    overflow: hidden;
}

.quick-card::before {
    content: "";
    position: absolute;
    width: 150px;
    height: 150px;
    border: 30px solid rgba(255,255,255,0.08);
    border-radius: 50%;
    right: -50px;
    top: -50px;
}

.quick-card h5 {
    font-weight: 600;
}

.quick-btn {
    border: none;
    background: white;
    color: #2563eb;
    padding: 10px 18px;
    border-radius: 10px;
    font-size: 12px;
    font-weight: 600;
    margin-top: 15px;
    transition: 0.3s;
}

.quick-btn:hover {
    transform: scale(1.05);
}


/* ================= ANIMATIONS ================= */

@keyframes slideUp {

    from {
        opacity: 0;
        transform: translateY(30px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }

}

@keyframes fadeIn {

    from {
        opacity: 0;
    }

    to {
        opacity: 1;
    }

}


/* ================= RESPONSIVE ================= */

@media(max-width: 992px) {

    .sidebar {
        width: 80px;
    }

    .sidebar .logo span,
    .sidebar a span,
    .menu-title {
        display: none;
    }

    .sidebar a {
        justify-content: center;
    }

    .sidebar a i {
        width: auto;
    }

    .main {
        margin-left: 80px;
    }

}

@media(max-width: 768px) {

    .search-box {
        display: none;
    }

    .profile div {
        display: none;
    }

}

</style>

</head>


<body>


<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <div class="logo">
        <i class="fa-solid fa-users"></i>
        <span>EMPLOYEE HUB</span>
    </div>

    <div class="menu-title">Main Menu</div>

    <a href="#" class="active">
        <i class="fa-solid fa-chart-pie"></i>
        <span>Dashboard</span>
    </a>

    <a href="#">
        <i class="fa-solid fa-users"></i>
        <span>Employees</span>
    </a>

    <a href="#">
        <i class="fa-solid fa-user-plus"></i>
        <span>Add Employee</span>
    </a>

    <a href="#">
        <i class="fa-solid fa-building"></i>
        <span>Departments</span>
    </a>

    <a href="#">
        <i class="fa-solid fa-calendar-check"></i>
        <span>Attendance</span>
    </a>

    <a href="#">
        <i class="fa-solid fa-money-check-dollar"></i>
        <span>Payroll</span>
    </a>

    <a href="#">
        <i class="fa-solid fa-chart-line"></i>
        <span>Reports</span>
    </a>

    <div class="menu-title mt-4">Settings</div>

    <a href="#">
        <i class="fa-solid fa-gear"></i>
        <span>Settings</span>
    </a>

    <a href="#" class="logout">
        <i class="fa-solid fa-right-from-bracket"></i>
        <span>Logout</span>
    </a>

</div>


<!-- ================= MAIN ================= -->

<div class="main">


<!-- ================= TOPBAR ================= -->

<div class="topbar">

    <div class="welcome">

        <h4>Good Morning, Admin 👋</h4>

        <p>Here's what's happening with your employees today.</p>

    </div>


    <div class="top-actions">

        <div class="search-box">

            <i class="fa-solid fa-search"></i>

            <input type="text"
                   placeholder="Search employee...">

        </div>


        <div class="notification">

            <i class="fa-regular fa-bell"></i>

            <span>4</span>

        </div>


        <div class="profile">

            <img src="https://i.pravatar.cc/100?img=12">

            <div>

                <strong>Admin</strong>

                <small>Administrator</small>

            </div>

        </div>

    </div>

</div>


<!-- ================= STATISTICS ================= -->

<div class="row g-4">


    <div class="col-xl-3 col-md-6">

        <div class="stat-card">

            <div class="icon-box blue">

                <i class="fa-solid fa-users"></i>

            </div>

            <h2>248</h2>

            <p>Total Employees</p>

            <div class="growth">

                <i class="fa-solid fa-arrow-up"></i>

                12% from last month

            </div>

        </div>

    </div>


    <div class="col-xl-3 col-md-6">

        <div class="stat-card">

            <div class="icon-box green">

                <i class="fa-solid fa-user-check"></i>

            </div>

            <h2>218</h2>

            <p>Active Employees</p>

            <div class="growth">

                <i class="fa-solid fa-arrow-up"></i>

                8% from last month

            </div>

        </div>

    </div>


    <div class="col-xl-3 col-md-6">

        <div class="stat-card">

            <div class="icon-box orange">

                <i class="fa-solid fa-user-clock"></i>

            </div>

            <h2>18</h2>

            <p>On Leave</p>

            <div class="growth">

                <i class="fa-solid fa-arrow-down"></i>

                3% from last month

            </div>

        </div>

    </div>


    <div class="col-xl-3 col-md-6">

        <div class="stat-card">

            <div class="icon-box purple">

                <i class="fa-solid fa-user-plus"></i>

            </div>

            <h2>12</h2>

            <p>New Employees</p>

            <div class="growth">

                <i class="fa-solid fa-arrow-up"></i>

                18% from last month

            </div>

        </div>

    </div>

</div>



<!-- ================= GRAPHS ================= -->

<div class="row">


    <!-- PERFORMANCE GRAPH -->

    <div class="col-lg-8">

        <div class="chart-card">

            <div class="chart-header">

                <div>

                    <h5>Employee Performance</h5>

                    <span>Monthly employee performance overview</span>

                </div>

                <i class="fa-solid fa-chart-line text-primary"></i>

            </div>

            <canvas id="performanceChart"
                    height="120"></canvas>

        </div>

    </div>


    <!-- DEPARTMENT GRAPH -->

    <div class="col-lg-4">

        <div class="chart-card">

            <div class="chart-header">

                <div>

                    <h5>Departments</h5>

                    <span>Employee distribution</span>

                </div>

                <i class="fa-solid fa-building text-primary"></i>

            </div>

            <canvas id="departmentChart"
                    height="250"></canvas>

        </div>

    </div>

</div>



<!-- ================= EMPLOYEE TABLE ================= -->

<div class="employee-card">

    <div class="employee-title">

        <div>

            <h5>Recent Employees</h5>

            <small class="text-muted">
                Recently added employees
            </small>

        </div>

        <button class="view-btn">
            View All
        </button>

    </div>


    <div class="table-responsive">

        <table class="table">

            <thead>

                <tr>

                    <th>EMPLOYEE</th>

                    <th>DEPARTMENT</th>

                    <th>POSITION</th>

                    <th>PERFORMANCE</th>

                    <th>STATUS</th>

                </tr>

            </thead>


            <tbody>


                <tr>

                    <td>

                        <div class="employee-info">

                            <img src="https://i.pravatar.cc/100?img=11">

                            <div>

                                <strong>Rahul Patil</strong>

                                <small class="d-block text-muted">
                                    EMP001
                                </small>

                            </div>

                        </div>

                    </td>

                    <td>IT Department</td>

                    <td>Java Developer</td>

                    <td style="width:150px">

                        <div class="progress">

                            <div class="progress-bar"
                                 style="width:92%">
                            </div>

                        </div>

                        <small>92%</small>

                    </td>

                    <td>

                        <span class="status active-status">
                            Active
                        </span>

                    </td>

                </tr>


                <tr>

                    <td>

                        <div class="employee-info">

                            <img src="https://i.pravatar.cc/100?img=5">

                            <div>

                                <strong>Priya Sharma</strong>

                                <small class="d-block text-muted">
                                    EMP002
                                </small>

                            </div>

                        </div>

                    </td>

                    <td>HR</td>

                    <td>HR Manager</td>

                    <td>

                        <div class="progress">

                            <div class="progress-bar"
                                 style="width:85%">
                            </div>

                        </div>

                        <small>85%</small>

                    </td>

                    <td>

                        <span class="status active-status">
                            Active
                        </span>

                    </td>

                </tr>


                <tr>

                    <td>

                        <div class="employee-info">

                            <img src="https://i.pravatar.cc/100?img=8">

                            <div>

                                <strong>Akash More</strong>

                                <small class="d-block text-muted">
                                    EMP003
                                </small>

                            </div>

                        </div>

                    </td>

                    <td>Finance</td>

                    <td>Accountant</td>

                    <td>

                        <div class="progress">

                            <div class="progress-bar"
                                 style="width:78%">
                            </div>

                        </div>

                        <small>78%</small>

                    </td>

                    <td>

                        <span class="status leave-status">
                            On Leave
                        </span>

                    </td>

                </tr>


                <tr>

                    <td>

                        <div class="employee-info">

                            <img src="https://i.pravatar.cc/100?img=32">

                            <div>

                                <strong>Neha Joshi</strong>

                                <small class="d-block text-muted">
                                    EMP004
                                </small>

                            </div>

                        </div>

                    </td>

                    <td>Marketing</td>

                    <td>Marketing Executive</td>

                    <td>

                        <div class="progress">

                            <div class="progress-bar"
                                 style="width:88%">
                            </div>

                        </div>

                        <small>88%</small>

                    </td>

                    <td>

                        <span class="status active-status">
                            Active
                        </span>

                    </td>

                </tr>


            </tbody>

        </table>

    </div>

</div>



<!-- ================= QUICK ACTION ================= -->

<div class="row">

    <div class="col-md-8">

        <div class="quick-card">

            <h5>
                <i class="fa-solid fa-bolt"></i>
                Quick Actions
            </h5>

            <p>
                Manage your employees quickly from one place.
            </p>

            <button class="quick-btn">

                <i class="fa-solid fa-user-plus"></i>
                Add Employee

            </button>

            <button class="quick-btn ms-2">

                <i class="fa-solid fa-file-export"></i>
                Generate Report

            </button>

        </div>

    </div>


    <div class="col-md-4">

        <div class="chart-card">

            <div class="chart-header">

                <h5>Attendance</h5>

                <i class="fa-solid fa-calendar-check text-success"></i>

            </div>

            <h2>94%</h2>

            <p class="text-muted">
                Today's attendance
            </p>

            <div class="progress">

                <div class="progress-bar bg-success"
                     style="width:94%">
                </div>

            </div>

        </div>

    </div>

</div>


</div>



<!-- ================= CHART JAVASCRIPT ================= -->

<script>


// PERFORMANCE CHART

const performanceCtx =
document.getElementById('performanceChart');

new Chart(performanceCtx, {

    type: 'line',

    data: {

        labels: [
            'Jan',
            'Feb',
            'Mar',
            'Apr',
            'May',
            'Jun',
            'Jul',
            'Aug'
        ],

        datasets: [

            {

                label: 'Performance',

                data: [
                    65,
                    72,
                    68,
                    78,
                    82,
                    79,
                    88,
                    92
                ],

                borderWidth: 3,

                tension: 0.4,

                fill: true

            }

        ]

    },

    options: {

        responsive: true,

        plugins: {

            legend: {
                display: false
            }

        },

        scales: {

            y: {

                beginAtZero: true,

                max: 100

            }

        }

    }

});



// DEPARTMENT CHART

const departmentCtx =
document.getElementById('departmentChart');

new Chart(departmentCtx, {

    type: 'doughnut',

    data: {

        labels: [

            'IT',
            'HR',
            'Finance',
            'Marketing',
            'Sales'

        ],

        datasets: [

            {

                data: [
                    85,
                    35,
                    42,
                    31,
                    55
                ],

                borderWidth: 2

            }

        ]

    },

    options: {

        responsive: true,

        cutout: '70%',

        plugins: {

            legend: {

                position: 'bottom'

            }

        }

    }

});

</script>


</body>

</html>
