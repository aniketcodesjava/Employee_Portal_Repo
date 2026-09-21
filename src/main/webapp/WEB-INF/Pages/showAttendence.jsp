
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Employee Attendance | EMS</title>


    <!-- =====================================================
         GOOGLE FONT
    ====================================================== -->

    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">


    <!-- =====================================================
         BOOTSTRAP 5
    ====================================================== -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">


    <!-- =====================================================
         BOOTSTRAP ICONS
    ====================================================== -->

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">


    <!-- =====================================================
         CSS
    ====================================================== -->

    <style>

        /* =====================================================
           GLOBAL
        ====================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        html {
            scroll-behavior: smooth;
        }


        body {

            font-family: 'Poppins', sans-serif;

            min-height: 100vh;

            color: #ffffff;

            overflow-x: hidden;

            /* Dynamic local background image */

            background-image:

                linear-gradient(
                    135deg,
                    rgba(3, 18, 38, 0.90),
                    rgba(8, 47, 73, 0.82),
                    rgba(3, 30, 55, 0.90)
                ),

                url("https://png.pngtree.com/thumb_back/fh260/background/20220215/pngtree-background-of-technology-sensitive-mobile-communication-conference-image_925300.jpg");

            background-size: cover;

            background-position: center;

            background-repeat: no-repeat;

            background-attachment: fixed;

            position: relative;

        }


        /* =====================================================
           ANIMATED BACKGROUND LIGHT
        ====================================================== */

        body::before {

            content: "";

            position: fixed;

            width: 450px;

            height: 450px;

            border-radius: 50%;

            background: rgba(34, 211, 238, 0.12);

            filter: blur(90px);

            top: -150px;

            left: -100px;

            animation: floatingLight 8s ease-in-out infinite;

            pointer-events: none;

            z-index: -1;
        }


        body::after {

            content: "";

            position: fixed;

            width: 400px;

            height: 400px;

            border-radius: 50%;

            background: rgba(59, 130, 246, 0.12);

            filter: blur(90px);

            right: -100px;

            bottom: -100px;

            animation: floatingLight2 10s ease-in-out infinite;

            pointer-events: none;

            z-index: -1;
        }


        /* =====================================================
           MAIN CONTAINER
        ====================================================== */

        .attendance-container {

            width: 96%;

            max-width: 1550px;

            margin: 35px auto 50px;

            animation: pageAppear 1s ease;

        }


        /* =====================================================
           TOP HEADER
        ====================================================== */

        .attendance-header {

            display: flex;

            justify-content: space-between;

            align-items: center;

            gap: 25px;

            padding: 25px 30px;

            margin-bottom: 25px;

            border-radius: 22px;

            background:

                linear-gradient(
                    135deg,
                    rgba(255,255,255,0.16),
                    rgba(255,255,255,0.07)
                );

            backdrop-filter: blur(18px);

            -webkit-backdrop-filter: blur(18px);

            border: 1px solid rgba(255,255,255,0.20);

            box-shadow:

                0 20px 50px rgba(0,0,0,0.30),

                inset 0 1px 0 rgba(255,255,255,0.15);

            animation: headerDown 0.9s ease;

        }


        /* =====================================================
           TITLE SECTION
        ====================================================== */

        .title-section {

            display: flex;

            align-items: center;

            gap: 18px;

        }


        .title-icon {

            width: 70px;

            height: 70px;

            min-width: 70px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 20px;

            background:

                linear-gradient(
                    135deg,
                    #0ea5e9,
                    #2563eb
                );

            color: #ffffff;

            font-size: 34px;

            box-shadow:

                0 10px 30px rgba(14,165,233,0.35);

            animation: iconPulse 2.5s infinite;

        }


        .title-section h1 {

            font-size: 31px;

            font-weight: 700;

            letter-spacing: -0.5px;

            margin: 0;

        }


        .title-section h1 span {

            color: #22d3ee;

        }


        .title-section p {

            margin: 7px 0 0;

            color: #cbd5e1;

            font-size: 13px;

        }


        .title-section p i {

            color: #22d3ee;

            margin-right: 5px;

        }


        /* =====================================================
           SEARCH BOX
        ====================================================== */

        .search-box {

            position: relative;

            width: 300px;

        }


        .search-box i {

            position: absolute;

            left: 17px;

            top: 50%;

            transform: translateY(-50%);

            color: #64748b;

            font-size: 18px;

            z-index: 2;

        }


        .search-box input {

            width: 100%;

            height: 48px;

            border: 1px solid rgba(255,255,255,0.25);

            outline: none;

            border-radius: 30px;

            padding: 0 18px 0 47px;

            background: rgba(255,255,255,0.94);

            color: #0f172a;

            font-family: 'Poppins', sans-serif;

            font-size: 13px;

            transition: 0.3s ease;

        }


        .search-box input:focus {

            box-shadow:

                0 0 0 4px rgba(34,211,238,0.20),

                0 8px 25px rgba(0,0,0,0.20);

        }


        /* =====================================================
           TABLE CARD
        ====================================================== */

        .table-card {

            background:

                linear-gradient(
                    135deg,
                    rgba(255,255,255,0.14),
                    rgba(255,255,255,0.06)
                );

            backdrop-filter: blur(18px);

            -webkit-backdrop-filter: blur(18px);

            border: 1px solid rgba(255,255,255,0.20);

            border-radius: 22px;

            padding: 18px;

            box-shadow:

                0 25px 60px rgba(0,0,0,0.32),

                inset 0 1px 0 rgba(255,255,255,0.12);

            animation: tableUp 1s ease;

        }


        /* =====================================================
           TABLE RESPONSIVE
        ====================================================== */

        .table-responsive {

            border-radius: 16px;

            overflow-x: auto;

            scrollbar-width: thin;

            scrollbar-color: #38bdf8 rgba(255,255,255,0.10);

        }


        /* =====================================================
           TABLE
        ====================================================== */

        .attendance-table {

            width: 100%;

            min-width: 1150px;

            border-collapse: separate;

            border-spacing: 0;

            margin: 0;

        }


        /* =====================================================
           TABLE HEADER
        ====================================================== */

        .attendance-table thead th {

            padding: 18px 15px;

            background:

                linear-gradient(
                    135deg,
                    rgba(8,47,73,0.96),
                    rgba(15,23,42,0.96)
                );

            color: #bae6fd;

            font-size: 12px;

            font-weight: 600;

            text-transform: uppercase;

            letter-spacing: 0.6px;

            white-space: nowrap;

            border: none;

        }


        .attendance-table thead th i {

            margin-right: 6px;

            color: #38bdf8;

            font-size: 14px;

        }


        .attendance-table thead th:first-child {

            border-top-left-radius: 14px;

        }


        .attendance-table thead th:last-child {

            border-top-right-radius: 14px;

        }


        /* =====================================================
           TABLE BODY
        ====================================================== */

        .attendance-table tbody tr {

            background: rgba(255,255,255,0.08);

            transition:

                transform 0.3s ease,

                background 0.3s ease,

                box-shadow 0.3s ease;

            animation: rowAppear 0.7s ease both;

        }


        .attendance-table tbody tr:nth-child(even) {

            background: rgba(255,255,255,0.12);

        }


        .attendance-table tbody tr:hover {

            background: rgba(56,189,248,0.13);

            transform: scale(1.003);

            box-shadow:

                0 8px 25px rgba(0,0,0,0.18);

        }


        .attendance-table td {

            padding: 15px;

            color: #f8fafc;

            font-size: 12.5px;

            font-weight: 400;

            border-bottom:

                1px solid rgba(255,255,255,0.09);

            vertical-align: middle;

            white-space: nowrap;

        }


        /* =====================================================
           EMPLOYEE ID
        ====================================================== */

        .employee-id {

            display: inline-flex;

            align-items: center;

            gap: 5px;

            color: #7dd3fc;

            font-weight: 600;

        }


        .employee-id i {

            font-size: 12px;

        }


        /* =====================================================
           EMPLOYEE NAME
        ====================================================== */

        .employee-name {

            display: flex;

            align-items: center;

            gap: 10px;

            font-weight: 600;

        }


        .employee-avatar {

            width: 36px;

            height: 36px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 50%;

            background:

                linear-gradient(
                    135deg,
                    rgba(14,165,233,0.25),
                    rgba(37,99,235,0.25)
                );

            border: 1px solid rgba(125,211,252,0.30);

            color: #7dd3fc;

            font-size: 16px;

            transition: 0.3s ease;

        }


        .attendance-table tbody tr:hover
        .employee-avatar {

            transform: rotate(8deg) scale(1.08);

            background:

                linear-gradient(
                    135deg,
                    #0ea5e9,
                    #2563eb
                );

            color: #ffffff;

        }


        /* =====================================================
           DEPARTMENT
        ====================================================== */

        .department {

            display: inline-flex;

            align-items: center;

            gap: 7px;

        }


        .department i {

            color: #fbbf24;

        }


        /* =====================================================
           DATE
        ====================================================== */

        .date-value {

            display: inline-flex;

            align-items: center;

            gap: 7px;

        }


        .date-value i {

            color: #a5b4fc;

        }


        /* =====================================================
           TIME
        ====================================================== */

        .time-value {

            display: inline-flex;

            align-items: center;

            gap: 7px;

            font-weight: 500;

        }


        .check-in {

            color: #86efac;

        }


        .check-out {

            color: #fda4af;

        }


        .check-in i {

            color: #22c55e;

        }


        .check-out i {

            color: #fb7185;

        }


        /* =====================================================
           LOCATION
        ====================================================== */

        .location {

            display: inline-flex;

            align-items: center;

            gap: 7px;

        }


        .location i {

            color: #fb7185;

        }


        /* =====================================================
           STATUS BADGE
        ====================================================== */

        .status-badge {

            display: inline-flex;

            align-items: center;

            gap: 6px;

            padding: 7px 13px;

            border-radius: 30px;

            font-size: 11px;

            font-weight: 600;

            transition: 0.3s ease;

        }


        .status-badge:hover {

            transform: translateY(-2px);

        }


        /* PRESENT */

        .status-present {

            background: rgba(34,197,94,0.17);

            color: #86efac;

            border: 1px solid rgba(34,197,94,0.35);

        }


        /* ABSENT */

        .status-absent {

            background: rgba(239,68,68,0.17);

            color: #fca5a5;

            border: 1px solid rgba(239,68,68,0.35);

        }


        /* LEAVE */

        .status-leave {

            background: rgba(245,158,11,0.17);

            color: #fcd34d;

            border: 1px solid rgba(245,158,11,0.35);

        }


        /* DEFAULT */

        .status-default {

            background: rgba(148,163,184,0.17);

            color: #cbd5e1;

            border: 1px solid rgba(148,163,184,0.35);

        }


        /* =====================================================
           REMARK
        ====================================================== */

        .remark {

            display: inline-flex;

            align-items: center;

            gap: 7px;

            max-width: 200px;

            overflow: hidden;

            text-overflow: ellipsis;

            white-space: nowrap;

            color: #cbd5e1;

        }


        .remark i {

            color: #60a5fa;

        }


        /* =====================================================
           EMPTY DATA
        ====================================================== */

        .empty-data {

            text-align: center !important;

            padding: 70px 20px !important;

            color: #cbd5e1 !important;

            font-size: 14px !important;

        }


        .empty-data i {

            display: block;

            margin-bottom: 15px;

            color: #38bdf8;

            font-size: 48px;

            animation: iconPulse 2s infinite;

        }


        /* =====================================================
           FOOTER
        ====================================================== */

        .attendance-footer {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-top: 18px;

            padding: 5px 4px;

            color: #cbd5e1;

            font-size: 12px;

        }


        .footer-brand {

            display: flex;

            align-items: center;

            gap: 8px;

        }


        .footer-brand i {

            color: #38bdf8;

            font-size: 16px;

        }


        .live-status {

            display: flex;

            align-items: center;

            gap: 8px;

        }


        .live-dot {

            width: 9px;

            height: 9px;

            border-radius: 50%;

            background: #4ade80;

            box-shadow: 0 0 12px #4ade80;

            animation: blink 1.5s infinite;

        }


        /* =====================================================
           SCROLLBAR
        ====================================================== */

        ::-webkit-scrollbar {

            width: 8px;

            height: 8px;

        }


        ::-webkit-scrollbar-track {

            background: rgba(255,255,255,0.06);

        }


        ::-webkit-scrollbar-thumb {

            background: #0284c7;

            border-radius: 10px;

        }


        ::-webkit-scrollbar-thumb:hover {

            background: #0ea5e9;

        }


        /* =====================================================
           ANIMATIONS
        ====================================================== */

        @keyframes pageAppear {

            from {

                opacity: 0;

            }

            to {

                opacity: 1;

            }

        }


        @keyframes headerDown {

            from {

                opacity: 0;

                transform: translateY(-35px);

            }

            to {

                opacity: 1;

                transform: translateY(0);

            }

        }


        @keyframes tableUp {

            from {

                opacity: 0;

                transform: translateY(35px);

            }

            to {

                opacity: 1;

                transform: translateY(0);

            }

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


        @keyframes iconPulse {

            0%,
            100% {

                transform: scale(1);

            }

            50% {

                transform: scale(1.07);

            }

        }


        @keyframes floatingLight {

            0%,
            100% {

                transform: translate(0,0);

            }

            50% {

                transform: translate(70px,40px);

            }

        }


        @keyframes floatingLight2 {

            0%,
            100% {

                transform: translate(0,0);

            }

            50% {

                transform: translate(-60px,-50px);

            }

        }


        @keyframes blink {

            0%,
            100% {

                opacity: 1;

            }

            50% {

                opacity: 0.3;

            }

        }


        /* =====================================================
           RESPONSIVE
        ====================================================== */

        @media (max-width: 900px) {

            .attendance-header {

                flex-direction: column;

                align-items: stretch;

            }


            .search-box {

                width: 100%;

            }


            .title-section h1 {

                font-size: 25px;

            }

        }


        @media (max-width: 600px) {

            .attendance-container {

                width: 94%;

                margin-top: 20px;

            }


            .attendance-header {

                padding: 20px;

            }


            .title-icon {

                width: 55px;

                min-width: 55px;

                height: 55px;

                border-radius: 16px;

                font-size: 26px;

            }


            .title-section h1 {

                font-size: 21px;

            }


            .title-section p {

                font-size: 11px;

            }


            .table-card {

                padding: 10px;

            }


            .attendance-footer {

                flex-direction: column;

                align-items: flex-start;

                gap: 10px;

            }

        }

    </style>

</head>


<body>


<!-- =========================================================
     MAIN CONTAINER
========================================================= -->

<div class="attendance-container">


    <!-- =====================================================
         HEADER
    ====================================================== -->

    <div class="attendance-header">


        <!-- TITLE -->

        <div class="title-section">


            <div class="title-icon">

                <i class="bi bi-calendar2-check-fill"></i>

            </div>


            <div>

                <h1>
                    Employee
                    <span>Attendance</span>
                </h1>


                <p>

                    <i class="bi bi-clock-history"></i>

                    Track attendance, working hours and employee activity

                </p>

            </div>

        </div>


        <!-- =================================================
             SEARCH
        ================================================== -->

        <div class="search-box">

            <i class="bi bi-search"></i>

            <input

                type="text"

                id="searchInput"

                placeholder="Search employee, department..."

                autocomplete="off"

                onkeyup="searchEmployee()">

        </div>


    </div>


    <!-- =====================================================
         TABLE CARD
    ====================================================== -->

    <div class="table-card">


        <div class="table-responsive">


            <table

                class="attendance-table"

                id="attendanceTable">


                <!-- =================================================
                     TABLE HEADER
                ================================================== -->

                <thead>

                    <tr>


                        <th>

                            <i class="bi bi-person-badge-fill"></i>

                            ID

                        </th>


                        <th>

                            <i class="bi bi-person-fill"></i>

                            Name

                        </th>


                        <th>

                            <i class="bi bi-building-fill"></i>

                            Department

                        </th>


                        <th>

                            <i class="bi bi-calendar-event-fill"></i>

                            Date

                        </th>


                        <th>

                            <i class="bi bi-check-circle-fill"></i>

                            Status

                        </th>


                        <th>

                            <i class="bi bi-box-arrow-in-right"></i>

                            Check-In

                        </th>


                        <th>

                            <i class="bi bi-box-arrow-right"></i>

                            Check-Out

                        </th>


                        <th>

                            <i class="bi bi-geo-alt-fill"></i>

                            Work Location

                        </th>


                        <th>

                            <i class="bi bi-chat-left-text-fill"></i>

                            Remark

                        </th>


                    </tr>

                </thead>


                <!-- =================================================
                     TABLE BODY
                ================================================== -->

                <tbody>


                    <!-- =================================================
                         DYNAMIC EMPLOYEE ATTENDANCE
                    ================================================== -->

                    <c:forEach items="${temp}" var="demo">


                        <tr>


                            <!-- EMPLOYEE ID -->

                            <td>

                                <span class="employee-id">

                                    <i class="bi bi-hash"></i>

                                    ${demo.empId}

                                </span>

                            </td>


                            <!-- EMPLOYEE NAME -->

                            <td>

                                <div class="employee-name">


                                    <div class="employee-avatar">

                                        <i class="bi bi-person-fill"></i>

                                    </div>


                                    ${demo.empName}


                                </div>

                            </td>


                            <!-- DEPARTMENT -->

                            <td>

                                <span class="department">

                                    <i class="bi bi-diagram-3-fill"></i>

                                    ${demo.empDepartment}

                                </span>

                            </td>


                            <!-- DATE -->

                            <td>

                                <span class="date-value">

                                    <i class="bi bi-calendar3"></i>

                                    ${demo.attendDate}

                                </span>

                            </td>


                            <!-- STATUS -->

                            <td>


                                <c:choose>


                                   

                                    <c:when test="${demo.status == 'Present'}">

                                        <span class="status-badge status-present">

                                            <i class="bi bi-check-circle-fill"></i>

                                            Present

                                        </span>

                                    </c:when>


                                   

                                    <c:when test="${demo.status == 'Absent'}">

                                        <span class="status-badge status-absent">

                                            <i class="bi bi-x-circle-fill"></i>

                                            Absent

                                        </span>

                                    </c:when>


                                  

                                    <c:when test="${demo.status == 'Leave'}">

                                        <span class="status-badge status-leave">

                                            <i class="bi bi-calendar-x-fill"></i>

                                            Leave

                                        </span>

                                    </c:when>


                                   

                                    <c:otherwise>

                                        <span class="status-badge status-default">

                                            <i class="bi bi-info-circle-fill"></i>

                                            ${demo.status}

                                        </span>

                                    </c:otherwise>


                                </c:choose>


                            </td>


                           

                            <td>

                                <span class="time-value check-in">

                                    <i class="bi bi-box-arrow-in-right"></i>

                                    ${demo.checkIn}

                                </span>

                            </td>


                           

                            <td>

                                <span class="time-value check-out">

                                    <i class="bi bi-box-arrow-right"></i>

                                    ${demo.checkOut}

                                </span>

                            </td>


                           

                            <td>

                                <span class="location">

                                    <i class="bi bi-geo-alt-fill"></i>

                                    ${demo.workLocation}

                                </span>

                            </td>


                         

                            <td>

                                <span

                                    class="remark"

                                    title="${demo.remarks}">

                                    <i class="bi bi-chat-left-dots-fill"></i>

                                    ${demo.remarks}

                                </span>

                            </td>


                        </tr>


                    </c:forEach>


                    <!-- =================================================
                         NO DATA
                    ================================================== -->

                    <c:if test="${empty temp}">

                        <tr>

                            <td

                                colspan="9"

                                class="empty-data">


                                <i class="bi bi-calendar-x"></i>


                                No attendance records found.


                            </td>

                        </tr>

                    </c:if>


                </tbody>


            </table>


        </div>


        <!-- =====================================================
             FOOTER
        ====================================================== -->

        <div class="attendance-footer">


            <div class="footer-brand">

                <i class="bi bi-layers-fill"></i>

                <span>
                    Employee Management System
                </span>

            </div>


            <div class="live-status">

                <span class="live-dot"></span>

                <span>
                    Attendance System Active
                </span>

            </div>


        </div>


    </div>


</div>



<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>


    /* =====================================================
       SEARCH EMPLOYEE
    ====================================================== */

    function searchEmployee() {


        let input =

            document
            .getElementById("searchInput")
            .value
            .toLowerCase()
            .trim();


        let table =

            document
            .getElementById("attendanceTable");


        let tbody =

            table
            .getElementsByTagName("tbody")[0];


        let rows =

            tbody
            .getElementsByTagName("tr");


        for (let i = 0; i < rows.length; i++) {


            let rowText =

                rows[i]
                .innerText
                .toLowerCase();


            if (rowText.includes(input)) {

                rows[i].style.display = "";

            }

            else {

                rows[i].style.display = "none";

            }

        }

    }


</script>


<!-- =========================================================
     BOOTSTRAP JAVASCRIPT
========================================================= -->

<script

    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>


</body>

</html>