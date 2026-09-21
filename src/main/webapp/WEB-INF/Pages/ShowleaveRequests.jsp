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

<title>Employee Leave Requests</title>


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
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">


<style>

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }


  body {

    font-family: 'Poppins', sans-serif;

    min-height: 100vh;

    padding: 40px 20px;

    background:
        linear-gradient(
            135deg,
            rgba(8, 25, 55, 0.94),
            rgba(20, 55, 90, 0.88),
            rgba(25, 35, 75, 0.92)
        ),
        url("https://img.freepik.com/premium-photo/it-information-technology-wallpaper-hd-4k_7419-4529.jpg?w=740");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;

    overflow-x: hidden;
}


    /* Floating background circles */

    body::before,
    body::after {

        content: "";

        position: fixed;

        border-radius: 50%;

        filter: blur(2px);

        z-index: -1;

        animation: floating 7s infinite ease-in-out;
    }


    body::before {

        width: 250px;

        height: 250px;

        background: rgba(13,110,253,0.18);

        top: 5%;

        left: 3%;
    }


    body::after {

        width: 300px;

        height: 300px;

        background: rgba(111,66,193,0.20);

        bottom: 5%;

        right: 3%;

        animation-delay: 2s;
    }


    @keyframes floating {

        0% {
            transform: translateY(0) rotate(0deg);
        }

        50% {
            transform: translateY(-30px) rotate(10deg);
        }

        100% {
            transform: translateY(0) rotate(0deg);
        }
    }


    /* Main container */

    .main-container {

        max-width: 1450px;

        margin: auto;

        animation: pageLoad 0.9s ease;
    }


    @keyframes pageLoad {

        from {

            opacity: 0;

            transform: translateY(50px);
        }

        to {

            opacity: 1;

            transform: translateY(0);
        }
    }


    /* Header */

    .page-header {

        text-align: center;

        color: white;

        margin-bottom: 30px;
    }


    .logo-circle {

        width: 90px;

        height: 90px;

        margin: auto;

        display: flex;

        align-items: center;

        justify-content: center;

        border-radius: 50%;

        background:
            linear-gradient(
                135deg,
                #0d6efd,
                #6f42c1
            );

        border: 3px solid rgba(255,255,255,0.5);

        box-shadow:
            0 15px 35px rgba(0,0,0,0.35);

        animation: logoPulse 2.5s infinite;
    }


    .logo-circle i {

        font-size: 42px;

        color: white;
    }


    @keyframes logoPulse {

        0% {

            transform: scale(1);

            box-shadow:
                0 15px 35px rgba(0,0,0,0.35);
        }

        50% {

            transform: scale(1.08);

            box-shadow:
                0 20px 50px rgba(13,110,253,0.45);
        }

        100% {

            transform: scale(1);

            box-shadow:
                0 15px 35px rgba(0,0,0,0.35);
        }
    }


    .page-header h1 {

        margin-top: 18px;

        font-size: 38px;

        font-weight: 700;

        text-shadow:
            0 5px 15px rgba(0,0,0,0.35);
    }


    .page-header p {

        font-size: 14px;

        opacity: 0.9;

        margin-top: 8px;
    }


    /* Main card */

    .leave-card {

        background: rgba(255,255,255,0.97);

        border-radius: 25px;

        padding: 30px;

        box-shadow:
            0 30px 70px rgba(0,0,0,0.30);

        backdrop-filter: blur(15px);

        overflow: hidden;
    }


    /* Card top section */

    .card-top {

        display: flex;

        align-items: center;

        justify-content: space-between;

        margin-bottom: 25px;

        padding-bottom: 20px;

        border-bottom: 1px solid #e9ecef;
    }


    .card-title {

        display: flex;

        align-items: center;

        gap: 12px;

        font-size: 23px;

        font-weight: 600;

        color: #252525;
    }


    .card-title i {

        color: #0d6efd;

        font-size: 27px;
    }


    .request-count {

        padding: 9px 18px;

        border-radius: 30px;

        color: white;

        font-size: 13px;

        background:
            linear-gradient(
                135deg,
                #0d6efd,
                #6f42c1
            );

        box-shadow:
            0 5px 15px rgba(13,110,253,0.25);
    }


    /* Table */

    .table-container {

        overflow-x: auto;

        border-radius: 18px;
    }


    .custom-table {

        width: 100%;

        min-width: 1250px;

        border-collapse: separate;

        border-spacing: 0 9px;
    }


    .custom-table thead th {

        padding: 16px 12px;

        background:
            linear-gradient(
                135deg,
                #0d6efd,
                #5146c7
            );

        color: white;

        border: none;

        font-size: 13px;

        font-weight: 600;

        white-space: nowrap;
    }


    .custom-table thead th:first-child {

        border-radius: 12px 0 0 12px;
    }


    .custom-table thead th:last-child {

        border-radius: 0 12px 12px 0;
    }


    .custom-table tbody tr {

        background: #f8f9fc;

        transition:
            transform 0.3s ease,
            box-shadow 0.3s ease,
            background 0.3s ease;

        animation: rowAppear 0.6s ease forwards;

        opacity: 0;
    }


    @keyframes rowAppear {

        from {

            opacity: 0;

            transform: translateY(25px);
        }

        to {

            opacity: 1;

            transform: translateY(0);
        }
    }


    .custom-table tbody tr:hover {

        background: white;

        transform: translateY(-5px) scale(1.002);

        box-shadow:
            0 10px 25px rgba(0,0,0,0.12);
    }


    .custom-table tbody td {

        padding: 15px 12px;

        border: none;

        color: #444;

        font-size: 13px;

        vertical-align: middle;
    }


    .custom-table tbody td:first-child {

        border-radius: 12px 0 0 12px;

        color: #0d6efd;

        font-weight: 700;
    }


    .custom-table tbody td:last-child {

        border-radius: 0 12px 12px 0;
    }


    /* Employee */

    .employee-info {

        display: flex;

        align-items: center;

        gap: 10px;

        min-width: 150px;
    }


    .employee-icon {

        width: 40px;

        height: 40px;

        min-width: 40px;

        display: flex;

        align-items: center;

        justify-content: center;

        border-radius: 50%;

        color: white;

        background:
            linear-gradient(
                135deg,
                #0d6efd,
                #6f42c1
            );

        box-shadow:
            0 4px 10px rgba(13,110,253,0.25);
    }


    .employee-name {

        font-weight: 600;

        color: #303030;
    }


    /* Badges */

    .info-badge {

        display: inline-block;

        padding: 6px 11px;

        border-radius: 20px;

        font-size: 11px;

        font-weight: 600;

        background: #e9f2ff;

        color: #0d6efd;
    }


    .priority-badge {

        display: inline-block;

        padding: 6px 12px;

        border-radius: 20px;

        font-size: 11px;

        font-weight: 600;

        background: #fff3cd;

        color: #856404;
    }


    .leave-badge {

        display: inline-block;

        padding: 6px 11px;

        border-radius: 20px;

        font-size: 11px;

        font-weight: 600;

        background: #e8f5e9;

        color: #198754;
    }


    /* Date */

    .date-box {

        white-space: nowrap;

        color: #555;

        font-weight: 500;
    }


    .date-box i {

        color: #6f42c1;

        margin-right: 5px;
    }


    /* Contact */

    .contact {

        white-space: nowrap;

        font-weight: 500;
    }


    .contact i {

        color: #198754;

        margin-right: 5px;
    }


    /* Reason */

    .reason {

        max-width: 200px;

        min-width: 150px;

        line-height: 1.5;

        color: #666;
    }


    /* Action buttons */

    .action-buttons {

        display: flex;

        gap: 8px;

        white-space: nowrap;
    }


    .action-btn {

        display: inline-flex;

        align-items: center;

        justify-content: center;

        gap: 6px;

        padding: 9px 13px;

        border: none;

        border-radius: 25px;

        text-decoration: none;

        color: white;

        font-size: 11px;

        font-weight: 600;

        transition: all 0.3s ease;

        cursor: pointer;
    }


    .approve-btn {

        background:
            linear-gradient(
                135deg,
                #198754,
                #20c997
            );

        box-shadow:
            0 4px 12px rgba(25,135,84,0.25);
    }


    .cancel-btn {

        background:
            linear-gradient(
                135deg,
                #dc3545,
                #fd7e14
            );

        box-shadow:
            0 4px 12px rgba(220,53,69,0.25);
    }


    .action-btn:hover {

        color: white;

        transform: translateY(-3px);

        box-shadow:
            0 8px 18px rgba(0,0,0,0.20);
    }


    .action-btn:active {

        transform: scale(0.94);
    }


    /* Empty state */

    .empty-box {

        text-align: center;

        padding: 70px 20px;

        color: #777;
    }


    .empty-icon {

        width: 100px;

        height: 100px;

        margin: auto;

        display: flex;

        align-items: center;

        justify-content: center;

        border-radius: 50%;

        background: #f1f3f5;

        animation: emptyFloat 3s infinite ease-in-out;
    }


    .empty-icon i {

        font-size: 45px;

        color: #adb5bd;
    }


    @keyframes emptyFloat {

        0% {
            transform: translateY(0);
        }

        50% {
            transform: translateY(-12px);
        }

        100% {
            transform: translateY(0);
        }
    }


    .empty-box h4 {

        margin-top: 20px;

        font-weight: 600;

        color: #555;
    }


    /* Footer */

    .footer {

        text-align: center;

        color: rgba(255,255,255,0.85);

        font-size: 13px;

        margin-top: 25px;
    }


    /* Scrollbar */

    ::-webkit-scrollbar {

        height: 8px;

        width: 8px;
    }


    ::-webkit-scrollbar-track {

        background: #e9ecef;

        border-radius: 10px;
    }


    ::-webkit-scrollbar-thumb {

        background:
            linear-gradient(
                135deg,
                #0d6efd,
                #6f42c1
            );

        border-radius: 10px;
    }


    /* Mobile */

    @media(max-width: 768px) {

        body {

            padding: 25px 10px;
        }


        .leave-card {

            padding: 18px;

            border-radius: 18px;
        }


        .page-header h1 {

            font-size: 27px;
        }


        .logo-circle {

            width: 75px;

            height: 75px;
        }


        .logo-circle i {

            font-size: 34px;
        }


        .card-top {

            flex-direction: column;

            align-items: flex-start;

            gap: 15px;
        }

    }

