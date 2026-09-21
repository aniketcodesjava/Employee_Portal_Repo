<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Employee Registration | TechNova</title>


<!-- =====================================================
     BOOTSTRAP 5
===================================================== -->

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">


<!-- =====================================================
     BOOTSTRAP ICONS
===================================================== -->

<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


<!-- =====================================================
     GOOGLE FONT
===================================================== -->

<link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
    rel="stylesheet">


<style>

/* =====================================================
   GLOBAL RESET
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

    position: relative;

    /*
       ONLINE IT COMPANY BACKGROUND
    */

    background-image:

        linear-gradient(
            120deg,
            rgba(2, 8, 23, 0.94),
            rgba(3, 25, 55, 0.82),
            rgba(0, 55, 90, 0.72)
        ),

        url("https://dotler.lk/assets/hero-bg-KzTD6NbR.jpg");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;

    animation: backgroundZoom 22s ease-in-out infinite alternate;
}


/* =====================================================
   BACKGROUND ANIMATION
===================================================== */

@keyframes backgroundZoom {

    0% {

        background-position: 0% 50%;

        background-size: 105%;
    }

    50% {

        background-position: 100% 50%;

        background-size: 112%;
    }

    100% {

        background-position: 50% 100%;

        background-size: 105%;
    }
}


/* =====================================================
   ANIMATED LIGHT ORBS
===================================================== */

body::before {

    content: "";

    position: fixed;

    width: 350px;

    height: 350px;

    border-radius: 50%;

    background: rgba(0, 200, 255, 0.18);

    filter: blur(90px);

    top: -100px;

    left: -100px;

    z-index: 0;

    pointer-events: none;

    animation: orbOne 9s ease-in-out infinite alternate;
}


body::after {

    content: "";

    position: fixed;

    width: 420px;

    height: 420px;

    border-radius: 50%;

    background: rgba(0, 100, 255, 0.16);

    filter: blur(100px);

    bottom: -150px;

    right: -120px;

    z-index: 0;

    pointer-events: none;

    animation: orbTwo 12s ease-in-out infinite alternate;
}


@keyframes orbOne {

    0% {

        transform: translate(0, 0);

    }

    100% {

        transform: translate(180px, 120px);

    }
}


@keyframes orbTwo {

    0% {

        transform: translate(0, 0);

    }

    100% {

        transform: translate(-150px, -120px);

    }
}


/* =====================================================
   MAIN WRAPPER
===================================================== */

.page-wrapper {

    width: 94%;

    max-width: 1280px;

    margin: 45px auto;

    position: relative;

    z-index: 2;

    animation: pageAppear 1.2s ease;
}


@keyframes pageAppear {

    from {

        opacity: 0;

        transform: translateY(35px) scale(0.97);
    }

    to {

        opacity: 1;

        transform: translateY(0) scale(1);
    }
}


/* =====================================================
   MAIN REGISTRATION CARD
===================================================== */

.registration-card {

    position: relative;

    overflow: hidden;

    border-radius: 30px;

    background:

        linear-gradient(
            135deg,
            rgba(7, 20, 42, 0.88),
            rgba(4, 29, 54, 0.82)
        );

    border: 1px solid rgba(73, 213, 255, 0.25);

    box-shadow:

        0 35px 90px rgba(0, 0, 0, 0.60),

        inset 0 1px 0 rgba(255,255,255,0.08);

    backdrop-filter: blur(20px);

    -webkit-backdrop-filter: blur(20px);
}


/* =====================================================
   ANIMATED BORDER
===================================================== */

