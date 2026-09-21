
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

    <title>Message Box</title>


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

    padding: 50px 20px;

    background:
        linear-gradient(
            135deg,
            rgba(20, 30, 70, 0.94),
            rgba(55, 35, 95, 0.92),
            rgba(15, 75, 95, 0.90)
        ),
        url("https://images.unsplash.com/photo-1557804506-669a67965ba0?auto=format&fit=crop&w=2000&q=80");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;

    overflow-x: hidden;
}

        .main-container {

            max-width: 1200px;

            margin: auto;

            animation: pageLoad 0.8s ease;
        }


        @keyframes pageLoad {

            from {

                opacity: 0;

                transform: translateY(40px);
            }

            to {

                opacity: 1;

                transform: translateY(0);
            }
        }


        .page-header {

            text-align: center;

            color: white;

            margin-bottom: 30px;
        }


        .icon-circle {

            width: 85px;

            height: 85px;

            margin: auto;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 50%;

            background: rgba(255,255,255,0.20);

            border: 2px solid rgba(255,255,255,0.4);

            backdrop-filter: blur(10px);

            box-shadow:
                0 10px 30px rgba(0,0,0,0.25);

            animation: iconAnimation 2s infinite;
        }


        .icon-circle i {

            font-size: 38px;
        }


        @keyframes iconAnimation {

            0% {
                transform: scale(1);
            }

            50% {
                transform: scale(1.08);
            }

            100% {
                transform: scale(1);
            }
        }


        .page-header h1 {

            margin-top: 15px;

            font-size: 36px;

            font-weight: 700;

            text-shadow:
                0 5px 15px rgba(0,0,0,0.3);
        }


        .page-header p {

            font-size: 14px;

            opacity: 0.9;
        }


        .message-card {

            background: rgba(255,255,255,0.96);

            border-radius: 25px;

            padding: 30px;

            box-shadow:
                0 25px 60px rgba(0,0,0,0.25);

            backdrop-filter: blur(10px);
        }


        .card-header-custom {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 25px;

            padding-bottom: 18px;

            border-bottom: 1px solid #eeeeee;
        }


        .card-title-custom {

            font-size: 22px;

            font-weight: 600;

            color: #333;
        }


        .card-title-custom i {

            color: #0d6efd;

            margin-right: 8px;
        }


        .message-badge {

            background: linear-gradient(
                135deg,
                #0d6efd,
                #6f42c1
            );

            color: white;

            padding: 8px 16px;

            border-radius: 30px;

            font-size: 13px;
        }


        .table-responsive {

            border-radius: 15px;
        }


        .custom-table {

            width: 100%;

            border-collapse: separate;

            border-spacing: 0 10px;

            margin-bottom: 0;
        }


        .custom-table thead th {

            background: #0d6efd;

            color: white;

            padding: 15px;

            font-size: 14px;

            white-space: nowrap;

            border: none;
        }


        .custom-table thead th:first-child {

            border-radius: 12px 0 0 12px;
        }


        .custom-table thead th:last-child {

            border-radius: 0 12px 12px 0;
        }


        .custom-table tbody tr {

            background: #f8f9fa;

            transition: all 0.3s ease;
        }


        .custom-table tbody tr:hover {

            background: white;

            transform: translateY(-4px);

            box-shadow:
                0 8px 20px rgba(0,0,0,0.12);
        }


        .custom-table tbody td {

            padding: 17px 15px;

            vertical-align: middle;

            border: none;

            color: #444;

            font-size: 14px;
        }


        .custom-table tbody td:first-child {

            border-radius: 12px 0 0 12px;

            color: #0d6efd;

            font-weight: 600;
        }


        .custom-table tbody td:last-child {

            border-radius: 0 12px 12px 0;
        }


        .user-info {

            display: flex;

            align-items: center;

            gap: 10px;

            font-weight: 500;
        }


        .user-icon {

            width: 40px;

            height: 40px;

            border-radius: 50%;

            display: flex;

            align-items: center;

            justify-content: center;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #0d6efd,
                    #6f42c1
                );
        }


       
