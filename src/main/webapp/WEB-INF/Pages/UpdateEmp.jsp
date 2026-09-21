<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Manage Employee | EmployeeHub</title>


    <!-- =====================================================
         BOOTSTRAP
    ====================================================== -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- =====================================================
         BOOTSTRAP ICONS
    ====================================================== -->

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


    <!-- =====================================================
         GOOGLE FONT
    ====================================================== -->

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">


    <style>

        /* =====================================================
           GLOBAL
        ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {

            min-height: 100vh;

            font-family: 'Inter', sans-serif;

            color: white;

            overflow-x: hidden;

            background:
                linear-gradient(
                    120deg,
                    rgba(2, 8, 23, 0.96),
                    rgba(3, 25, 55, 0.91),
                    rgba(0, 55, 90, 0.82)
                ),
                url("https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=2000&q=90");

            background-size: cover;

            background-position: center;

            background-attachment: fixed;
        }


        /* =====================================================
           ANIMATED BACKGROUND
        ===================================================== */

        body::before {

            content: "";

            position: fixed;

            width: 380px;

            height: 380px;

            border-radius: 50%;

            background: rgba(0, 210, 255, 0.18);

            filter: blur(100px);

            top: -120px;

            left: -100px;

            pointer-events: none;

            animation: orbOne 9s ease-in-out infinite alternate;

            z-index: 0;
        }


        body::after {

            content: "";

            position: fixed;

            width: 450px;

            height: 450px;

            border-radius: 50%;

            background: rgba(80, 60, 255, 0.16);

            filter: blur(110px);

            bottom: -150px;

            right: -130px;

            pointer-events: none;

            animation: orbTwo 11s ease-in-out infinite alternate;

            z-index: 0;
        }


        @keyframes orbOne {

            0% {
                transform: translate(0,0);
            }

            100% {
                transform: translate(180px,120px);
            }
        }


        @keyframes orbTwo {

            0% {
                transform: translate(0,0);
            }

            100% {
                transform: translate(-150px,-120px);
            }
        }


        /* =====================================================
           NAVBAR
        ===================================================== */

        .top-navbar {

            width: 94%;

            max-width: 1280px;

            margin: 20px auto;

            padding: 15px 22px;

            border-radius: 18px;

            background: rgba(255,255,255,0.08);

            border: 1px solid rgba(255,255,255,0.14);

            backdrop-filter: blur(18px);

            box-shadow:
                0 15px 40px rgba(0,0,0,0.30);

            position: relative;

            z-index: 5;

            animation: navDown 0.8s ease;
        }


        @keyframes navDown {

            from {
                opacity: 0;
                transform: translateY(-25px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }


        .brand {

            display: flex;

            align-items: center;

            gap: 10px;

            font-size: 21px;

            font-weight: 800;

            letter-spacing: 0.5px;
        }


        .brand-icon {

            width: 42px;

            height: 42px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 12px;

            background:
                linear-gradient(
                    135deg,
                    #00d9ff,
                    #087cff
                );

            box-shadow:
                0 8px 25px rgba(0,190,255,0.30);

            animation: iconFloat 3s ease-in-out infinite;
        }


        @keyframes iconFloat {

            0%,100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-4px);
            }
        }


        .brand span {
            color: #00ddff;
        }


        /* =====================================================
           BACK BUTTON
        ===================================================== */

        .back-btn {

            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 10px 16px;

            border-radius: 11px;

            text-decoration: none;

            color: white;

            font-size: 12px;

            font-weight: 600;

            border: 1px solid rgba(0,220,255,0.25);

            background: rgba(0,190,255,0.08);

            transition: all 0.3s ease;
        }


        .back-btn:hover {

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #00c6ff,
                    #0072ff
                );

            transform: translateX(-4px);

            box-shadow:
                0 8px 25px rgba(0,190,255,0.30);
        }


        /* =====================================================
           PAGE WRAPPER
        ===================================================== */

        .page-wrapper {

            width: 94%;

            max-width: 1280px;

            margin: 30px auto 60px;

            position: relative;

            z-index: 2;

            animation: pageAppear 1s ease;
        }


        @keyframes pageAppear {

            from {

                opacity: 0;

                transform:
                    translateY(35px)
                    scale(0.97);
            }

            to {

                opacity: 1;

                transform:
                    translateY(0)
                    scale(1);
            }
        }


        /* =====================================================
           MAIN CARD
        ===================================================== */

        .manage-card {

            overflow: hidden;

            border-radius: 28px;

            background:
                linear-gradient(
                    135deg,
                    rgba(5,22,43,0.94),
                    rgba(4,31,55,0.90)
                );

            border: 1px solid rgba(75,215,255,0.20);

            backdrop-filter: blur(20px);

            box-shadow:
                0 35px 90px rgba(0,0,0,0.60);
        }


        /* =====================================================
           LEFT PANEL
        ===================================================== */

        .left-panel {

            min-height: 850px;

            padding: 50px 42px;

            position: relative;

            overflow: hidden;

            background:
                linear-gradient(
                    145deg,
                    rgba(0,20,40,0.88),
                    rgba(0,50,78,0.55)
                );
        }


        .left-panel::before {

            content: "";

            position: absolute;

            inset: 0;

            background-image:

                linear-gradient(
                    rgba(0,210,255,0.04) 1px,
                    transparent 1px
                ),

                linear-gradient(
                    90deg,
                    rgba(0,210,255,0.04) 1px,
                    transparent 1px
                );

            background-size: 40px 40px;

            mask-image:
                linear-gradient(
                    to bottom,
                    black,
                    transparent
                );
        }


        /* =====================================================
           PROFILE ICON
        ===================================================== */

        .profile-icon {

            width: 105px;

            height: 105px;

            border-radius: 30px;

            display: flex;

            align-items: center;

            justify-content: center;

            margin-bottom: 25px;

            background:
                linear-gradient(
                    135deg,
                    rgba(0,220,255,0.20),
                    rgba(0,100,255,0.12)
                );

            border:
                1px solid rgba(80,220,255,0.35);

            box-shadow:
                0 20px 45px rgba(0,180,255,0.15);

            animation: profileFloat 4s ease-in-out infinite;
        }


        .profile-icon i {

            font-size: 50px;

            color: #52ddff;

            filter:
                drop-shadow(
                    0 0 15px
                    rgba(0,220,255,0.55)
                );
        }


        @keyframes profileFloat {

            0%,100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-10px);
            }
        }


        .company-name {

            color: #53dcff;

            font-size: 13px;

            font-weight: 800;

            letter-spacing: 3px;

            margin-bottom: 14px;
        }


        .left-panel h1 {

            font-size: 40px;

            line-height: 1.15;

            font-weight: 800;

            margin-bottom: 18px;
        }


        .left-panel h1 span {

            color: #50ddff;

            text-shadow:
                0 0 25px
                rgba(0,220,255,0.30);
        }


        .left-description {

            color:
                rgba(220,240,250,0.65);

            font-size: 14px;

            line-height: 1.8;

            max-width: 450px;

            margin-bottom: 35px;
        }


        /* =====================================================
           INFO BOXES
        ===================================================== */

        .info-box {

            display: flex;

            align-items: center;

            gap: 14px;

            padding: 15px;

            margin-bottom: 13px;

            border-radius: 14px;

            background:
                rgba(255,255,255,0.045);

            border:
                1px solid
                rgba(100,220,255,0.12);

            transition: 0.3s;
        }


        .info-box:hover {

            transform: translateX(7px);

            background:
                rgba(0,200,255,0.08);

            border-color:
                rgba(0,220,255,0.28);
        }


        .info-icon {

            width: 42px;

            height: 42px;

            flex-shrink: 0;

            border-radius: 12px;

            display: flex;

            align-items: center;

            justify-content: center;

            background:
                rgba(0,200,255,0.10);

            color: #4edcff;
        }


        .info-box strong {

            display: block;

            font-size: 13px;
        }


        .info-box small {

            color:
                rgba(210,235,245,0.48);

            font-size: 11px;
        }


        /* =====================================================
           FORM PANEL
        ===================================================== */

        .form-panel {

            padding: 45px 42px;

            background:
                linear-gradient(
                    145deg,
                    rgba(6,20,39,0.97),
                    rgba(4,25,47,0.93)
                );

            border-left:
                1px solid
                rgba(75,210,255,0.10);
        }


        /* =====================================================
           HEADER
        ===================================================== */

        .form-header {

            margin-bottom: 28px;
        }


        .form-header h2 {

            font-size: 29px;

            font-weight: 800;

            margin-bottom: 7px;
        }


        .form-header p {

            color:
                rgba(200,225,235,0.52);

            font-size: 12px;
        }


        .header-line {

            width: 60px;

            height: 4px;

            margin-top: 15px;

            border-radius: 10px;

            background:
                linear-gradient(
                    90deg,
                    #00d9ff,
                    #087cff
                );

            box-shadow:
                0 0 15px
                rgba(0,210,255,0.45);
        }


        /* =====================================================
           EDITING BADGE
        ===================================================== */

        .editing-badge {

            display: inline-flex;

            align-items: center;

            gap: 7px;

            padding: 7px 12px;

            border-radius: 20px;

            font-size: 10px;

            font-weight: 700;

            color: #67e8f9;

            background:
                rgba(0,198,255,0.10);

            border:
                1px solid
                rgba(0,198,255,0.25);

            margin-bottom: 18px;
        }


        .editing-badge i {

            font-size: 7px;

            animation: pulse 1.5s infinite;
        }


        @keyframes pulse {

            0% {
                opacity: 1;
            }

            50% {
                opacity: 0.3;
            }

            100% {
                opacity: 1;
            }
        }


        /* =====================================================
           LABEL
        ===================================================== */

        .form-label {

            color:
                rgba(225,242,250,0.82);

            font-size: 11px;

            font-weight: 700;

            margin-bottom: 7px;

            letter-spacing: 0.3px;
        }


        /* =====================================================
           INPUT GROUP
        ===================================================== */

        .input-group {

            margin-bottom: 17px;
        }


        .input-group-text {

            width: 46px;

            justify-content: center;

            border:
                1px solid
                rgba(92,180,215,0.20);

            border-right: none;

            background:
                rgba(0,170,220,0.07);

            color: #4bdcff;

            border-radius: 10px 0 0 10px;
        }


        .form-control,
        .form-select {

            height: 47px;

            color: #eafaff !important;

            background:
                rgba(255,255,255,0.045) !important;

            border:
                1px solid
                rgba(92,180,215,0.20);

            font-size: 12px;

            box-shadow: none !important;

            transition: all 0.3s ease;
        }


        .form-control::placeholder {

            color:
                rgba(200,225,235,0.32);
        }


        .form-control:focus,
        .form-select:focus {

            border-color: #21d9ff;

            background:
                rgba(0,190,255,0.06) !important;

            box-shadow:
                0 0 0 3px
                rgba(0,210,255,0.07),
                0 0 18px
                rgba(0,210,255,0.08) !important;
        }


        .form-select {

            border-radius: 0 10px 10px 0;
        }


        .form-select option {

            background: #071b31;

            color: white;
        }


        /* =====================================================
           EMPLOYEE ID
        ===================================================== */

        .employee-id-input {

            color: #54ddff !important;

            font-weight: 700;

            letter-spacing: 1px;
        }


        /* =====================================================
           PASSWORD
        ===================================================== */

        .password-input {

            border-radius: 0 !important;
        }


        .password-eye {

            width: 48px;

            height: 47px;

            border:
                1px solid
                rgba(92,180,215,0.20);

            border-left: none;

            background:
                rgba(0,170,220,0.07);

            color: #52dcff;

            border-radius: 0 10px 10px 0;

            display: flex;

            align-items: center;

            justify-content: center;

            cursor: pointer;

            transition: 0.3s;
        }


        .password-eye:hover {

            background:
                rgba(0,210,255,0.15);

            color: white;
        }


        /* =====================================================
           ACTION BUTTONS
        ===================================================== */

        .button-row {

            display: flex;

            gap: 12px;

            margin-top: 8px;
        }


        .update-btn {

            flex: 1;

            height: 52px;

            border: none;

            border-radius: 12px;

            color: white;

            font-size: 13px;

            font-weight: 700;

            background:
                linear-gradient(
                    100deg,
                    #00b8e6,
                    #087cff,
                    #00c8ee
                );

            background-size: 200% 100%;

            box-shadow:
                0 10px 30px
                rgba(0,160,255,0.20);

            transition: all 0.4s ease;

            animation:
                buttonGradient 5s ease infinite;
        }


        @keyframes buttonGradient {

            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }


        .update-btn:hover {

            transform: translateY(-3px);

            box-shadow:
                0 15px 38px
                rgba(0,180,255,0.35);
        }


        .reset-btn {

            height: 52px;

            padding: 0 20px;

            border-radius: 12px;

            border:
                1px solid
                rgba(255,255,255,0.13);

            color:
                rgba(230,245,250,0.75);

            background:
                rgba(255,255,255,0.045);

            font-size: 12px;

            font-weight: 600;

            transition: 0.3s;
        }


        .reset-btn:hover {

            color: white;

            background:
                rgba(255,255,255,0.10);

            transform: translateY(-2px);
        }


        /* =====================================================
           SECURITY
        ===================================================== */

        .security {

            display: flex;

            align-items: center;

            justify-content: center;

            gap: 7px;

            margin-top: 20px;

            color:
                rgba(200,230,240,0.38);

            font-size: 10px;
        }


        .security i {

            color: #42d9ff;
        }


        /* =====================================================
           FORM ANIMATION
        ===================================================== */

        .form-field {

            animation: fieldAppear 0.6s ease both;
        }


        .form-field:nth-child(1) {
            animation-delay: 0.05s;
        }

        .form-field:nth-child(2) {
            animation-delay: 0.10s;
        }

        .form-field:nth-child(3) {
            animation-delay: 0.15s;
        }

        .form-field:nth-child(4) {
            animation-delay: 0.20s;
        }

        .form-field:nth-child(5) {
            animation-delay: 0.25s;
        }

        .form-field:nth-child(6) {
            animation-delay: 0.30s;
        }


        @keyframes fieldAppear {

            from {

                opacity: 0;

                transform: translateY(12px);
            }

            to {

                opacity: 1;

                transform: translateY(0);
            }
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media(max-width:991px) {

            .left-panel {

                min-height: auto;

                padding: 40px 30px;
            }

            .form-panel {

                padding: 40px 30px;
            }

            .left-panel h1 {

                font-size: 34px;
            }
        }


        @media(max-width:576px) {

            .top-navbar {

                width: 94%;
            }

            .brand {

                font-size: 17px;
            }

            .brand-icon {

                width: 37px;

                height: 37px;
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

            .page-wrapper {

                width: 94%;

                margin-top: 15px;
            }

            .manage-card {

                border-radius: 20px;
            }

            .left-panel {

                padding: 35px 22px;
            }

            .form-panel {

                padding: 30px 18px;
            }

            .left-panel h1 {

                font-size: 29px;
            }

            .button-row {

                flex-direction: column;
            }

            .reset-btn {

                width: 100%;
            }
        }

    </style>

</head>


<body>



<!-- =====================================================
     NAVBAR
===================================================== -->

<nav class="top-navbar">

    <div class="d-flex justify-content-between align-items-center">

        <!-- BRAND -->

        <div class="brand">

            <div class="brand-icon">

                <i class="bi bi-people-fill"></i>

            </div>

            Employee<span>Hub</span>

        </div>


        <!-- BACK -->

        <a href="${pageContext.request.contextPath}/displayEmployees"
           class="back-btn">

            <i class="bi bi-arrow-left"></i>

            <span>Back to Employee List</span>

        </a>

    </div>

</nav>



<!-- =====================================================
     MAIN
===================================================== -->

<div class="page-wrapper">

    <div class="manage-card">

        <div class="row g-0">


            <!-- =================================================
                 LEFT PANEL
            ================================================== -->

            <div class="col-lg-5">

                <div class="left-panel">


                    <!-- PROFILE ICON -->

                    <div class="profile-icon">

                        <i class="bi bi-person-gear"></i>

                    </div>


                    <div class="company-name">

                        EMPLOYEE MANAGEMENT

                    </div>


                    <h1>

                        Manage.

                        <span>Update.</span>

                        Improve.

                    </h1>


                    <p class="left-description">

                        Update employee information quickly and
                        securely. Keep your employee records
                        accurate, organized and up to date.

                    </p>


                    <!-- INFO 1 -->

                    <div class="info-box">

                        <div class="info-icon">

                            <i class="bi bi-person-check-fill"></i>

                        </div>

                        <div>

                            <strong>

                                Employee Profile

                            </strong>

                            <small>

                                Update personal information

                            </small>

                        </div>

                    </div>


                    <!-- INFO 2 -->

                    <div class="info-box">

                        <div class="info-icon">

                            <i class="bi bi-building"></i>

                        </div>

                        <div>

                            <strong>

                                Department & Role

                            </strong>

                            <small>

                                Manage department and designation

                            </small>

                        </div>

                    </div>


                    <!-- INFO 3 -->

                    <div class="info-box">

                        <div class="info-icon">

                            <i class="bi bi-currency-rupee"></i>

                        </div>

                        <div>

                            <strong>

                                Salary Information

                            </strong>

                            <small>

                                Maintain current salary details

                            </small>

                        </div>

                    </div>


                    <!-- INFO 4 -->

                    <div class="info-box">

                        <div class="info-icon">

                            <i class="bi bi-shield-check"></i>

                        </div>

                        <div>

                            <strong>

                                Secure Management

                            </strong>

                            <small>

                                Employee data is protected

                            </small>

                        </div>

                    </div>


                    <!-- INFO 5 -->

                    <div class="info-box">

                        <div class="info-icon">

                            <i class="bi bi-clock-history"></i>

                        </div>

                        <div>

                            <strong>

                                Quick Updates

                            </strong>

                            <small>

                                Save employee changes instantly

                            </small>

                        </div>

                    </div>

                </div>

            </div>



            <!-- =================================================
                 RIGHT FORM
            ================================================== -->

            <div class="col-lg-7">

                <div class="form-panel">


                    <!-- HEADER -->

                    <div class="form-header">

                        <div class="editing-badge">

                            <i class="bi bi-circle-fill"></i>

                            EDITING EMPLOYEE PROFILE

                        </div>


                        <h2>

                            Manage Employee

                        </h2>


                        <p>

                            Modify the employee details below
                            and save the latest information.

                        </p>


                        <div class="header-line"></div>

                    </div>



                    <!-- =================================================
                         FORM
                    ================================================== -->

                    <form

                        action="${pageContext.request.contextPath}/EditData"

                        method="post"

                        onsubmit="return validateUpdateForm();">


                        <div class="row">


                            <!-- EMPLOYEE ID -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Employee ID

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-person-vcard"></i>

                                    </span>

                                    <input

                                        type="text"

                                        name="empId"
                                        
                                       

                                        id="empId"

                                        class="form-control employee-id-input"

                                        value="${demo.empId}"

                                        readonly>

                                </div>

                            </div>



                            <!-- NAME -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Full Name

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-person"></i>

                                    </span>

                                    <input

                                        type="text"

                                        name="empName"

                                        id="empName"

                                        class="form-control"

                                        value="${demo.empName}"

                                        placeholder="Enter full name"

                                        required>

                                </div>

                            </div>



                            <!-- EMAIL -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Email Address

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-envelope"></i>

                                    </span>

                                    <input

                                        type="email"

                                        name="empEmail"

                                        id="empEmail"

                                        class="form-control"

                                        value="${demo.empEmail}"

                                        placeholder="employee@gmail.com"

                                        required>

                                </div>

                            </div>



                            <!-- MOBILE -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Mobile Number

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-phone"></i>

                                    </span>

                                    <input

                                        type="text"

                                        name="empMobile"

                                        id="empMobile"

                                        class="form-control"

                                        value="${demo.empMobile}"

                                        maxlength="10"

                                        placeholder="10 digit mobile"

                                        required>

                                </div>

                            </div>



                            <!-- DOB -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Date of Birth

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-calendar3"></i>

                                    </span>

                                    <input

                                        type="date"

                                        name="empDob"

                                        id="empDob"

                                        class="form-control"

                                        value="${demo.empDob}"

                                        required>

                                </div>

                            </div>



                        


                            <!-- DEPARTMENT -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Department

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-building"></i>

                                    </span>

                                    <select

                                        name="empDepartment"

                                        class="form-select"

                                        required>

                                        <option value="">

                                            Select Department

                                        </option>

                                        <option value="IT"
                                            ${demo.empDepartment == 'IT' ? 'selected' : ''}>

                                            IT

                                        </option>

                                        <option value="Software Development"
                                            ${demo.empDepartment == 'Software Development' ? 'selected' : ''}>

                                            Software Development

                                        </option>

                                        <option value="Testing"
                                            ${demo.empDepartment == 'Testing' ? 'selected' : ''}>

                                            Testing

                                        </option>

                                        <option value="Human Resources"
                                            ${demo.empDepartment == 'Human Resources' ? 'selected' : ''}>

                                            Human Resources

                                        </option>

                                        <option value="Finance"
                                            ${demo.empDepartment == 'Finance' ? 'selected' : ''}>

                                            Finance

                                        </option>

                                        <option value="Marketing"
                                            ${demo.empDepartment == 'Marketing' ? 'selected' : ''}>

                                            Marketing

                                        </option>

                                    </select>

                                </div>

                            </div>



                            <!-- DESIGNATION -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Designation

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-briefcase"></i>

                                    </span>

                                    <input

                                        type="text"

                                        name="designation"

                                        id="designation"

                                        class="form-control"

                                        value="${demo.designation}"

                                        placeholder="Java Developer"

                                        required>

                                </div>

                            </div>



                            <!-- SALARY -->

                            <div class="col-md-6 form-field">

                                <label class="form-label">

                                    Salary

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-currency-rupee"></i>

                                    </span>

                                    <input

                                        type="number"

                                        name="empSalary"

                                        id="empSalary"

                                        class="form-control"

                                        value="${demo.empSalary}"

                                        min="0"

                                        placeholder="Enter salary"

                                        required>

                                </div>

                            </div>



                          


                            <!-- ADDRESS -->

                            <div class="col-12 form-field">

                                <label class="form-label">

                                    Complete Address

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-geo-alt"></i>

                                    </span>

                                    <input

                                        type="text"

                                        name="empAddress"

                                        id="empAddress"

                                        class="form-control"

                                        value="${demo.empAddress}"

                                        placeholder="Enter complete address"

                                        required>

                                </div>

                            </div>

                        </div>



                        <!-- =================================================
                             BUTTONS
                        ================================================== -->

                        <div class="button-row">


                            <!-- UPDATE -->

                            <button

                                type="submit"

                                class="update-btn">

                                <i class="bi bi-check-circle-fill me-2"></i>

                                Update Employee

                            </button>


                            <!-- RESET -->

                            <button

                                type="button"

                                class="reset-btn"

                                onclick="resetForm()">

                                <i class="bi bi-arrow-counterclockwise me-1"></i>

                                Reset

                            </button>

                        </div>


                        <!-- SECURITY -->

                        <div class="security">

                            <i class="bi bi-shield-check"></i>

                            Secure Employee Management System

                        </div>


                    </form>

                </div>

            </div>

        </div>

    </div>

</div>



<!-- =====================================================
     JAVASCRIPT
===================================================== -->

<script>


    /* =====================================================
       PASSWORD SHOW / HIDE
    ===================================================== */

    function togglePassword(inputId, eyeId) {

        const input =
            document.getElementById(inputId);

        const eye =
            document.getElementById(eyeId);


        if (input.type === "password") {

            input.type = "text";

            eye.classList.remove("bi-eye");

            eye.classList.add("bi-eye-slash");

        }

        else {

            input.type = "password";

            eye.classList.remove("bi-eye-slash");

            eye.classList.add("bi-eye");
        }
    }



    /* =====================================================
       FORM VALIDATION
    ===================================================== */

    function validateUpdateForm() {

        const name =
            document.getElementById("empName")
            .value.trim();


        const email =
            document.getElementById("empEmail")
            .value.trim();


        const mobile =
            document.getElementById("empMobile")
            .value.trim();


        const salary =
            document.getElementById("empSalary")
            .value;


        const password =
            document.getElementById("password")
            .value;


        const confirmPassword =
            document.getElementById("confirmPassword")
            .value;



        /* NAME */

        if (name.length < 3) {

            alert(
                "Please enter a valid employee name."
            );

            return false;
        }



        /* EMAIL */

        const emailPattern =
            /^[^\s@]+@[^\s@]+\.[^\s@]+$/;


        if (!emailPattern.test(email)) {

            alert(
                "Please enter a valid email address."
            );

            return false;
        }



        /* MOBILE */

        const mobilePattern =
            /^[6-9][0-9]{9}$/;


        if (!mobilePattern.test(mobile)) {

            alert(
                "Please enter a valid 10-digit mobile number."
            );

            return false;
        }



        /* SALARY */

        if (salary <= 0) {

            alert(
                "Salary must be greater than 0."
            );

            return false;
        }



        /* PASSWORD */

        if (password.length < 6) {

            alert(
                "Password must contain at least 6 characters."
            );

            return false;
        }



        /* CONFIRM PASSWORD */

        if (password !== confirmPassword) {

            alert(
                "Password and Confirm Password do not match."
            );

            return false;
        }



        /* FINAL CONFIRMATION */

        const employeeName = name;

        const result = confirm(

            "Are you sure you want to update " +

            employeeName +

            "'s employee information?"

        );


        if (!result) {

            return false;
        }


        return true;
    }



    /* =====================================================
       RESET FORM
    ===================================================== */

    function resetForm() {

        const result = confirm(

            "Are you sure you want to reset all changes?"
        );


        if (result) {

            document.querySelector("form").reset();

        }
    }



    /* =====================================================
       3D FORM EFFECT
    ===================================================== */

    const card =
        document.querySelector(".manage-card");


    card.addEventListener(
        "mousemove",
        function(event) {

            const rect =
                card.getBoundingClientRect();


            const x =
                event.clientX - rect.left;


            const y =
                event.clientY - rect.top;


            const centerX =
                rect.width / 2;


            const centerY =
                rect.height / 2;


            const rotateX =
                (y - centerY) / 250;


            const rotateY =
                (centerX - x) / 250;


            card.style.transform =
                "perspective(1200px) " +

                "rotateX(" + rotateX + "deg) " +

                "rotateY(" + rotateY + "deg)";
        }
    );


    card.addEventListener(
        "mouseleave",
        function() {

            card.style.transform =
                "perspective(1200px) " +

                "rotateX(0deg) " +

                "rotateY(0deg)";
        }
    );


</script>


</body>

</html>