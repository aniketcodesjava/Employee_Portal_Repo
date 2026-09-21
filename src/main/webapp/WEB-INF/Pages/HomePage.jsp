<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ page isErrorPage="false" %>
<%@ page import="com.aniket.models.Employee1" %>

<%
    Employee1 employee = (Employee1) session.getAttribute("employee");
%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Employee Dashboard</title>

<!-- Bootstrap -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<!-- Bootstrap Icons -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
    rel="stylesheet">

<!-- Google Fonts -->
<link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@400;500;600;700;800&display=swap"
    rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {

    font-family: 'Inter', sans-serif;

    min-height: 100vh;

    background:
        linear-gradient(
            135deg,
            rgba(8,15,35,.94),
            rgba(21,38,74,.82)
        ),
        url("https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=2000&q=85");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;

    color: white;

    overflow-x: hidden;
}


/* ================= BACKGROUND ================= */

body::before {

    content: "";

    position: fixed;

    width: 400px;

    height: 400px;

    border-radius: 50%;

    background: rgba(72,149,239,.12);

    top: 5%;

    left: -120px;

    filter: blur(5px);

    animation: floating 8s ease-in-out infinite;

    z-index: -1;
}

body::after {

    content: "";

    position: fixed;

    width: 350px;

    height: 350px;

    border-radius: 50%;

    background: rgba(155,89,182,.15);

    bottom: -100px;

    right: -80px;

    animation: floating2 10s ease-in-out infinite;

    z-index: -1;
}


@keyframes floating {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(40px);
    }
}


@keyframes floating2 {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-50px);
    }
}


/* ================= SIDEBAR ================= */

.sidebar {

    position: fixed;

    left: 20px;

    top: 20px;

    bottom: 20px;

    width: 245px;

    padding: 25px 15px;

    border-radius: 25px;

    background: rgba(255,255,255,.09);

    backdrop-filter: blur(20px);

    -webkit-backdrop-filter: blur(20px);

    border: 1px solid rgba(255,255,255,.14);

    box-shadow: 0 20px 50px rgba(0,0,0,.25);

    z-index: 1000;
}


.logo {

    text-align: center;

    font-family: 'Poppins', sans-serif;

    font-size: 25px;

    font-weight: 800;

    margin-bottom: 35px;

    letter-spacing: 1px;
}


.logo i {

    color: #62d4ff;

    margin-right: 8px;
}


.nav-link {

    color: rgba(255,255,255,.72);

    padding: 13px 16px;

    border-radius: 14px;

    margin-bottom: 8px;

    display: flex;

    align-items: center;

    gap: 13px;

    transition: .3s;

    text-decoration: none;

    font-weight: 500;
}


.nav-link i {
    font-size: 19px;
}


.nav-link:hover,
.nav-link.active {

    background:
        linear-gradient(
            135deg,
            rgba(70,170,255,.30),
            rgba(100,70,255,.25)
        );

    color: white;

    transform: translateX(5px);

    box-shadow: 0 8px 25px rgba(50,150,255,.12);
}


.logout {

    position: absolute;

    bottom: 20px;

    width: calc(100% - 30px);
}


/* ================= MAIN ================= */

.main {

    margin-left: 285px;

    padding: 25px 35px 40px;
}


/* ================= TOPBAR ================= */

.topbar {

    display: flex;

    align-items: center;

    justify-content: space-between;

    padding: 12px 20px;

    margin-bottom: 25px;

    border-radius: 20px;

    background: rgba(255,255,255,.08);

    backdrop-filter: blur(15px);

    border: 1px solid rgba(255,255,255,.12);
}


.search-box {

    position: relative;

    width: 320px;
}


.search-box i {

    position: absolute;

    left: 15px;

    top: 12px;

    color: #aaa;
}


.search-box input {

    width: 100%;

    background: rgba(255,255,255,.08);

    border: 1px solid rgba(255,255,255,.12);

    color: white;

    border-radius: 12px;

    padding: 10px 15px 10px 42px;

    outline: none;
}


.search-box input::placeholder {
    color: #aaa;
}


.top-actions {

    display: flex;

    align-items: center;

    gap: 18px;
}


.icon-button {

    width: 42px;

    height: 42px;

    border-radius: 50%;

    border: 1px solid rgba(255,255,255,.15);

    background: rgba(255,255,255,.08);

    color: white;

    display: flex;

    align-items: center;

    justify-content: center;

    cursor: pointer;

    transition: .3s;

    position: relative;
}


