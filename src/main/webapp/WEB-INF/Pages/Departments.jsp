
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Department Wise Employees</title>

    <!-- Bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {

            min-height: 100vh;

            font-family: Arial, Helvetica, sans-serif;

            background:
                linear-gradient(
                    rgba(4, 15, 35, 0.88),
                    rgba(5, 35, 65, 0.90)
                ),
                url("https://udmcreative.com/wp-content/uploads/2026/02/best-software-company-2025-top-5-development-firms-ranked-featured-image.png");

            background-size: cover;

            background-position: center;

            background-attachment: fixed;

            color: white;

            padding-bottom: 50px;
        }


        /* NAVBAR */

        .topbar {

            height: 70px;

            background: rgba(0, 0, 0, 0.40);

            backdrop-filter: blur(15px);

            border-bottom: 1px solid rgba(255,255,255,0.15);

            display: flex;

            align-items: center;
        }


        .logo {

            color: white;

            font-size: 22px;

            font-weight: bold;

            text-decoration: none;
        }


        .logo i {

            color: #00d9ff;

            font-size: 28px;

            margin-right: 10px;
        }


        /* MAIN */

        .main-container {

            width: 92%;

            max-width: 1200px;

            margin: 45px auto;
        }


        /* HEADER */

        .header-box {

            background: rgba(255,255,255,0.10);

            border: 1px solid rgba(255,255,255,0.20);

            backdrop-filter: blur(18px);

            border-radius: 25px;

            padding: 30px;

            margin-bottom: 25px;

            box-shadow:
                0 20px 50px rgba(0,0,0,0.30);

            animation: slideDown 0.8s ease;
        }


        .title-area {

            display: flex;

            align-items: center;

            gap: 20px;
        }


        .title-icon {

            width: 65px;

            height: 65px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 18px;

            background: linear-gradient(
                135deg,
                #00d9ff,
                #0066ff
            );

            font-size: 30px;

            box-shadow:
                0 10px 30px rgba(0,150,255,0.40);

            animation: floatIcon 3s ease-in-out infinite;
        }


        .main-title {

            font-size: 30px;

            font-weight: bold;

            margin-bottom: 5px;
        }


        .sub-title {

            color: rgba(255,255,255,0.65);

            font-size: 14px;
        }


        /* COUNT */

        .count-box {

            text-align: center;

            background: rgba(0,217,255,0.12);

            border: 1px solid rgba(0,217,255,0.30);

            border-radius: 18px;

            padding: 12px 25px;

            min-width: 130px;
        }


        .count-box i {

            color: #00d9ff;

            font-size: 24px;
        }


        .count-box h3 {

            margin: 4px 0;

            font-weight: bold;

            color: white;
        }


        .count-box span {

            color: rgba(255,255,255,0.60);

            font-size: 12px;
        }


        /* SEARCH */

        .search-container {

            position: relative;

            margin-bottom: 20px;
        }


        .search-container i {

            position: absolute;

            left: 18px;

            top: 50%;

            transform: translateY(-50%);

            color: #00d9ff;

            font-size: 19px;
        }


        #searchInput {

            width: 100%;

            height: 55px;

            padding-left: 52px;

            padding-right: 20px;

            border-radius: 15px;

            border: 1px solid rgba(255,255,255,0.20);

            outline: none;

            background: rgba(255,255,255,0.10);

            color: white;

            backdrop-filter: blur(15px);

            font-size: 14px;

            transition: 0.3s;
        }


        #searchInput::placeholder {

            color: rgba(255,255,255,0.55);
        }


        #searchInput:focus {

            border-color: #00d9ff;

            box-shadow:
                0 0 20px rgba(0,217,255,0.15);
        }


        /* TABLE CARD */

        .table-card {

            background: rgba(255,255,255,0.10);

            border: 1px solid rgba(255,255,255,0.20);

            backdrop-filter: blur(18px);

            border-radius: 25px;

            padding: 20px;

            box-shadow:
                0 20px 50px rgba(0,0,0,0.30);

            animation: slideUp 0.9s ease;
        }


        /* TABLE */

        .employee-table {

            width: 100%;

            border-collapse: separate;

            border-spacing: 0 9px;
        }


        .employee-table thead th {

            padding: 17px;

            color: #00d9ff;

            background: rgba(0,0,0,0.25);

            font-size: 13px;

            text-transform: uppercase;

            letter-spacing: 1px;
        }


        .employee-table thead th:first-child {

            border-radius: 12px 0 0 12px;
        }


        .employee-table thead th:last-child {

            border-radius: 0 12px 12px 0;
        }


        /* ROW */

        .employee-row {

            background: rgba(255,255,255,0.07);

            transition: all 0.3s ease;
        }


        .employee-row:hover {

            background: rgba(0,217,255,0.13);

            transform: translateY(-3px);

            box-shadow:
                0 10px 25px rgba(0,0,0,0.25);
        }


        .employee-row td {

            padding: 16px;

            border-top: 1px solid rgba(255,255,255,0.08);

            border-bottom: 1px solid rgba(255,255,255,0.08);

            font-size: 14px;
        }


        .employee-row td:first-child {

            border-left: 1px solid rgba(255,255,255,0.08);

            border-radius: 12px 0 0 12px;
        }


        .employee-row td:last-child {

            border-right: 1px solid rgba(255,255,255,0.08);

            border-radius: 0 12px 12px 0;
        }


        /* ID */

        .id-badge {

            display: inline-block;

            padding: 7px 13px;

            border-radius: 20px;

            background: rgba(0,217,255,0.12);

            color: #68eaff;

            font-weight: bold;

            font-size: 12px;
        }


        /* NAME */

        .name-box {

            display: flex;

            align-items: center;

            gap: 12px;

            font-weight: bold;
        }


        .avatar {

            width: 40px;

            height: 40px;

            border-radius: 50%;

            display: flex;

            align-items: center;

            justify-content: center;

            background: linear-gradient(
                135deg,
                #00d9ff,
                #0066ff
            );

            font-weight: bold;

            color: white;

            box-shadow:
                0 5px 15px rgba(0,100,255,0.30);
        }


        /* DEPARTMENT */

        .department {

            display: inline-block;

            padding: 7px 14px;

            border-radius: 20px;

            background: rgba(120,80,255,0.15);

            color: #c7b8ff;

            border: 1px solid rgba(140,100,255,0.30);

            font-size: 12px;
        }


        /* DESIGNATION */

        .designation {

            color: #dceeff;

        }


        .designation i {

            color: #00d9ff;

            margin-right: 8px;
        }


        /* NO DATA */

        .no-data {

            text-align: center;

            padding: 60px;

            color: rgba(255,255,255,0.60);
        }


        .no-data i {

            font-size: 50px;

            color: #00d9ff;

            display: block;

            margin-bottom: 15px;
        }


        /* FOOTER */

        .footer {

            text-align: center;

            margin-top: 25px;

            color: rgba(255,255,255,0.45);

            font-size: 12px;
        }


        /* ANIMATION */

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


        @keyframes floatIcon {

            0%, 100% {

                transform: translateY(0);
            }

            50% {

                transform: translateY(-7px);
            }
        }


        /* MOBILE */

        @media(max-width: 768px) {

            .main-title {

                font-size: 22px;
            }

            .header-box {

                padding: 20px;
            }

            .title-icon {

                width: 55px;

                height: 55px;

                font-size: 24px;
            }

            .employee-table {

                min-width: 750px;
            }

            .table-card {

                overflow-x: auto;
            }
        }

    </style>