.registration-card::before {

    content: "";

    position: absolute;

    inset: 0;

    border-radius: 30px;

    padding: 1px;

    background:

        linear-gradient(
            120deg,
            transparent,
            rgba(0, 220, 255, 0.65),
            transparent,
            rgba(0, 140, 255, 0.5),
            transparent
        );

    background-size: 300% 300%;

    animation: borderAnimation 7s linear infinite;

    pointer-events: none;

    mask:
        linear-gradient(#fff 0 0) content-box,
        linear-gradient(#fff 0 0);

    mask-composite: exclude;

    -webkit-mask:
        linear-gradient(#fff 0 0) content-box,
        linear-gradient(#fff 0 0);

    -webkit-mask-composite: xor;
}


@keyframes borderAnimation {

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


/* =====================================================
   LEFT SIDE
===================================================== */

.left-panel {

    min-height: 900px;

    padding: 60px 48px;

    display: flex;

    flex-direction: column;

    justify-content: center;

    position: relative;

    overflow: hidden;

    background:

        linear-gradient(
            135deg,
            rgba(0, 15, 35, 0.82),
            rgba(0, 45, 75, 0.62)
        );
}


/* Decorative grid */

.left-panel::before {

    content: "";

    position: absolute;

    inset: 0;

    background-image:

        linear-gradient(
            rgba(0, 210, 255, 0.05) 1px,
            transparent 1px
        ),

        linear-gradient(
            90deg,
            rgba(0, 210, 255, 0.05) 1px,
            transparent 1px
        );

    background-size: 40px 40px;

    mask-image: linear-gradient(
        to bottom,
        black,
        transparent
    );

    pointer-events: none;
}


/* =====================================================
   LOGO
===================================================== */

.logo-box {

    width: 82px;

    height: 82px;

    border-radius: 24px;

    display: flex;

    align-items: center;

    justify-content: center;

    margin-bottom: 30px;

    background:

        linear-gradient(
            135deg,
            rgba(0, 220, 255, 0.20),
            rgba(0, 100, 255, 0.12)
        );

    border: 1px solid rgba(73, 213, 255, 0.35);

    box-shadow:

        0 15px 40px rgba(0, 190, 255, 0.16),

        inset 0 0 20px rgba(0, 200, 255, 0.08);

    animation: logoFloat 4s ease-in-out infinite;
}


.logo-box i {

    font-size: 43px;

    color: #53ddff;

    filter: drop-shadow(
        0 0 12px rgba(0,220,255,0.55)
    );
}


@keyframes logoFloat {

    0%, 100% {

        transform: translateY(0);
    }

    50% {

        transform: translateY(-10px);
    }
}


/* =====================================================
   BRAND
===================================================== */

.brand-name {

    font-size: 15px;

    font-weight: 700;

    letter-spacing: 3px;

    text-transform: uppercase;

    color: #54dcff;

    margin-bottom: 14px;
}


.left-panel h1 {

    font-size: 45px;

    line-height: 1.15;

    font-weight: 800;

    letter-spacing: -1px;

    margin-bottom: 20px;

    position: relative;

    z-index: 2;
}


.left-panel h1 span {

    color: #52ddff;

    text-shadow:

        0 0 25px rgba(0, 220, 255, 0.30);
}


.left-description {

    max-width: 480px;

    color: rgba(220, 240, 250, 0.70);

    font-size: 15px;

    line-height: 1.8;

    margin-bottom: 38px;

    position: relative;

    z-index: 2;
}


/* =====================================================
   FEATURES
===================================================== */

.feature-list {

    position: relative;

    z-index: 2;
}


.feature-item {

    display: flex;

    align-items: center;

    gap: 15px;

    margin-bottom: 18px;

    color: rgba(235, 250, 255, 0.88);

    font-size: 14px;
}


.feature-icon {

    width: 43px;

    height: 43px;

    flex-shrink: 0;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 13px;

    background: rgba(0, 205, 255, 0.10);

    border: 1px solid rgba(0, 205, 255, 0.20);

    color: #50dcff;

    box-shadow:

        inset 0 0 15px rgba(0, 210, 255, 0.05);
}


.feature-icon i {

    font-size: 18px;
}


/* =====================================================
   RIGHT SIDE
===================================================== */

.form-panel {

    min-height: 900px;

    padding: 48px 48px;

    background:

        linear-gradient(
            145deg,
            rgba(6, 20, 39, 0.96),
            rgba(4, 25, 47, 0.90)
        );

    border-left: 1px solid rgba(75, 210, 255, 0.12);
}


/* =====================================================
   FORM HEADER
===================================================== */

.form-header {

    margin-bottom: 30px;
}


.form-header h2 {

    font-size: 30px;

    font-weight: 800;

    color: #f4fbff;

    margin-bottom: 8px;
}


.form-header p {

    color: rgba(200, 225, 235, 0.58);

    font-size: 13px;

    line-height: 1.6;
}


.header-line {

    width: 55px;

    height: 4px;

    border-radius: 10px;

    margin-top: 17px;

    background:

        linear-gradient(
            90deg,
            #00d9ff,
            #087cff
        );

    box-shadow:

        0 0 15px rgba(0, 210, 255, 0.45);
}


/* =====================================================
   LABEL
===================================================== */

.form-label {

    color: rgba(225, 242, 250, 0.82);

    font-size: 12px;

    font-weight: 700;

    letter-spacing: 0.4px;

    margin-bottom: 8px;
}


/* =====================================================
   INPUT GROUP
===================================================== */

.input-group {

    margin-bottom: 19px;
}


.input-group-text {

    width: 48px;

    justify-content: center;

    border: 1px solid rgba(92, 180, 215, 0.20);

    border-right: none;

    background: rgba(0, 170, 220, 0.07);

    color: #4bdcff;

    border-radius: 11px 0 0 11px;
}


.form-control,
.form-select {

    height: 48px;

    color: #eafaff !important;

    background: rgba(255,255,255,0.045) !important;

    border: 1px solid rgba(92, 180, 215, 0.20);

    font-size: 13px;

    box-shadow: none !important;

    transition: all 0.3s ease;
}


.form-control::placeholder {

    color: rgba(200, 225, 235, 0.35);
}


.form-control:focus,
.form-select:focus {

    border-color: #21d9ff;

    background: rgba(0, 190, 255, 0.055) !important;

    box-shadow:

        0 0 0 3px rgba(0, 210, 255, 0.08),

        0 0 18px rgba(0, 210, 255, 0.08) !important;
}


/* =====================================================
   SELECT
===================================================== */

.form-select {

    border-radius: 0 11px 11px 0;

    color: #dff7ff !important;
}


.form-select option {

    background: #071b31;

    color: white;
}


/* =====================================================
   PASSWORD
===================================================== */

.password-input {

    border-radius: 0 !important;
}


.password-eye-btn {

    width: 50px;

    height: 48px;

    border: 1px solid rgba(92, 180, 215, 0.20);

    border-left: none;

    background: rgba(0, 170, 220, 0.07);

    color: #52dcff;

    border-radius: 0 11px 11px 0;

    display: flex;

    align-items: center;

    justify-content: center;

    cursor: pointer;

    transition: 0.3s;
}


.password-eye-btn:hover {

    background: rgba(0, 210, 255, 0.16);

    color: white;

    box-shadow:

        0 0 15px rgba(0, 210, 255, 0.15);
}


.password-eye-btn i {

    font-size: 17px;
}


/* =====================================================
   TERMS
===================================================== */

.form-check {

    margin-top: 5px;

    margin-bottom: 22px;
}


.form-check-input {

    background-color: rgba(255,255,255,0.05);

    border-color: rgba(92, 180, 215, 0.30);

    cursor: pointer;
}


.form-check-input:checked {

    background-color: #00bfe8;

    border-color: #00bfe8;
}


.form-check-label {

    color: rgba(210, 230, 240, 0.55);

    font-size: 12px;

    cursor: pointer;
}


/* =====================================================
   REGISTER BUTTON
===================================================== */

.register-btn {

    width: 100%;

    height: 53px;

    border: none;

    border-radius: 12px;

    color: white;

    font-size: 14px;

    font-weight: 700;

    letter-spacing: 0.5px;

    background:

        linear-gradient(
            100deg,
            #00b8e6,
            #087cff,
            #00c8ee
        );

    background-size: 200% 100%;

    box-shadow:

        0 10px 30px rgba(0, 160, 255, 0.22),

        inset 0 1px 0 rgba(255,255,255,0.20);

    transition: all 0.4s ease;

    animation: buttonGradient 5s ease infinite;

    cursor: pointer;
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


.register-btn:hover {

    transform: translateY(-3px);

    box-shadow:

        0 15px 38px rgba(0, 180, 255, 0.32),

        0 0 25px rgba(0, 190, 255, 0.12);
}


.register-btn:active {

    transform: scale(0.98);
}


/* =====================================================
   LOGIN
===================================================== */

.login-text {

    text-align: center;

    margin-top: 20px;

    color: rgba(200, 225, 235, 0.52);

    font-size: 12px;
}


.login-text a {

    color: #4fdcff;

    text-decoration: none;

    font-weight: 700;

    margin-left: 4px;
}


.login-text a:hover {

    color: white;

    text-shadow:

        0 0 12px rgba(0, 210, 255, 0.45);
}


/* =====================================================
   SECURITY BADGE
===================================================== */

.security-badge {

    display: flex;

    align-items: center;

    justify-content: center;

    gap: 7px;

    margin-top: 22px;

    color: rgba(200, 230, 240, 0.40);

    font-size: 10px;

    letter-spacing: 0.5px;
}


.security-badge i {

    color: #42d9ff;
}


/* =====================================================
   RESPONSIVE
===================================================== */

@media (max-width: 991px) {

    .page-wrapper {

        width: 95%;

        margin: 25px auto;
    }


    .left-panel {

        min-height: 520px;

        padding: 45px 35px;
    }


    .form-panel {

        min-height: auto;

        padding: 40px 30px;
    }


    .left-panel h1 {

        font-size: 37px;
    }
}


@media (max-width: 576px) {

    body {

        background-attachment: scroll;
    }


    .page-wrapper {

        width: 94%;

        margin: 15px auto;
    }


    .registration-card {

        border-radius: 20px;
    }


    .left-panel {

        min-height: 480px;

        padding: 35px 25px;
    }


    .form-panel {

        padding: 30px 20px;
    }


    .left-panel h1 {

        font-size: 30px;
    }


    .logo-box {

        width: 70px;

        height: 70px;
    }


    .logo-box i {

        font-size: 36px;
    }


    .form-header h2 {

        font-size: 25px;
    }
}

</style>

</head>


<body>


  <%
   
   String Successfull=(String) request.getAttribute("Successfull");
    if(Successfull != null)
    {
    	%>
    	
    	<script>
    	   alert("<%=Successfull%>");  
    	   </script>
    }
   <%} %>


<!-- =====================================================
     MAIN PAGE
===================================================== -->

<div class="page-wrapper">


    <div class="registration-card">


        <div class="row g-0">


            <!-- =================================================
                 LEFT IT COMPANY SECTION
            ================================================== -->

            <div class="col-lg-5">


                <div class="left-panel">


                    <!-- Logo -->

                    <div class="logo-box">

                        <i class="bi bi-cpu-fill"></i>

                    </div>


                    <div class="brand-name">

                        TECHNOVA

                    </div>


                    <h1>

                        Build.
                        <span>Innovate.</span>
                        Grow.

                    </h1>


                    <p class="left-description">

                        Become part of a technology-driven team
                        where talented people build modern
                        software solutions and create meaningful
                        digital experiences.

                    </p>



                    <!-- Features -->

                    <div class="feature-list">


                        <div class="feature-item">

                            <div class="feature-icon">

                                <i class="bi bi-code-slash"></i>

                            </div>

                            <span>
                                Modern software development
                            </span>

                        </div>



                        <div class="feature-item">

                            <div class="feature-icon">

                                <i class="bi bi-cloud-check"></i>

                            </div>

                            <span>
                                Cloud & digital technologies
                            </span>

                        </div>



                        <div class="feature-item">

                            <div class="feature-icon">

                                <i class="bi bi-people-fill"></i>

                            </div>

                            <span>
                                Collaborative work culture
                            </span>

                        </div>



                        <div class="feature-item">

                            <div class="feature-icon">

                                <i class="bi bi-graph-up-arrow"></i>

                            </div>

                            <span>
                                Professional career growth
                            </span>

                        </div>



                        <div class="feature-item">

                            <div class="feature-icon">

                                <i class="bi bi-shield-lock-fill"></i>

                            </div>

                            <span>
                                Secure employee management
                            </span>

                        </div>


                    </div>

                </div>

            </div>



            <!-- =================================================
                 RIGHT REGISTRATION FORM
            ================================================== -->

            <div class="col-lg-7">


                <div class="form-panel">


                    <!-- Form Header -->

                    <div class="form-header">

                        <h2>

                           Add Employee Information

                        </h2>


                        <p>

                            Add employee profile and
                            join our technology team.

                        </p>


                        <div class="header-line"></div>

                    </div>



                    <!-- =================================================
                         FORM
                    ================================================== -->

                    <form
                        action="${pageContext.request.contextPath}/SaveData1"
                        method="post"
                        onsubmit="return validateForm()">


                        <div class="row">


                            <!-- Employee ID -->

                            <div class="col-md-6">

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
                                        class="form-control"
                                        placeholder="Enter employee ID"
                                        required>

                                </div>

                            </div>



                            <!-- Full Name -->

                            <div class="col-md-6">

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
                                        placeholder="Enter full name"
                                        required>

                                </div>

                            </div>



                            <!-- Email -->

                            <div class="col-md-6">

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
                                        class="form-control"
                                        placeholder="employee@gmail.com"
                                        required>

                                </div>

                            </div>



                            <!-- Mobile -->

                            <div class="col-md-6">

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
                                        placeholder="10 digit mobile number"
                                        maxlength="10"
                                        required>

                                </div>

                            </div>



                            <!-- DOB -->

                            <div class="col-md-6">

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
                                        class="form-control"
                                        required>

                                </div>

                            </div>



                            <!-- Gender -->

                            <div class="col-md-6">

                                <label class="form-label">

                                    Gender

                                </label>


                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-gender-ambiguous"></i>

                                    </span>


                                    <select
                                        name="empGender"
                                        class="form-select"
                                        required>

                                        <option value="">
                                            Select Gender
                                        </option>

                                        <option value="Male">
                                            Male
                                        </option>

                                        <option value="Female">
                                            Female
                                        </option>

                                        <option value="Other">
                                            Other
                                        </option>

                                    </select>

                                </div>

                            </div>



                            <!-- Department -->

                            <div class="col-md-6">

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

                                        <option value="IT">
                                            IT
                                        </option>

                                        <option value="Software Development">
                                            Software Development
                                        </option>

                                        <option value="Testing">
                                            Testing
                                        </option>

                                        <option value="Human Resources">
                                            Human Resources
                                        </option>

                                        <option value="Finance">
                                            Finance
                                        </option>

                                        <option value="Marketing">
                                            Marketing
                                        </option>

                                    </select>

                                </div>

                            </div>



                            <!-- Designation -->

                            <div class="col-md-6">

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
                                        class="form-control"
                                        placeholder="Java Developer"
                                        required>

                                </div>

                            </div>



                            <!-- Salary -->

                            <div class="col-md-6">

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
                                        class="form-control"
                                        placeholder="Enter salary"
                                        required>

                                </div>

                            </div>



                            <!-- Password -->

                            <div class="col-md-6">

                                <label class="form-label">

                                    Password

                                </label>


                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-lock"></i>

                                    </span>


                                    <input
                                        type="password"
                                        name="empPassword"
                                        id="password"
                                        class="form-control password-input"
                                        placeholder="Enter password"
                                        required>


                                    <button
                                        type="button"
                                        class="password-eye-btn"
                                        onclick="togglePassword(
                                            'password',
                                            'passwordEye'
                                        )">

                                        <i
                                            class="bi bi-eye"
                                            id="passwordEye">
                                        </i>

                                    </button>

                                </div>

                            </div>



                            <!-- Confirm Password -->

                            <div class="col-md-6">

                                <label class="form-label">

                                    Confirm Password

                                </label>


                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-shield-lock"></i>

                                    </span>


                                    <input
                                        type="password"
                                        name="empConfirmPassword"
                                        id="confirmPassword"
                                        class="form-control password-input"
                                        placeholder="Confirm password"
                                        required>


                                    <button
                                        type="button"
                                        class="password-eye-btn"
                                        onclick="togglePassword(
                                            'confirmPassword',
                                            'confirmPasswordEye'
                                        )">

                                        <i
                                            class="bi bi-eye"
                                            id="confirmPasswordEye">
                                        </i>

                                    </button>

                                </div>

                            </div>



                            <!-- Address -->

                            <div class="col-12">

                                <label class="form-label">

                                    Address

                                </label>


                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-geo-alt"></i>

                                    </span>


                                    <input
                                        type="text"
                                        name="empAddress"
                                        class="form-control"
                                        placeholder="Enter complete address"
                                        required>

                                </div>

                            </div>


                        </div>



                        <!-- =================================================
                             TERMS
                        ================================================== -->

                        <div class="form-check">

                            <input
                                class="form-check-input"
                                type="checkbox"
                                id="terms"
                                required>


                            <label
                                class="form-check-label"
                                for="terms">

                                I agree to the company's
                                terms and conditions.

                            </label>

                        </div>



                        <!-- =================================================
                             REGISTER BUTTON
                        ================================================== -->

                        <button
                            type="submit"
                            class="register-btn">

                            <i class="bi bi-person-plus-fill me-2"></i>

                            Add Employee

                        </button>



                       

                        <!-- Security -->

                        <div class="security-badge">

                            <i class="bi bi-shield-check"></i>

                            Secure Employee Registration

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

    const passwordInput =
        document.getElementById(inputId);

    const eyeIcon =
        document.getElementById(eyeId);


    if (passwordInput.type === "password") {

        passwordInput.type = "text";

        eyeIcon.classList.remove("bi-eye");

        eyeIcon.classList.add("bi-eye-slash");

    }

    else {

        passwordInput.type = "password";

        eyeIcon.classList.remove("bi-eye-slash");

        eyeIcon.classList.add("bi-eye");

    }

}



/* =====================================================
   FORM VALIDATION
===================================================== */

function validateForm() {


    const employeeId =
        document.getElementById("empId")
        .value.trim();


    const name =
        document.getElementById("empName")
        .value.trim();


    const mobile =
        document.getElementById("empMobile")
        .value.trim();


    const password =
        document.getElementById("password")
        .value;


    const confirmPassword =
        document.getElementById("confirmPassword")
        .value;



    /* Employee ID */

    if (employeeId.length < 3) {

        alert(
            "Employee ID must contain at least 3 characters."
        );

        return false;
    }



    /* Name */

    if (name.length < 3) {

        alert(
            "Please enter a valid employee name."
        );

        return false;
    }



    /* Mobile */

    const mobilePattern =
        /^[6-9][0-9]{9}$/;


    if (!mobilePattern.test(mobile)) {

        alert(
            "Please enter a valid 10-digit mobile number."
        );

        return false;
    }



    /* Password */

    if (password.length < 6) {

        alert(
            "Password must contain at least 6 characters."
        );

        return false;
    }



    /* Confirm Password */

    if (password !== confirmPassword) {

        alert(
            "Password and Confirm Password do not match."
        );

        return false;
    }



    alert(
        "Employee Registration Successful!"
    );


    return true;

}

</script>


</body>

</html>