.icon-button:hover {

    transform: translateY(-3px);

    background: rgba(255,255,255,.16);
}


.notification-dot {

    position: absolute;

    width: 9px;

    height: 9px;

    background: #ff4d6d;

    border-radius: 50%;

    top: 7px;

    right: 7px;

    border: 2px solid #1a2945;
}


/* ================= PROFILE MINI ================= */

.profile-mini {

    display: flex;

    align-items: center;

    gap: 10px;
}


.profile-mini img {

    width: 42px;

    height: 42px;

    object-fit: cover;

    border-radius: 50%;

    border: 2px solid #66d9ff;
}


.profile-mini h6 {

    margin: 0;

    font-weight: 700;
}


.profile-mini small {

    color: #aab6cf;
}


/* ================= HERO ================= */

.hero {

    min-height: 230px;

    border-radius: 28px;

    padding: 35px;

    position: relative;

    overflow: hidden;

    background:
        linear-gradient(
            100deg,
            rgba(38,92,170,.90),
            rgba(86,54,170,.72)
        );

    box-shadow: 0 25px 60px rgba(0,0,0,.20);

    animation: fadeUp .7s ease;
}


.hero::before {

    content: "";

    position: absolute;

    width: 300px;

    height: 300px;

    border-radius: 50%;

    background: rgba(255,255,255,.07);

    right: -80px;

    top: -100px;
}


.hero::after {

    content: "";

    position: absolute;

    width: 180px;

    height: 180px;

    border-radius: 50%;

    background: rgba(255,255,255,.05);

    right: 180px;

    bottom: -100px;
}


.hero-content {

    position: relative;

    z-index: 2;

    max-width: 650px;
}


.hero h1 {

    font-family: 'Poppins', sans-serif;

    font-size: 34px;

    font-weight: 800;

    margin-bottom: 10px;
}


.hero p {

    color: rgba(255,255,255,.78);

    font-size: 15px;

    line-height: 1.7;
}


.hero-btn {

    display: inline-flex;

    align-items: center;

    gap: 8px;

    background: white;

    color: #3159b7;

    padding: 11px 20px;

    border-radius: 12px;

    text-decoration: none;

    font-weight: 700;

    margin-top: 10px;

    transition: .3s;
}


.hero-btn:hover {

    transform: translateY(-4px);

    box-shadow: 0 12px 25px rgba(0,0,0,.2);

    color: #3159b7;
}


/* ================= STATISTICS ================= */

.stats {
    margin-top: 25px;
}


.stat-card {

    position: relative;

    padding: 22px;

    min-height: 145px;

    border-radius: 22px;

    background: rgba(255,255,255,.08);

    border: 1px solid rgba(255,255,255,.12);

    backdrop-filter: blur(18px);

    transition: .35s;

    overflow: hidden;

    animation: fadeUp .8s ease;
}


.stat-card:hover {

    transform: translateY(-8px);

    box-shadow: 0 20px 40px rgba(0,0,0,.22);

    border-color: rgba(255,255,255,.25);
}


.stat-icon {

    width: 48px;

    height: 48px;

    border-radius: 14px;

    display: flex;

    align-items: center;

    justify-content: center;

    background: rgba(255,255,255,.12);

    font-size: 22px;

    margin-bottom: 15px;
}


.stat-card h3 {

    font-size: 28px;

    font-weight: 800;

    margin: 0;
}


.stat-card p {

    color: #aebbd2;

    margin: 3px 0 0;
}


.stat-trend {

    position: absolute;

    right: 18px;

    top: 20px;

    font-size: 12px;

    color: #61e6a8;

    background: rgba(97,230,168,.10);

    padding: 5px 9px;

    border-radius: 20px;
}


/* ================= DASHBOARD CARD ================= */

.dashboard-card {

    background: rgba(255,255,255,.08);

    border: 1px solid rgba(255,255,255,.12);

    border-radius: 22px;

    padding: 23px;

    backdrop-filter: blur(18px);

    margin-top: 25px;

    height: 100%;

    animation: fadeUp 1s ease;
}


.card-heading {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 20px;
}


.card-heading h5 {

    font-weight: 700;

    margin: 0;
}


.card-heading i {
    color: #69d5ff;
}


/* ================= ATTENDANCE ================= */