.message-content {

    display: flex;

    align-items: center;

    gap: 10px;

    max-width: 450px;

    line-height: 1.7;

    font-family: 'Georgia', 'Times New Roman', serif;

    font-size: 15px;

    font-weight: 500;

    color: #343a40;

    letter-spacing: 0.2px;
}


        .message-icon {

            min-width: 38px;

            height: 38px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 10px;

            background: #e7f1ff;

            color: #0d6efd;
        }


        .apply-btn {

            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 10px 18px;

            border-radius: 30px;

            text-decoration: none;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #0d6efd,
                    #6f42c1
                );

            font-size: 13px;

            font-weight: 500;

            transition: all 0.3s ease;

            box-shadow:
                0 5px 15px rgba(13,110,253,0.25);
        }


        .apply-btn:hover {

            color: white;

            transform: translateY(-3px);

            box-shadow:
                0 10px 25px rgba(13,110,253,0.4);
        }


        .apply-btn i {

            transition: 0.3s;
        }


        .apply-btn:hover i {

            transform: translateX(5px);
        }


        .empty-box {

            text-align: center;

            padding: 60px 20px;

            color: #777;
        }


        .empty-box i {

            font-size: 65px;

            color: #ced4da;

            margin-bottom: 20px;

            animation: floating 3s infinite ease-in-out;
        }


        @keyframes floating {

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

            font-weight: 600;

            color: #555;

            margin-bottom: 10px;
        }


        .footer {

            text-align: center;

            color: rgba(255,255,255,0.85);

            margin-top: 25px;

            font-size: 13px;
        }


        @media(max-width: 768px) {

            body {

                padding: 30px 10px;
            }


            .message-card {

                padding: 18px;
            }


            .page-header h1 {

                font-size: 27px;
            }


            .card-header-custom {

                flex-direction: column;

                align-items: flex-start;

                gap: 12px;
            }


            .custom-table {

                min-width: 750px;
            }
        }

    </style>

</head>


<body>


<div class="main-container">


    <div class="page-header">

        <div class="icon-circle">

            <i class="fa-solid fa-comments"></i>

        </div>


        <h1>
            Show All Messages
        </h1>


        <p>
            Employee Leave Management Message Box
        </p>

    </div>



    <div class="message-card">


        <div class="card-header-custom">


            <div class="card-title-custom">

                <i class="fa-solid fa-envelope-open-text"></i>

                All Leave Messages

            </div>


            <div class="message-badge">

                <i class="fa-solid fa-message"></i>

                Message Box

            </div>


        </div>



        <div class="table-responsive">


            <c:choose>

                <c:when test="${not empty msg}">


                    <table class="custom-table">


                        <thead>

                            <tr>

                                <th>
                                    <i class="fa-solid fa-hashtag"></i>
                                    Message ID
                                </th>


                                <th>
                                    <i class="fa-solid fa-user"></i>
                                    Name
                                </th>


                                <th>
                                    <i class="fa-solid fa-comment"></i>
                                    Message
                                </th>


                                <th>
                                    <i class="fa-solid fa-paper-plane"></i>
                                    Send Request Again
                                </th>

                            </tr>

                        </thead>


                        <tbody>


                            <c:forEach items="${msg}" var="ms">


                                <tr>


                                    <td>

                                        <i class="fa-solid fa-hashtag"></i>

                                        ${ms.mid}

                                    </td>


                                    <td>

                                        <div class="user-info">

                                            <div class="user-icon">

                                                <i class="fa-solid fa-user"></i>

                                            </div>

                                            <span>
                                                ${ms.name}
                                            </span>

                                        </div>

                                    </td>


                                    <td>

                                        <div class="message-content">

                                            <div class="message-icon">

                                                <i class="fa-solid fa-envelope"></i>

                                            </div>


                                            <span>
                                                ${ms.message}
                                            </span>

                                        </div>

                                    </td>


                                    <td>

                                        <a
                                            href="LeaveRequests"
                                            class="apply-btn"
                                            onclick="return confirmApply();">

                                            <i class="fa-solid fa-rotate-right"></i>

                                            Apply Again

                                        </a>

                                    </td>


                                </tr>


                            </c:forEach>


                        </tbody>

                    </table>


                </c:when>


                <c:otherwise>


                    <div class="empty-box">

                        <i class="fa-regular fa-envelope"></i>


                        <h4>
                            No Messages Found
                        </h4>


                        <p>
                            You currently don't have any leave messages.
                        </p>


                        <a
                            href="LeaveRequests"
                            class="apply-btn">

                            <i class="fa-solid fa-plus"></i>

                            Create Leave Request

                        </a>

                    </div>


                </c:otherwise>


            </c:choose>


        </div>


    </div>



    <div class="footer">

        <i class="fa-solid fa-shield-halved"></i>

        Employee Leave Management System

        &nbsp; | &nbsp;

        All Rights Reserved

    </div>


</div>



<script>

    function confirmApply() {

        return confirm(
            "Are you sure you want to send a leave request again?"
        );

    }


    document.addEventListener(
        "DOMContentLoaded",
        function() {

            const rows =
                document.querySelectorAll(
                    ".custom-table tbody tr"
                );


            rows.forEach(
                function(row, index) {

                    row.style.opacity = "0";

                    row.style.transform =
                        "translateY(20px)";


                    setTimeout(
                        function() {

                            row.style.transition =
                                "all 0.5s ease";

                            row.style.opacity = "1";

                            row.style.transform =
                                "translateY(0)";

                        },
                        index * 120
                    );

                }
            );

        }
    );

</script>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>