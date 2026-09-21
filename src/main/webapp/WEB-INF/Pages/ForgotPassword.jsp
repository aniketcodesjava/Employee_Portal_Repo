<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Forgot Password | Employee Management</title>

<!-- Bootstrap 5.3 -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Bootstrap Icons -->

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Google Font -->

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet">

<style>

/* =====================================
   RESET
===================================== */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* =====================================
   BODY
===================================== */

body {

    min-height: 100vh;

    font-family: 'Poppins', sans-serif;

    display: flex;

    justify-content: center;

    align-items: center;

    overflow: hidden;

    position: relative;

    background:

        linear-gradient(
            135deg,
            rgba(3, 12, 30, 0.82),
            rgba(8, 30, 58, 0.72)
        ),

        url("https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=1920&q=80");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;
}


/* =====================================
   BACKGROUND GLOW
===================================== */

body::before {

    content: "";

    position: absolute;

    width: 500px;

    height: 500px;

    border-radius: 50%;

    background: rgba(0, 174, 255, 0.18);

    filter: blur(100px);

    top: -200px;

    left: -150px;

    animation: glowMove 8s infinite alternate ease-in-out;
}


body::after {

    content: "";

    position: absolute;

    width: 450px;

    height: 450px;

    border-radius: 50%;

    background: rgba(80, 70, 255, 0.15);

    filter: blur(100px);

    right: -180px;

    bottom: -180px;

    animation: glowMove2 9s infinite alternate ease-in-out;
}


@keyframes glowMove {

    from {
        transform: translate(0,0);
    }

    to {
        transform: translate(100px,80px);
    }
}


@keyframes glowMove2 {

    from {
        transform: translate(0,0);
    }

    to {
        transform: translate(-80px,-70px);
    }
}


/* =====================================
   FLOATING CIRCLES
===================================== */

.circle {

    position: absolute;

    border-radius: 50%;

    border: 1px solid rgba(255,255,255,0.15);

    background: rgba(255,255,255,0.03);

    backdrop-filter: blur(3px);

    animation: floating 7s infinite ease-in-out;

    pointer-events: none;
}


.circle1 {

    width: 180px;

    height: 180px;

    left: 5%;

    top: 12%;
}


.circle2 {

    width: 120px;

    height: 120px;

    right: 10%;

    top: 15%;

    animation-delay: 2s;
}


.circle3 {

    width: 220px;

    height: 220px;

    right: 4%;

    bottom: 5%;

    animation-delay: 4s;
}


@keyframes floating {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-25px);
    }
}


/* =====================================
   CONTAINER
===================================== */

.forgot-container {

    width: 100%;

    max-width: 450px;

    padding: 20px;

    position: relative;

    z-index: 5;

    animation: appear 1s ease;
}


@keyframes appear {

    from {

        opacity: 0;

        transform:
            translateY(50px)
            scale(0.95);
    }

    to {

        opacity: 1;

        transform:
            translateY(0)
            scale(1);
    }
}


/* =====================================
   CARD
===================================== */

.forgot-card {

    position: relative;

    padding: 42px 38px;

    border-radius: 28px;

    background:

        linear-gradient(
            145deg,
            rgba(8, 24, 48, 0.88),
            rgba(7, 18, 38, 0.78)
        );

    backdrop-filter: blur(25px);

    -webkit-backdrop-filter: blur(25px);

    border: 1px solid rgba(130, 205, 255, 0.28);

    box-shadow:

        0 30px 80px rgba(0,0,0,0.55),

        inset 0 1px 0 rgba(255,255,255,0.12);

    overflow: hidden;

    transition: 0.4s ease;
}


.forgot-card:hover {

    transform: translateY(-5px);

    box-shadow:

        0 40px 90px rgba(0,0,0,0.65),

        0 0 40px rgba(0,170,255,0.08);
}


/* Top glowing line */

.forgot-card::before {

    content: "";

    position: absolute;

    top: 0;

    left: 8%;

    width: 84%;

    height: 2px;

    background:

        linear-gradient(
            90deg,
            transparent,
            #55d6ff,
            #7c6cff,
            transparent
        );

    box-shadow:

        0 0 15px rgba(85,214,255,0.8);
}


/* =====================================
   ICON
===================================== */

.forgot-icon {

    width: 78px;

    height: 78px;

    margin: auto;

    border-radius: 22px;

    display: flex;

    justify-content: center;

    align-items: center;

    background:

        linear-gradient(
            135deg,
            rgba(53,190,255,0.25),
            rgba(102,80,255,0.25)
        );

    border: 1px solid rgba(116,216,255,0.35);

    box-shadow:

        0 10px 35px rgba(0,0,0,0.35),

        0 0 25px rgba(0,174,255,0.15);

    animation: iconFloat 3s infinite ease-in-out;
}


.forgot-icon i {

    font-size: 34px;

    color: #8ee7ff;

    text-shadow:

        0 0 15px rgba(80,210,255,0.8);
}


@keyframes iconFloat {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-7px);
    }
}


/* =====================================
   TITLE
===================================== */

.forgot-title {

    text-align: center;

    margin-top: 20px;

    margin-bottom: 7px;

    color: #ffffff;

    font-size: 28px;

    font-weight: 700;
}