.attendance-circle {

    width: 150px;

    height: 150px;

    margin: 10px auto 20px;

    border-radius: 50%;

    background:
        conic-gradient(
            #65d8ff 0deg 288deg,
            rgba(255,255,255,.10) 288deg
        );

    display: flex;

    align-items: center;

    justify-content: center;

    position: relative;
}


.attendance-circle::before {

    content: "";

    position: absolute;

    width: 118px;

    height: 118px;

    background: #182a4b;

    border-radius: 50%;
}


.attendance-value {

    position: relative;

    z-index: 2;

    text-align: center;
}


.attendance-value strong {

    display: block;

    font-size: 30px;

    font-weight: 800;
}


.attendance-value span {

    color: #aab7ce;

    font-size: 12px;
}


/* ================= PERFORMANCE ================= */

.progress {

    height: 9px;

    background: rgba(255,255,255,.09);

    border-radius: 20px;
}


.progress-bar {

    border-radius: 20px;

    background:
        linear-gradient(
            90deg,
            #4facfe,
            #9b5cff
        );
}


.performance-number {

    font-size: 40px;

    font-weight: 800;

    font-family: 'Poppins';
}


/* ================= QUICK ACTIONS ================= */

.action-grid {

    display: grid;

    grid-template-columns: repeat(2,1fr);

    gap: 12px;
}


.action-btn {

    text-decoration: none;

    color: white;

    background: rgba(255,255,255,.06);

    border: 1px solid rgba(255,255,255,.08);

    padding: 15px;

    border-radius: 15px;

    transition: .3s;
}


.action-btn:hover {

    color: white;

    background: rgba(255,255,255,.14);

    transform: scale(1.03);
}


.action-btn i {

    font-size: 23px;

    display: block;

    margin-bottom: 8px;

    color: #6bdcff;
}


.action-btn span {

    font-size: 13px;

    font-weight: 600;
}


/* ================= ACTIVITY ================= */

.activity {

    display: flex;

    gap: 15px;

    padding: 13px 0;

    border-bottom: 1px solid rgba(255,255,255,.08);
}


.activity:last-child {
    border-bottom: none;
}


.activity-icon {

    min-width: 40px;

    height: 40px;

    border-radius: 12px;

    display: flex;

    align-items: center;

    justify-content: center;

    background: rgba(95,200,255,.12);

    color: #69d9ff;
}


.activity h6 {

    margin: 0 0 3px;

    font-size: 14px;

    font-weight: 600;
}


.activity small {
    color: #8f9db7;
}


/* ================= PROFILE ================= */

.profile-upload {
    text-align: center;
}


.profile-image-wrapper {

    width: 125px;

    height: 125px;

    margin: 0 auto 15px;

    position: relative;
}


.profile-image-wrapper img {

    width: 125px;

    height: 125px;

    object-fit: cover;

    border-radius: 50%;

    border: 4px solid rgba(255,255,255,.3);

    box-shadow: 0 15px 30px rgba(0,0,0,.25);
}


.camera-button {

    position: absolute;

    bottom: 2px;

    right: 2px;

    width: 38px;

    height: 38px;

    border-radius: 50%;

    background: #4d9fff;

    border: 3px solid #182a4b;

    color: white;

    display: flex;

    align-items: center;

    justify-content: center;

    cursor: pointer;

    transition: .3s;
}


.camera-button:hover {

    transform: scale(1.12);

    background: #7565ff;
}


#imageUpload {
    display: none;
}


/* ================= CLOCK ================= */

.clock {

    font-family: 'Poppins';

    font-size: 24px;

    font-weight: 700;

    letter-spacing: 1px;
}


.date {

    color: #9eacc4;

    font-size: 12px;
}


/* ================= ANIMATION ================= */

@keyframes fadeUp {

    from {

        opacity: 0;

        transform: translateY(25px);
    }

    to {

        opacity: 1;

        transform: translateY(0);
    }
}


/* ================= RESPONSIVE ================= */

@media(max-width:1000px) {

    .sidebar {

        width: 75px;

        padding: 20px 10px;
    }

    .logo span,
    .nav-link span {
        display: none;
    }

    .nav-link {
        justify-content: center;
    }

    .main {

        margin-left: 105px;

        padding: 20px;
    }
}


