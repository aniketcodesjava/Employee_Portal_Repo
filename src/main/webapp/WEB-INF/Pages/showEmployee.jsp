
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Employee Management Dashboard</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">


<style>

/* =========================================================
   GLOBAL
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;
    color: #ffffff;

    background:
        linear-gradient(
            rgba(7, 15, 35, 0.88),
            rgba(16, 25, 55, 0.92)
        ),
        url("https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=2000&q=90");

    background-size: cover;
    background-position: center;
    background-attachment: fixed;

    overflow-x: hidden;
}


/* =========================================================
   ANIMATED BACKGROUND
========================================================= */

body::before,
body::after {
    content: "";
    position: fixed;
    width: 350px;
    height: 350px;
    border-radius: 50%;
    filter: blur(80px);
    opacity: 0.35;
    z-index: -1;
    animation: floating 8s infinite alternate ease-in-out;
}

body::before {
    background: #00c6ff;
    top: 5%;
    left: -100px;
}

body::after {
    background: #8e2de2;
    right: -100px;
    bottom: 5%;
    animation-delay: 2s;
}

@keyframes floating {

    0% {
        transform: translate(0px, 0px) scale(1);
    }

    50% {
        transform: translate(100px, 60px) scale(1.2);
    }

    100% {
        transform: translate(-50px, -50px) scale(1);
    }
}


/* =========================================================
   NAVBAR
========================================================= */

.navbar-custom {

    margin: 20px auto;

    width: 95%;

    padding: 15px 25px;

    border-radius: 20px;

    background: rgba(255,255,255,0.10);

    backdrop-filter: blur(18px);

    border: 1px solid rgba(255,255,255,0.15);

    box-shadow:
        0 15px 40px rgba(0,0,0,0.25);

    animation: slideDown 0.8s ease;
}