</style>
```

</head>

<body>

<div class="main-container">

```
<!-- Page Header -->

<div class="page-header">

    <div class="logo-circle">

        <i class="fa-solid fa-building-user"></i>

    </div>


    <h1>
        Employee Leave Requests
    </h1>


    <p>
        Manage, review and process employee leave applications
    </p>

</div>



<!-- Main Card -->

<div class="leave-card">


    <div class="card-top">


        <div class="card-title">

            <i class="fa-solid fa-calendar-check"></i>

            <span>
                Pending Leave Requests
            </span>

        </div>


        <div class="request-count">

            <i class="fa-solid fa-users"></i>

            <span id="requestCount">0</span>

            Requests

        </div>


    </div>



    <div class="table-container">


        <c:choose>


            <c:when test="${not empty temp}">


                <table class="custom-table">


                    <thead>

                        <tr>

                            <th>
                                <i class="fa-solid fa-hashtag"></i>
                                Sr.No
                            </th>

                            <th>
                                <i class="fa-solid fa-user"></i>
                                Employee
                            </th>

                            <th>
                                <i class="fa-solid fa-id-card"></i>
                                Employee ID
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
                                <i class="fa-solid fa-calendar-days"></i>
                                Leave Type
                            </th>

                            <th>
                                <i class="fa-solid fa-flag"></i>
                                Priority
                            </th>

                            <th>
                                <i class="fa-solid fa-calendar-plus"></i>
                                Start Date
                            </th>

                            <th>
                                <i class="fa-solid fa-calendar-minus"></i>
                                End Date
                            </th>

                            <th>
                                <i class="fa-solid fa-phone"></i>
                                Contact
                            </th>

                            <th>
                                <i class="fa-solid fa-user-group"></i>
                                Handover Person
                            </th>

                            <th>
                                <i class="fa-solid fa-comment"></i>
                                Reason
                            </th>

                            <th>
                                <i class="fa-solid fa-gears"></i>
                                Action
                            </th>

                        </tr>

                    </thead>



                    <tbody>


                        <c:forEach items="${temp}" var="t1">


                            <tr>


                                <td>

                                    ${t1.lid}

                                </td>



                                <td>

                                    <div class="employee-info">

                                        <div class="employee-icon">

                                            <i class="fa-solid fa-user"></i>

                                        </div>


                                        <span class="employee-name">

                                            ${t1.empName}

                                        </span>

                                    </div>

                                </td>



                                <td>

                                    <span class="info-badge">

                                        ${t1.empId}

                                    </span>

                                </td>



                                <td>

                                    ${t1.empDepartment}

                                </td>



                                <td>

                                    ${t1.empDesignation}

                                </td>



                                <td>

                                    <span class="leave-badge">

                                        <i class="fa-solid fa-plane-departure"></i>

                                        ${t1.leaveType}

                                    </span>

                                </td>



                                <td>

                                    <span class="priority-badge">

                                        <i class="fa-solid fa-circle-exclamation"></i>

                                        ${t1.priority}

                                    </span>

                                </td>



                                <td>

                                    <div class="date-box">

                                        <i class="fa-regular fa-calendar"></i>

                                        ${t1.leaveStartDate}

                                    </div>

                                </td>



                                <td>

                                    <div class="date-box">

                                        <i class="fa-regular fa-calendar"></i>

                                        ${t1.leaveEndDate}

                                    </div>

                                </td>



                                <td>

                                    <div class="contact">

                                        <i class="fa-solid fa-phone"></i>

                                        ${t1.contactNumber}

                                    </div>

                                </td>



                                <td>

                                    <i class="fa-solid fa-user-check text-primary"></i>

                                    ${t1.handoverPerson}

                                </td>



                                <td>

                                    <div class="reason">

                                        ${t1.reason}

                                    </div>

                                </td>



                                <td>

                                    <div class="action-buttons">


                                        <a
                                            href="approve/${t1.lid}"
                                            class="action-btn approve-btn"
                                            onclick="return confirmApprove('${t1.empName}');">

                                            <i class="fa-solid fa-circle-check"></i>

                                            Approve

                                        </a>



                                        <a
                                            href="cancel/${t1.lid}"
                                            class="action-btn cancel-btn"
                                            onclick="return confirmCancel('${t1.empName}');">

                                            <i class="fa-solid fa-circle-xmark"></i>

                                            Cancel

                                        </a>


                                    </div>

                                </td>


                            </tr>


                        </c:forEach>


                    </tbody>

                </table>


            </c:when>



            <c:otherwise>


                <div class="empty-box">


                    <div class="empty-icon">

                        <i class="fa-regular fa-calendar-xmark"></i>

                    </div>


                    <h4>
                        No Pending Leave Requests
                    </h4>


                    <p>
                        There are currently no employee leave requests waiting for approval.
                    </p>


                </div>


            </c:otherwise>


        </c:choose>


    </div>


</div>



<!-- Footer -->

<div class="footer">

    <i class="fa-solid fa-shield-halved"></i>

    Employee Leave Management System

    &nbsp; | &nbsp;

    Secure Leave Management

</div>
```

</div>

<!-- JavaScript -->

<script>

    /* Count requests */

    document.addEventListener(
        "DOMContentLoaded",
        function() {

            const rows =
                document.querySelectorAll(
                    ".custom-table tbody tr"
                );

            const count =
                document.getElementById("requestCount");

            if (count) {

                count.textContent = rows.length;

            }


            /* Animate rows one by one */

            rows.forEach(
                function(row, index) {

                    row.style.animationDelay =
                        (index * 0.08) + "s";

                }
            );

        }
    );



    /* Approve confirmation */

    function confirmApprove(name) {

        return confirm(
            "Are you sure you want to APPROVE the leave request of "
            + name
            + "?"
        );

    }



    /* Cancel confirmation */

    function confirmCancel(name) {

        return confirm(
            "Are you sure you want to CANCEL the leave request of "
            + name
            + "?"
        );

    }

</script>

<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