@media(max-width:768px) {

    .sidebar {

        position: fixed;

        left: 10px;

        right: 10px;

        bottom: 10px;

        top: auto;

        width: auto;

        height: 65px;

        padding: 8px;

        display: flex;

        justify-content: space-around;

        align-items: center;

        border-radius: 20px;
    }

    .logo,
    .logout {
        display: none;
    }

    .nav-link {

        margin: 0;

        padding: 10px;
    }

    .nav-link span {
        display: none;
    }

    .main {

        margin-left: 0;

        padding: 15px;

        padding-bottom: 100px;
    }

    .topbar {

        flex-direction: column;

        gap: 15px;
    }

    .search-box {
        width: 100%;
    }

    .hero {
        padding: 25px;
    }

    .hero h1 {
        font-size: 27px;
    }
}


/* ================= LIGHT MODE ================= */

.light-mode {

    color: #172033;

    background:
        linear-gradient(
            135deg,
            rgba(220,235,255,.94),
            rgba(235,225,255,.90)
        ),
        url("https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=2000&q=85");
}


.light-mode .sidebar,
.light-mode .topbar,
.light-mode .stat-card,
.light-mode .dashboard-card {

    background: rgba(255,255,255,.55);

    border-color: rgba(0,0,0,.08);
}


.light-mode .nav-link {
    color: #34405a;
}


.light-mode .search-box input {

    color: #172033;

    background: rgba(255,255,255,.6);
}


.light-mode .stat-card p,
.light-mode .activity small,
.light-mode .date {

    color: #667085;
}


.light-mode .icon-button {
    color: #172033;
}

</style>

</head>


<body>

  <script>
  
   let message="${message}";
   if(message && message.trim() !== "")
	   {
   alert(message);
	   }
  </script>


  <script>
  
   let msg="${atmsg}";
   if(msg && msg.trim() !=" ")
	   {
	   alert(msg);
	   }
  </script>

<!-- =========================================================
     SIDEBAR
========================================================= -->

<div class="sidebar">

    <div class="logo">

        <i class="bi bi-buildings-fill"></i>

        <span>WorkSphere</span>

    </div>


    <a href="empDashBoard" class="nav-link active">

        <i class="bi bi-grid-1x2-fill"></i>

        <span>Dashboard</span>

    </a>


    <a href="MyProfile" class="nav-link">

        <i class="bi bi-person-vcard-fill"></i>

        <span>My Profile</span>

    </a>


    <a href="Attendance" class="nav-link">

        <i class="bi bi-calendar-check-fill"></i>

        <span>Attendance</span>

    </a>


    <a href="LeaveRequests" class="nav-link">

        <i class="bi bi-calendar-event-fill"></i>

        <span>Leave Request</span>

    </a>


    <a href="showProjects" class="nav-link">

        <i class="bi bi-folder-fill"></i>

        <span>Projects</span>

    </a>



    <a href="MessageBox" class="nav-link">

        <i class="bi bi-chat-left-dots-fill"></i>

        <span>Messages</span>

    </a>


    <a href="PaymentSlip" class="nav-link">

       <i class="bi bi-receipt-cutoff"></i>

        <span>Payment Slip</span>

    </a>
    
    
    <a href="About" class="nav-link">

       <i class="bi bi-receipt-cutoff"></i>

        <span>About Company</span>

    </a>


    <a href="Login" class="nav-link logout">

        <i class="bi bi-box-arrow-right"></i>

        <span>Logout</span>

    </a>

</div>



<!-- =========================================================
     MAIN
========================================================= -->