@keyframes slideDown {

    from {
        opacity: 0;
        transform: translateY(-30px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


.logo {

    font-size: 23px;

    font-weight: 700;

    letter-spacing: 1px;
}

.logo i {

    color: #00e5ff;

    margin-right: 10px;

    animation: rotateIcon 3s linear infinite;
}

@keyframes rotateIcon {

    from {
        transform: rotate(0deg);
    }

    to {
        transform: rotate(360deg);
    }
}


/* =========================================================
   HERO
========================================================= */

.hero {

    width: 95%;

    margin: 35px auto;

    padding: 35px;

    border-radius: 25px;

    background:
        linear-gradient(
            135deg,
            rgba(0,198,255,0.20),
            rgba(142,45,226,0.20)
        );

    backdrop-filter: blur(15px);

    border: 1px solid rgba(255,255,255,0.15);

    box-shadow:
        0 20px 60px rgba(0,0,0,0.30);

    animation: fadeUp 1s ease;
}

@keyframes fadeUp {

    from {
        opacity: 0;
        transform: translateY(40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.hero h1 {

    font-size: clamp(28px, 4vw, 48px);

    font-weight: 800;

    margin-bottom: 10px;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #00e5ff,
            #c77dff
        );

    -webkit-background-clip: text;

    -webkit-text-fill-color: transparent;
}

.hero p {

    color: #cbd5e1;

    font-size: 15px;
}


/* =========================================================
   STAT CARDS
========================================================= */

.stat-card {

    position: relative;

    padding: 25px;

    border-radius: 20px;

    background: rgba(255,255,255,0.10);

    border: 1px solid rgba(255,255,255,0.12);

    backdrop-filter: blur(15px);

    transition: 0.4s;

    overflow: hidden;
}

.stat-card:hover {

    transform: translateY(-8px);

    box-shadow:
        0 20px 40px rgba(0,0,0,0.30);
}

.stat-card::before {

    content: "";

    position: absolute;

    width: 100px;

    height: 100px;

    border-radius: 50%;

    background: rgba(0,229,255,0.18);

    right: -30px;

    top: -30px;
}

.stat-icon {

    width: 55px;

    height: 55px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 15px;

    background: linear-gradient(
        135deg,
        #00c6ff,
        #0072ff
    );

    font-size: 22px;

    margin-bottom: 15px;
}

.stat-card h3 {

    font-size: 28px;

    font-weight: 700;

    margin-bottom: 3px;
}

.stat-card span {

    color: #cbd5e1;

    font-size: 13px;
}


/* =========================================================
   MAIN CONTAINER
========================================================= */

.main-container {

    width: 95%;

    margin: auto;

    margin-bottom: 50px;

    padding: 25px;

    border-radius: 25px;

    background: rgba(255,255,255,0.08);

    backdrop-filter: blur(18px);

    border: 1px solid rgba(255,255,255,0.12);

    box-shadow:
        0 20px 70px rgba(0,0,0,0.35);

    animation: fadeUp 1.2s ease;
}


/* =========================================================
   TABLE HEADER
========================================================= */

.table-heading {

    display: flex;

    justify-content: space-between;

    align-items: center;

    gap: 20px;

    margin-bottom: 25px;

    flex-wrap: wrap;
}

.table-heading h2 {

    font-size: 24px;

    font-weight: 700;
}

.table-heading h2 i {

    color: #00e5ff;

    margin-right: 8px;
}


/* =========================================================
   SEARCH BOX
========================================================= */

.search-box {

    position: relative;

    width: 300px;
}

.search-box i {

    position: absolute;

    left: 15px;

    top: 50%;

    transform: translateY(-50%);

    color: #00e5ff;
}

.search-box input {

    width: 100%;

    padding: 12px 15px 12px 45px;

    border-radius: 12px;

    border: 1px solid rgba(255,255,255,0.15);

    outline: none;

    background: rgba(0,0,0,0.25);

    color: white;

    transition: 0.3s;
}

.search-box input:focus {

    border-color: #00e5ff;

    box-shadow:
        0 0 15px rgba(0,229,255,0.25);
}

.search-box input::placeholder {

    color: #aeb8c7;
}


/* =========================================================
   TABLE
========================================================= */

.table-responsive {

    border-radius: 18px;

    overflow-x: auto;

    border: 1px solid rgba(255,255,255,0.10);
}

.employee-table {

    width: 100%;

    min-width: 1250px;

    border-collapse: collapse;

    margin: 0;
}

.employee-table thead {

    background:
        linear-gradient(
            90deg,
            rgba(0,198,255,0.25),
            rgba(142,45,226,0.25)
        );
}

.employee-table th {

    padding: 18px 15px;

    text-align: left;

    color: #ffffff;

    font-size: 13px;

    font-weight: 600;

    white-space: nowrap;

    border-bottom:
        1px solid rgba(255,255,255,0.15);
}

.employee-table th i {

    color: #00e5ff;

    margin-right: 6px;
}

.employee-table td {

    padding: 15px;

    color: #dbeafe;

    font-size: 13px;

    white-space: nowrap;

    border-bottom:
        1px solid rgba(255,255,255,0.08);
}

.employee-table tbody tr {

    transition: 0.35s;

    animation: rowAppear 0.6s ease both;
}

.employee-table tbody tr:hover {

    background: rgba(0,229,255,0.08);

    transform: scale(1.005);

    box-shadow:
        0 5px 20px rgba(0,0,0,0.15);
}

@keyframes rowAppear {

    from {
        opacity: 0;
        transform: translateX(-15px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}


/* =========================================================
   EMPLOYEE AVATAR
========================================================= */

.employee-name {

    display: flex;

    align-items: center;

    gap: 10px;

    font-weight: 600;
}

.avatar {

    width: 38px;

    height: 38px;

    border-radius: 50%;

    display: flex;

    align-items: center;

    justify-content: center;

    background:
        linear-gradient(
            135deg,
            #00c6ff,
            #8e2de2
        );

    color: white;

    font-weight: 700;

    box-shadow:
        0 5px 15px rgba(0,0,0,0.25);
}


/* =========================================================
   BADGES
========================================================= */

.badge-custom {

    padding: 7px 12px;

    border-radius: 20px;

    font-size: 11px;

    background: rgba(0,198,255,0.15);

    color: #67e8f9;

    border: 1px solid rgba(0,198,255,0.25);
}


/* =========================================================
   ACTION BUTTONS
========================================================= */

.action-btn {

    width: 38px;

    height: 38px;

    display: inline-flex;

    align-items: center;

    justify-content: center;

    border-radius: 10px;

    text-decoration: none;

    margin-right: 5px;

    transition: 0.3s;
}

.update-btn {

    background: rgba(34,197,94,0.15);

    color: #4ade80;

    border: 1px solid rgba(34,197,94,0.25);
}

.fire-btn {

    background: rgba(239,68,68,0.15);

    color: #f87171;

    border: 1px solid rgba(239,68,68,0.25);
}

.action-btn:hover {

    transform: translateY(-4px) scale(1.08);

    color: white;
}

.update-btn:hover {

    background: #22c55e;

    box-shadow:
        0 8px 20px rgba(34,197,94,0.30);
}

.fire-btn:hover {

    background: #ef4444;

    box-shadow:
        0 8px 20px rgba(239,68,68,0.30);
}


/* =========================================================
   EMPTY MESSAGE
========================================================= */

.empty-message {

    text-align: center;

    padding: 60px;

    color: #cbd5e1;
}

.empty-message i {

    font-size: 55px;

    color: #00e5ff;

    margin-bottom: 15px;
}


/* =========================================================
   FOOTER
========================================================= */

.footer {

    text-align: center;

    padding: 25px;

    color: #94a3b8;

    font-size: 13px;
}

.footer i {

    color: #00e5ff;

    margin-right: 5px;
}


/* =========================================================
   SCROLLBAR
========================================================= */

::-webkit-scrollbar {

    width: 8px;

    height: 8px;
}

::-webkit-scrollbar-track {

    background: #07101f;
}

::-webkit-scrollbar-thumb {

    background:
        linear-gradient(
            #00c6ff,
            #8e2de2
        );

    border-radius: 20px;
}


/* =========================================================
   BACK BUTTON
========================================================= */

.back-btn {
    display: inline-flex;
    align-items: center;
    gap: 8px;

    padding: 10px 16px;

    border-radius: 12px;

    text-decoration: none;

    color: #ffffff;

    background: rgba(0, 198, 255, 0.12);

    border: 1px solid rgba(0, 229, 255, 0.30);

    font-size: 13px;

    font-weight: 600;

    transition: all 0.3s ease;

    backdrop-filter: blur(10px);
}

.back-btn i {
    color: #00e5ff;
    font-size: 14px;

    transition: transform 0.3s ease;
}

.back-btn:hover {
    color: #ffffff;

    background: linear-gradient(
        135deg,
        #00c6ff,
        #0072ff
    );

    border-color: #00e5ff;

    transform: translateX(-4px);

    box-shadow:
        0 8px 25px rgba(0, 198, 255, 0.35);
}

.back-btn:hover i {
    transform: translateX(-4px);
}


/* =========================================================
   MOBILE
========================================================= */

@media(max-width:768px) {

    .navbar-custom,
    .hero,
    .main-container {

        width: 94%;
    }

    .hero {

        padding: 25px;
    }

    .hero h1 {

        font-size: 30px;
    }

    .search-box {

        width: 100%;
    }

    .table-heading {

        align-items: stretch;
    }

    .main-container {

        padding: 15px;
    }
    
    .back-btn span {
    display: none;
}

.back-btn {
    width: 40px;
    height: 40px;
    padding: 0;

    justify-content: center;
}

.back-btn i {
    margin: 0;
}
    
}

</style>

</head>


<body>


 

<!-- =====================================================
     NAVBAR
===================================================== -->


<nav class="navbar-custom">

    <div class="d-flex justify-content-between align-items-center">

        <!-- LOGO -->
        <div class="logo">
            <i class="fa-solid fa-users-gear"></i>
            Employee<span style="color:#00e5ff;">Hub</span>
        </div>

        <!-- RIGHT SIDE -->
        <div class="d-flex align-items-center gap-3">

            <!-- BACK BUTTON -->
            <a href="<%= request.getContextPath() %>/HomeAdmin"
               class="back-btn"
               title="Back to Admin Home">

                <i class="fa-solid fa-arrow-left"></i>
                <span>Back to Home</span>

            </a>

            <!-- ADMIN BADGE -->
            <span class="badge-custom">
                <i class="fa-solid fa-circle"
                   style="font-size:7px;"></i>
                Admin Panel
            </span>

        </div>

    </div>

</nav>



<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

    <div class="row align-items-center">

        <div class="col-lg-8">

            <h1>

                These Are Our Employees

                <i class="fa-solid fa-people-group"
                   style="font-size:35px;"></i>

            </h1>

            <p>

                Manage your organization's employees,
                departments, designations and contact
                information from one powerful dashboard.

            </p>

        </div>


        <div class="col-lg-4 text-lg-end mt-4 mt-lg-0">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="fa-solid fa-user-tie"></i>

                </div>

                <h3 id="employeeCount">0</h3>

                <span>Total Employees</span>

            </div>

        </div>

    </div>


    <!-- STATISTICS -->

    <div class="row g-3 mt-3">

        <div class="col-md-4">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="fa-solid fa-building"></i>

                </div>

                <h3>Departments</h3>

                <span>Manage company departments</span>

            </div>

        </div>


        <div class="col-md-4">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="fa-solid fa-chart-line"></i>

                </div>

                <h3>Performance</h3>

                <span>Monitor employee activities</span>

            </div>

        </div>


        <div class="col-md-4">

            <div class="stat-card">

                <div class="stat-icon">

                    <i class="fa-solid fa-shield-halved"></i>

                </div>

                <h3>Secure</h3>

                <span>Employee data management</span>

            </div>

        </div>

    </div>

</section>



<!-- =====================================================
     EMPLOYEE TABLE
===================================================== -->

<section class="main-container">


    <div class="table-heading">

        <div>

            <h2>

                <i class="fa-solid fa-address-book"></i>

                Employee Directory

            </h2>

            <small style="color:#94a3b8;">

                Complete employee information

            </small>

        </div>


        <!-- SEARCH -->

        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                type="text"
                id="searchEmployee"
                placeholder="Search employee...">

        </div>

    </div>



    <!-- TABLE -->

    <div class="table-responsive">

        <table class="employee-table" id="employeeTable">

            <thead>

                <tr>

                    <th>
                        <i class="fa-solid fa-hashtag"></i>
                        ID
                    </th>

                    <th>
                        <i class="fa-solid fa-user"></i>
                        Employee
                    </th>

                    <th>
                        <i class="fa-solid fa-envelope"></i>
                        Email
                    </th>

                    <th>
                        <i class="fa-solid fa-phone"></i>
                        Contact
                    </th>

                    <th>
                        <i class="fa-solid fa-calendar"></i>
                        DOB
                    </th>

                    <th>
                        <i class="fa-solid fa-venus-mars"></i>
                        Gender
                    </th>

                    <th>
                        <i class="fa-solid fa-building"></i>
                        Department
                    </th>

                    <th>
                        <i class="fa-solid fa-briefcase"></i>
                        Designation
                    </th>

                    <th>
                        <i class="fa-solid fa-indian-rupee-sign"></i>
                        Salary
                    </th>

                    <th>
                        <i class="fa-solid fa-location-dot"></i>
                        Address
                    </th>

                    <th>
                        <i class="fa-solid fa-gears"></i>
                         Take Action
                    </th>

                </tr>

            </thead>


            <tbody>

                <c:forEach items="${temp}" var="temp1">

                    <tr>

                        <!-- ID -->

                        <td>

                            <span class="badge-custom">

                                #${temp1.empId}

                            </span>

                        </td>


                        <!-- NAME -->

                        <td>

                            <div class="employee-name">

                                <div class="avatar">

                                    ${temp1.empName.substring(0,1)}

                                </div>

                                ${temp1.empName}

                            </div>

                        </td>


                        <!-- EMAIL -->

                        <td>

                            <i class="fa-solid fa-envelope"
                               style="color:#00e5ff;"></i>

                            ${temp1.empEmail}

                        </td>


                        <!-- MOBILE -->

                        <td>

                            <i class="fa-solid fa-phone"
                               style="color:#4ade80;"></i>

                            ${temp1.empMobile}

                        </td>


                        <!-- DOB -->

                        <td>

                            <i class="fa-solid fa-cake-candles"
                               style="color:#c084fc;"></i>

                            ${temp1.empDob}

                        </td>


                        <!-- GENDER -->

                        <td>

                            <span class="badge-custom">

                                <i class="fa-solid fa-user"></i>

                                ${temp1.empGender}

                            </span>

                        </td>


                        <!-- DEPARTMENT -->

                        <td>

                            <span class="badge-custom">

                                <i class="fa-solid fa-building"></i>

                                ${temp1.empDepartment}

                            </span>

                        </td>


                        <!-- DESIGNATION -->

                        <td>

                            <i class="fa-solid fa-briefcase"
                               style="color:#fbbf24;"></i>

                            ${temp1.designation}

                        </td>


                        <!-- SALARY -->

                        <td>

                            <strong style="color:#4ade80;">

                                ₹ ${temp1.empSalary}

                            </strong>

                        </td>


                        <!-- ADDRESS -->

                        <td>

                            <i class="fa-solid fa-location-dot"
                               style="color:#f87171;"></i>

                            ${temp1.empAddress}

                        </td>


                        <!-- ACTION -->

                        <td>

                            <!-- UPDATE -->

                            <a href="#"
                               class="action-btn update-btn"
                               title="Update Employee"
                               onclick="updateEmployee('${temp1.empId}')">

                                <i class="fa-solid fa-pen-to-square"></i>

                            </a>


                            <!-- FIRE -->

                            <a href="#"
                               class="action-btn fire-btn"
                               title="Fire Employee"
                               onclick="fireEmployee(event,'${temp1.empId}', '${temp1.empName}')">

                                <i class="fa-solid fa-user-slash"></i>

                            </a>

                        </td>

                    </tr>

                </c:forEach>

            </tbody>

        </table>

    </div>


</section>



<!-- =====================================================
     FOOTER
===================================================== -->

<div class="footer">

    <i class="fa-solid fa-shield-halved"></i>

    EmployeeHub Management System

    &nbsp; | &nbsp;

    Secure Employee Management

    &nbsp; | &nbsp;

    © 2026

</div>



<!-- =====================================================
     JAVASCRIPT
===================================================== -->

<script>

/* =====================================================
   EMPLOYEE COUNT
===================================================== */

document.addEventListener("DOMContentLoaded", function() {

    let rows =
        document.querySelectorAll(
            "#employeeTable tbody tr"
        );

    let count = rows.length;

    let counter =
        document.getElementById("employeeCount");

    let current = 0;

    let interval =
        setInterval(function() {

            current++;

            counter.innerText = current;

            if(current >= count) {

                clearInterval(interval);

            }

        }, 80);

});


/* =====================================================
   SEARCH EMPLOYEE
===================================================== */

document
.getElementById("searchEmployee")
.addEventListener("keyup", function() {

    let searchValue =
        this.value.toLowerCase();

    let rows =
        document.querySelectorAll(
            "#employeeTable tbody tr"
        );

    rows.forEach(function(row) {

        let text =
            row.innerText.toLowerCase();

        if(text.includes(searchValue)) {

            row.style.display = "";

        } else {

            row.style.display = "none";

        }

    });

});


/* =====================================================
   UPDATE EMPLOYEE
===================================================== */

function updateEmployee(id) {

    event.preventDefault();

    /*
       Change this URL according to your
       Spring MVC controller mapping.

       Example:

       /update/5
    */

    let contextPath =
        "<%= request.getContextPath() %>";

    window.location.href =
        contextPath + "/update/" + id;
}


/* =====================================================
   FIRE EMPLOYEE
===================================================== */

function fireEmployee(event, id, name) {

    event.preventDefault();

    let result =
        confirm(
            "Are you sure you want to fire " +
            name +
            "?\n\nEmployee ID: " +
            id
        );

    if(result) {

        /*
           Change this URL according to your
           Spring MVC controller mapping.

           Example:

           /delete/5
        */

        let contextPath =
            "<%= request.getContextPath() %>";

        window.location.href =
            contextPath + "/delete/" + id;

    }

}


/* =====================================================
   3D MOUSE EFFECT FOR STAT CARDS
===================================================== */

const cards =
    document.querySelectorAll(".stat-card");

cards.forEach(card => {

    card.addEventListener("mousemove", function(e) {

        const rect =
            card.getBoundingClientRect();

        const x =
            e.clientX - rect.left;

        const y =
            e.clientY - rect.top;

        const centerX =
            rect.width / 2;

        const centerY =
            rect.height / 2;

        const rotateX =
            (y - centerY) / 15;

        const rotateY =
            (centerX - x) / 15;

        card.style.transform =
            `perspective(700px)
             rotateX(${rotateX}deg)
             rotateY(${rotateY}deg)
             translateY(-8px)`;

    });


    card.addEventListener("mouseleave", function() {

        card.style.transform =
            "perspective(700px) rotateX(0) rotateY(0)";

    });

});


</script>


<!-- Bootstrap JS -->

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>