</head>


<body>


<!-- NAVBAR -->

<div class="topbar">

    <div class="container">

        <a href="#" class="logo">

            <i class="bi bi-buildings-fill"></i>

            Employee Management System

        </a>

    </div>

</div>


<!-- MAIN -->

<div class="main-container">


    <!-- HEADER -->

    <div class="header-box">

        <div class="d-flex justify-content-between align-items-center flex-wrap gap-4">

            <div class="title-area">

                <div class="title-icon">

                    <i class="bi bi-people-fill"></i>

                </div>

                <div>

                    <div class="main-title">

                        Department Wise Employees

                    </div>

                    <div class="sub-title">

                        Employee information and department directory

                    </div>

                </div>

            </div>


            <div class="count-box">

                <i class="bi bi-person-vcard-fill"></i>

               

                <span>Total Employees</span>

            </div>

        </div>

    </div>


    <!-- SEARCH -->

    <div class="search-container">

        <i class="bi bi-search"></i>

        <input
            type="text"
            id="searchInput"
            placeholder="Search by employee name, ID, department or designation..."
            onkeyup="searchEmployees()">

    </div>


    <!-- TABLE -->

    <div class="table-card">

        <div class="table-responsive">

            <table class="employee-table" id="employeeTable">

                <thead>

                    <tr>

                        <th>
                            <i class="bi bi-fingerprint"></i>
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
                            <i class="bi bi-briefcase-fill"></i>
                            Designation
                        </th>

                    </tr>

                </thead>


                <tbody>


                    <c:forEach items="${temp}" var="demo">

                        <tr class="employee-row">


                            <!-- ID -->

                            <td>

                                <span class="id-badge">

                                    <i class="bi bi-hash"></i>

                                    ${demo[0]}

                                </span>

                            </td>


                            <!-- NAME -->

                            <td>

                                <div class="name-box">

                                    <div class="avatar">

                                        ${demo[1].substring(0,1)}

                                    </div>

                                    <span>

                                        ${demo[1]}

                                    </span>

                                </div>

                            </td>


                            <!-- DEPARTMENT -->

                            <td>

                                <span class="department">

                                    <i class="bi bi-diagram-3-fill"></i>

                                    ${demo[2]}

                                </span>

                            </td>


                            <!-- DESIGNATION -->

                            <td>

                                <span class="designation">

                                    <i class="bi bi-person-workspace"></i>

                                    ${demo[3]}

                                </span>

                            </td>


                        </tr>

                    </c:forEach>


                    <!-- EMPTY DATA -->

                    <c:if test="${empty temp}">

                        <tr>

                            <td colspan="4">

                                <div class="no-data">

                                    <i class="bi bi-people"></i>

                                    <h4>No Employees Found</h4>

                                    <p>

                                        No employee records are available.

                                    </p>

                                </div>

                            </td>

                        </tr>

                    </c:if>


                </tbody>

            </table>

        </div>

    </div>


    <div class="footer">

        <i class="bi bi-shield-check"></i>

        Employee Management System

        &nbsp; | &nbsp;

        Department Directory

    </div>


</div>


<!-- JAVASCRIPT -->

<script>

    function searchEmployees() {

        let input =
            document.getElementById("searchInput")
            .value
            .toLowerCase();

        let rows =
            document.querySelectorAll(".employee-row");

        rows.forEach(function(row) {

            let text =
                row.innerText.toLowerCase();

            if (text.includes(input)) {

                row.style.display = "";

            } else {

                row.style.display = "none";

            }

        });

    }

</script>


</body>

</html>