<div class="main">


    <!-- TOP BAR -->

    <div class="topbar">


        <div class="search-box">

            <i class="bi bi-search"></i>

            <input
                type="text"
                id="searchEmployee"
                placeholder="Search anything...">

        </div>



        <div class="top-actions">


            <!-- CLOCK -->

            <div class="text-end d-none d-md-block">

                <div class="clock" id="clock">
                    00:00:00
                </div>

                <div class="date" id="date">
                    Loading...
                </div>

            </div>



            <!-- THEME -->

            <div
                class="icon-button"
                onclick="toggleTheme()"
                title="Change Theme">

                <i
                    class="bi bi-moon-stars-fill"
                    id="themeIcon">
                </i>

            </div>



            <!-- NOTIFICATION -->

            <div class="icon-button">

                <i class="bi bi-bell-fill"></i>

                <span class="notification-dot"></span>

            </div>



            <!-- PROFILE -->

            <div class="profile-mini">

                <img
                    id="miniProfile"
                    src="https://img.freepik.com/premium-photo/banking-joy-indian-employee-smiling-camera_1077802-108017.jpg"
                    alt="Employee">


                <div class="d-none d-md-block">

                    <h6>

                        <%= employee != null ? employee.getEmpEmail() : "Employee" %>

                    </h6>


                    <small>

                        <%= employee != null ? employee.getEmpDepartment() : "Department" %>

                    </small>

                </div>

            </div>

        </div>

    </div>



    <!-- =====================================================
         HERO
    ====================================================== -->

    <div class="hero">

        <div class="hero-content">

            <p class="mb-2">

                <i class="bi bi-stars"></i>

                Welcome back!

            </p>


            <h1>

                Good Afternoon,

             <%= employee != null ? employee.getEmpName() : "Employee" %>

                👋

            </h1>


            <p>

                Stay focused, keep building great things and make
                today another productive day. Your team's progress
                is looking amazing!

            </p>


            <a href="#" class="hero-btn">

                View My Profile

                <i class="bi bi-arrow-right"></i>

            </a>

        </div>

    </div>



    <!-- =====================================================
         STATISTICS
    ====================================================== -->

    <div class="row g-4 stats">


        <div class="col-xl-3 col-md-6">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="bi bi-calendar-check"></i>

                </div>

                <div class="stat-trend">
                    +5.2%
                </div>

                <h3 class="counter" data-target="92">
                    0
                </h3>

                <p>Attendance %</p>

            </div>

        </div>



        <div class="col-xl-3 col-md-6">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="bi bi-kanban"></i>

                </div>

                <div class="stat-trend">
                    Active
                </div>

                <h3 class="counter" data-target="8">
                    0
                </h3>

                <p>Active Projects</p>

            </div>

        </div>



        <div class="col-xl-3 col-md-6">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="bi bi-check2-circle"></i>

                </div>

                <div class="stat-trend">
                    +12%
                </div>

                <h3 class="counter" data-target="126">
                    0
                </h3>

                <p>Tasks Completed</p>

            </div>

        </div>



        <div class="col-xl-3 col-md-6">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="bi bi-star-fill"></i>

                </div>

                <div class="stat-trend">
                    Excellent
                </div>

                <h3 class="counter" data-target="94">
                    0
                </h3>

                <p>Performance Score</p>

            </div>

        </div>

    </div>



    <!-- =====================================================
         CONTENT ROW
    ====================================================== -->

    <div class="row g-4">


        <!-- ATTENDANCE -->

        <div class="col-lg-4">

            <div class="dashboard-card">

                <div class="card-heading">

                    <h5>

                        <i class="bi bi-clock-history me-2"></i>

                        Today's Attendance

                    </h5>

                    <i class="bi bi-three-dots"></i>

                </div>


                <div class="attendance-circle">

                    <div class="attendance-value">

                        <strong>80%</strong>

                        <span>Present</span>

                    </div>

                </div>


                <div class="d-flex justify-content-between">

                    <div>

                        <small class="text-secondary">
                            Check In
                        </small>

                        <h6 class="mt-1">

                            <i class="bi bi-box-arrow-in-right text-info"></i>

                            09:12 AM

                        </h6>

                    </div>


                    <div class="text-end">

                        <small class="text-secondary">
                            Work Hours
                        </small>

                        <h6 class="mt-1">

                            <i class="bi bi-hourglass-split text-warning"></i>

                            07h 24m

                        </h6>

                    </div>

                </div>


                <button
                    class="btn btn-primary w-100 mt-3"
                    onclick="checkIn(this)">

                    <i class="bi bi-fingerprint me-2"></i>

                    Check In / Check Out

                </button>

            </div>

        </div>



        <!-- PERFORMANCE -->

        <div class="col-lg-4">

            <div class="dashboard-card">

                <div class="card-heading">

                    <h5>

                        <i class="bi bi-graph-up-arrow me-2"></i>

                        My Performance

                    </h5>

                    <i class="bi bi-three-dots"></i>

                </div>


                <div class="text-center">

                    <div class="performance-number">
                        94%
                    </div>

                    <p class="text-secondary">
                        Excellent Performance
                    </p>

                </div>


                <div class="mb-3">

                    <div class="d-flex justify-content-between mb-2">

                        <small>Productivity</small>

                        <small>95%</small>

                    </div>

                    <div class="progress">

                        <div
                            class="progress-bar"
                            style="width:95%">
                        </div>

                    </div>

                </div>


                <div class="mb-3">

                    <div class="d-flex justify-content-between mb-2">

                        <small>Quality</small>

                        <small>91%</small>

                    </div>

                    <div class="progress">

                        <div
                            class="progress-bar"
                            style="width:91%">
                        </div>

                    </div>

                </div>


                <div>

                    <div class="d-flex justify-content-between mb-2">

                        <small>Teamwork</small>

                        <small>96%</small>

                    </div>

                    <div class="progress">

                        <div
                            class="progress-bar"
                            style="width:96%">
                        </div>

                    </div>

                </div>

            </div>

        </div>



        <!-- QUICK ACTIONS -->

        <div class="col-lg-4">

            <div class="dashboard-card">

                <div class="card-heading">

                    <h5>

                        <i class="bi bi-lightning-charge-fill me-2"></i>

                        Quick Actions

                    </h5>

                </div>


                <div class="action-grid">


                    <a href="#" class="action-btn">

                        <i class="bi bi-person-circle"></i>

                        <span>My Profile</span>

                    </a>


                    <a href="#" class="action-btn">

                        <i class="bi bi-calendar-plus"></i>

                        <span>Apply Leave</span>

                    </a>


                    <a href="#" class="action-btn">

                        <i class="bi bi-file-earmark-text"></i>

                        <span>Documents</span>

                    </a>


                    <a href="#" class="action-btn">

                        <i class="bi bi-headset"></i>

                        <span>Support</span>

                    </a>

                </div>

            </div>

        </div>

    </div>



    <!-- =====================================================
         SECOND ROW
    ====================================================== -->

    <div class="row g-4">


        <!-- PROFILE -->

        <div class="col-lg-4">

            <div class="dashboard-card profile-upload">

                <div class="card-heading">

                    <h5>

                        <i class="bi bi-person-bounding-box me-2"></i>

                        Employee Profile

                    </h5>

                </div>


                <div class="profile-image-wrapper">

                    <img
                        id="profilePreview"
                        src="https://img.freepik.com/premium-photo/banking-joy-indian-employee-smiling-camera_1077802-108017.jpg"
                        alt="Employee Profile">


                    <label
                        for="imageUpload"
                        class="camera-button"
                        title="Upload Profile Picture">

                        <i class="bi bi-camera-fill"></i>

                    </label>


                    <input
                        type="file"
                        id="imageUpload"
                        accept="image/*">

                </div>


                <h5 class="mt-2">

                    <%= employee != null ? employee.getEmpEmail() : "Employee" %>

                </h5>


                <p class="text-secondary mb-1">

                    <%= employee != null ? employee.getEmpDepartment() : "Department" %>

                </p>


                <small class="text-secondary">

                    Employee ID :

                    <%= employee != null ? employee.getEmpId() : "N/A" %>

                </small>


                <div class="mt-3">

                    <span class="badge rounded-pill text-bg-primary">

                        <%= employee != null ? employee.getDesignation() : "Employee" %>

                    </span>


                    <span class="badge rounded-pill text-bg-success">

                        Active

                    </span>

                </div>

            </div>

        </div>



        <!-- RECENT ACTIVITY -->

        <div class="col-lg-4">

            <div class="dashboard-card">

                <div class="card-heading">

                    <h5>

                        <i class="bi bi-activity me-2"></i>

                        Recent Activity

                    </h5>

                    <a
                        href="#"
                        class="text-info text-decoration-none">

                        View All

                    </a>

                </div>


                <div class="activity">

                    <div class="activity-icon">

                        <i class="bi bi-check-lg"></i>

                    </div>

                    <div>

                        <h6>Task Completed</h6>

                        <small>
                            Employee Management API completed
                        </small>

                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">

                        <i class="bi bi-file-earmark-check"></i>

                    </div>

                    <div>

                        <h6>Report Submitted</h6>

                        <small>
                            Monthly performance report submitted
                        </small>

                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">

                        <i class="bi bi-chat-dots"></i>

                    </div>

                    <div>

                        <h6>New Message</h6>

                        <small>
                            Message received from HR Team
                        </small>

                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">

                        <i class="bi bi-trophy"></i>

                    </div>

                    <div>

                        <h6>Achievement Unlocked</h6>

                        <small>
                            Top performer this week
                        </small>

                    </div>

                </div>

            </div>

        </div>



        <!-- NOTIFICATIONS -->

        <div class="col-lg-4">

            <div class="dashboard-card">

                <div class="card-heading">

                    <h5>

                        <i class="bi bi-bell-fill me-2"></i>

                        Notifications

                    </h5>

                    <span class="badge bg-danger">
                        3 New
                    </span>

                </div>


                <div class="alert alert-primary border-0">

                    <i class="bi bi-calendar-event me-2"></i>

                    Team meeting at 4:00 PM

                </div>


                <div class="alert alert-success border-0">

                    <i class="bi bi-check-circle me-2"></i>

                    Your leave request was approved

                </div>


                <div class="alert alert-warning border-0">

                    <i class="bi bi-exclamation-circle me-2"></i>

                    Complete your weekly timesheet

                </div>


                <button
                    class="btn btn-outline-light w-100">

                    View All Notifications

                </button>

            </div>

        </div>

    </div>