.forgot-title span {

    color: #69dfff;

    text-shadow:

        0 0 15px rgba(60,210,255,0.35);
}


.forgot-subtitle {

    text-align: center;

    color: #a8bdd4;

    font-size: 13px;

    line-height: 1.7;

    margin-bottom: 30px;
}


/* =====================================
   INPUT
===================================== */

.input-box {

    position: relative;

    margin-bottom: 22px;
}


.input-box input {

    width: 100%;

    height: 56px;

    padding: 0 20px 0 52px;

    border-radius: 14px;

    outline: none;

    border: 1px solid rgba(151,196,225,0.22);

    background: rgba(3,14,29,0.62);

    color: #ffffff;

    font-family: 'Poppins', sans-serif;

    font-size: 14px;

    transition: 0.35s ease;
}


.input-box input::placeholder {

    color: #8299ae;
}


.input-box input:focus {

    border-color: #58d8ff;

    background: rgba(5,22,42,0.85);

    box-shadow:

        0 0 0 3px rgba(62,205,255,0.10),

        0 0 22px rgba(62,205,255,0.08);
}


/* =====================================
   INPUT ICON
===================================== */

.input-icon {

    position: absolute;

    left: 18px;

    top: 50%;

    transform: translateY(-50%);

    color: #68dfff;

    font-size: 19px;

    z-index: 3;

    transition: 0.3s;
}


.input-box:focus-within .input-icon {

    color: #ffffff;

    transform:

        translateY(-50%)
        scale(1.08);

    text-shadow:

        0 0 12px rgba(90,220,255,0.7);
}


/* =====================================
   RESET BUTTON
===================================== */

.reset-btn {

    position: relative;

    width: 100%;

    height: 55px;

    border: none;

    border-radius: 14px;

    background:

        linear-gradient(
            135deg,
            #31c9ff,
            #5578ff
        );

    color: #ffffff;

    font-family: 'Poppins', sans-serif;

    font-size: 15px;

    font-weight: 600;

    cursor: pointer;

    overflow: hidden;

    box-shadow:

        0 10px 30px rgba(55,170,255,0.22);

    transition: 0.35s ease;
}


.reset-btn:hover {

    transform: translateY(-3px);

    box-shadow:

        0 15px 35px rgba(55,170,255,0.38);
}


.reset-btn:active {

    transform: scale(0.98);
}


/* Button shine */

.reset-btn::before {

    content: "";

    position: absolute;

    top: 0;

    left: -120%;

    width: 80%;

    height: 100%;

    background:

        linear-gradient(
            100deg,
            transparent,
            rgba(255,255,255,0.45),
            transparent
        );

    transform: skewX(-20deg);

    animation: buttonShine 3.5s infinite;
}


@keyframes buttonShine {

    0% {
        left: -120%;
    }

    50%,100% {
        left: 140%;
    }
}


/* =====================================
   BACK TO LOGIN
===================================== */

.back-login {

    text-align: center;

    margin-top: 25px;

    font-size: 13px;

    color: #8299ae;
}


.back-login a {

    color: #6cddff;

    font-weight: 600;

    text-decoration: none;

    transition: 0.3s;
}


.back-login a:hover {

    color: #ffffff;

    text-shadow:

        0 0 12px rgba(100,220,255,0.7);
}


/* =====================================
   SECURITY
===================================== */

.security-text {

    text-align: center;

    margin-top: 18px;

    color: #647b91;

    font-size: 10.5px;

    letter-spacing: 0.3px;
}


.security-text i {

    color: #52d7ff;

    margin-right: 4px;
}


/* =====================================
   RESPONSIVE
===================================== */

@media(max-width:480px) {

    .forgot-container {

        padding: 15px;
    }

    .forgot-card {

        padding: 35px 24px;

        border-radius: 23px;
    }

    .forgot-title {

        font-size: 25px;
    }

    .forgot-icon {

        width: 70px;

        height: 70px;
    }

}

</style>

</head>

<body>

<!-- Background -->

<div class="circle circle1"></div>

<div class="circle circle2"></div>

<div class="circle circle3"></div>

<!-- Forgot Password -->

<div class="forgot-container">


<div class="forgot-card">


    <!-- Icon -->

    <div class="forgot-icon">

        <i class="bi bi-key-fill"></i>

    </div>


    <!-- Heading -->

    <h2 class="forgot-title">

        Forgot <span>Password?</span>

    </h2>


    <p class="forgot-subtitle">

        Don't worry! Enter your registered email
        address and we'll help you reset your password.

    </p>


    <!-- Form -->

    <form action="SendOTP" method="post">


        <!-- Email -->

        <div class="input-box">

            <i class="bi bi-envelope input-icon"></i>

            <input

                type="email"

                name="email"

                placeholder="Enter your registered email"

                autocomplete="off"

                required>

        </div>


        <!-- Button -->

        <button

            type="submit"

            class="reset-btn">

            <i class="bi bi-send me-2"></i>

            Send Reset Link

        </button>


    </form>


    <!-- Back -->

    <div class="back-login">

        Remember your password?

        <a href="Login">

            Back to Login

        </a>

    </div>


    <!-- Security -->

    <div class="security-text">

        <i class="bi bi-shield-lock-fill"></i>

        Your account information is securely protected

    </div>


</div>

</div>

</body>

</html>