</div>



<!-- ================= JAVASCRIPT ================= -->

<script>


/* ================= CLOCK ================= */

function updateClock() {

    const now = new Date();

    let hours = now.getHours();

    let minutes = now.getMinutes();

    let seconds = now.getSeconds();

    let ampm = hours >= 12 ? "PM" : "AM";

    hours = hours % 12;

    hours = hours ? hours : 12;

    hours = String(hours).padStart(2, "0");

    minutes = String(minutes).padStart(2, "0");

    seconds = String(seconds).padStart(2, "0");


    document.getElementById("clock").innerHTML =
        hours + ":" + minutes + ":" + seconds + " " + ampm;


    document.getElementById("date").innerHTML =
        now.toLocaleDateString(
            "en-IN",
            {
                weekday: "long",
                day: "numeric",
                month: "long",
                year: "numeric"
            }
        );
}


setInterval(updateClock, 1000);

updateClock();



/* ================= COUNTER ================= */

const counters =
    document.querySelectorAll(".counter");


counters.forEach(counter => {

    const target =
        parseInt(counter.getAttribute("data-target"));

    let current = 0;

    const increment =
        Math.max(1, Math.ceil(target / 50));


    const timer =
        setInterval(() => {

            current += increment;


            if (current >= target) {

                current = target;

                clearInterval(timer);
            }


            counter.innerText = current;

        }, 25);

});



/* ================= PROFILE IMAGE ================= */

document
    .getElementById("imageUpload")
    .addEventListener("change", function(event) {

        const file = event.target.files[0];


        if (!file) {
            return;
        }


        if (!file.type.startsWith("image/")) {

            alert("Please select a valid image.");

            return;
        }


        const reader = new FileReader();


        reader.onload = function(e) {

            document
                .getElementById("profilePreview")
                .src = e.target.result;


            document
                .getElementById("miniProfile")
                .src = e.target.result;
        };


        reader.readAsDataURL(file);

    });



/* ================= THEME ================= */

function toggleTheme() {

    document.body.classList.toggle("light-mode");


    const icon =
        document.getElementById("themeIcon");


    if (document.body.classList.contains("light-mode")) {

        icon.className = "bi bi-sun-fill";

    } else {

        icon.className = "bi bi-moon-stars-fill";

    }

}



/* ================= CHECK IN ================= */

function checkIn(button) {

    button.innerHTML =
        '<i class="bi bi-check-circle-fill me-2"></i> Checked In';


    button.classList.remove("btn-primary");

    button.classList.add("btn-success");


    alert("Attendance marked successfully!");

}



/* ================= SEARCH ================= */

document
    .getElementById("searchEmployee")
    .addEventListener("keyup", function() {

        const value =
            this.value.toLowerCase();


        const cards =
            document.querySelectorAll(".dashboard-card");


        cards.forEach(card => {

            const text =
                card.innerText.toLowerCase();


            if (text.includes(value)) {

                card.style.opacity = "1";

            } else {

                card.style.opacity = ".35";

            }

        });

    });



/* ================= NAVIGATION ================= */

document
    .querySelectorAll(".nav-link")
    .forEach(link => {

        link.addEventListener("click", function() {

            document
                .querySelectorAll(".nav-link")
                .forEach(item =>
                    item.classList.remove("active")
                );


            this.classList.add("active");

        });

    });

</script>


<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>