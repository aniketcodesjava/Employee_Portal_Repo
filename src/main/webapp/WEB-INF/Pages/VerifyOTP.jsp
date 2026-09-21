
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Verify OTP | Employee</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
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

            display: flex;
            justify-content: center;
            align-items: center;

            background:
                linear-gradient(135deg,
                #141e30,
                #243b55);

            overflow: hidden;
        }

        /* Background circles */

        .circle {
            position: absolute;
            border-radius: 50%;
            filter: blur(2px);
            opacity: 0.25;
        }

        .circle-one {
            width: 300px;
            height: 300px;
            background: #00d4ff;
            top: -100px;
            left: -100px;
            animation: moveOne 6s infinite alternate;
        }

        .circle-two {
            width: 250px;
            height: 250px;
            background: #ff00cc;
            bottom: -80px;
            right: -80px;
            animation: moveTwo 6s infinite alternate;
        }

        @keyframes moveOne {

            from {
                transform: translate(0, 0);
            }

            to {
                transform: translate(60px, 60px);
            }
        }

        @keyframes moveTwo {

            from {
                transform: translate(0, 0);
            }

            to {
                transform: translate(-60px, -60px);
            }
        }

        /* Main Card */

        .otp-card {

            width: 420px;

            padding: 40px 35px;

            border-radius: 25px;

            background: rgba(255,255,255,0.12);

            backdrop-filter: blur(20px);

            -webkit-backdrop-filter: blur(20px);

            border: 1px solid rgba(255,255,255,0.2);

            box-shadow:
                0 25px 50px rgba(0,0,0,0.4);

            color: white;

            animation: cardAnimation 0.8s ease;
        }

        @keyframes cardAnimation {

            from {
                opacity: 0;
                transform: translateY(40px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Icon */

        .otp-icon {

            width: 80px;
            height: 80px;

            margin: auto;

            display: flex;

            justify-content: center;
            align-items: center;

            border-radius: 50%;

            background: rgba(255,255,255,0.15);

            font-size: 38px;

            color: #00d4ff;

            box-shadow:
                0 0 25px rgba(0,212,255,0.5);

            animation: pulse 2s infinite;
        }

        @keyframes pulse {

            0% {
                box-shadow: 0 0 15px rgba(0,212,255,0.3);
            }

            50% {
                box-shadow: 0 0 30px rgba(0,212,255,0.8);
            }

            100% {
                box-shadow: 0 0 15px rgba(0,212,255,0.3);
            }
        }

        .title {

            text-align: center;

            margin-top: 20px;

            font-weight: 600;

            font-size: 28px;
        }

        .description {

            text-align: center;

            color: #d6d6d6;

            font-size: 14px;

            margin-top: 10px;

            margin-bottom: 30px;
        }

        /* Input */

        .input-box {

            position: relative;

            margin-bottom: 20px;
        }

        .input-box i {

            position: absolute;

            left: 15px;

            top: 50%;

            transform: translateY(-50%);

            color: #00d4ff;

            font-size: 20px;
        }

        .input-box input {

            width: 100%;

            padding: 14px 45px;

            border: none;

            outline: none;

            border-radius: 12px;

            background: rgba(255,255,255,0.12);

            color: white;

            font-size: 16px;

            letter-spacing: 5px;

            text-align: center;

            transition: 0.3s;
        }

        .input-box input:focus {

            background: rgba(255,255,255,0.18);

            box-shadow:
                0 0 0 2px #00d4ff;
        }

        .input-box input::placeholder {

            color: #cfcfcf;

            letter-spacing: 0;
        }

        /* Verify button */

        .verify-btn {

            width: 100%;

            padding: 14px;

            border: none;

            border-radius: 12px;

            background:
                linear-gradient(135deg,
                #00d4ff,
                #0072ff);

            color: white;

            font-size: 16px;

            font-weight: 600;

            cursor: pointer;

            transition: 0.3s;

            box-shadow:
                0 8px 20px rgba(0,114,255,0.4);
        }

        .verify-btn:hover {

            transform: translateY(-3px);

            box-shadow:
                0 12px 25px rgba(0,114,255,0.6);
        }

        /* Back link */

        .back-login {

            text-align: center;

            margin-top: 25px;

            font-size: 14px;
        }

        .back-login a {

            color: #00d4ff;

            text-decoration: none;

            font-weight: 600;
        }

        .back-login a:hover {

            text-decoration: underline;
        }

        .security {

            text-align: center;

            margin-top: 25px;

            font-size: 12px;

            color: #bdbdbd;
        }

        @media(max-width:500px) {

            .otp-card {

                width: 90%;

                padding: 30px 25px;
            }

            .title {

                font-size: 24px;
            }
        }

    </style>

</head>

<body>

    <!-- Background Animation -->

    <div class="circle circle-one"></div>
    <div class="circle circle-two"></div>


    <!-- OTP Card -->

    <div class="otp-card">

        <!-- Icon -->

        <div class="otp-icon">

            <i class="bi bi-shield-lock"></i>

        </div>


        <!-- Title -->

        <h2 class="title">

            Verify OTP

        </h2>


        <!-- Description -->

        <p class="description">

            We have sent a 6-digit OTP to your registered email address.
            Enter the OTP below to continue.

        </p>


        <!-- OTP Form -->

        <form action="VerifyOTP"
              method="post">


            <!-- Email -->

            <div class="input-box">

                <i class="bi bi-envelope"></i>

                <input type="email"
                       name="email"
                       placeholder="Enter your email"
                       required>

            </div>


            <!-- OTP -->

            <div class="input-box">

                <i class="bi bi-key"></i>

                <input type="text"
                       name="otp"
                       placeholder="Enter 6-digit OTP"
                       maxlength="6"
                       pattern="[0-9]{6}"
                       inputmode="numeric"
                       required>

            </div>


            <!-- Verify -->

            <button type="submit"
                    class="verify-btn">

                <i class="bi bi-check-circle me-2"></i>

                Verify OTP

            </button>

        </form>


        <!-- Back Login -->

        <div class="back-login">

            Remember your password?

            <a href="Login">

                Back to Login

            </a>

        </div>


        <!-- Security -->

        <div class="security">

            <i class="bi bi-shield-check"></i>

            Your account information is securely protected.

        </div>

    </div>


    <script>

        // Allow only numbers in OTP field

        const otpInput = document.querySelector(
            'input[name="otp"]'
        );

        otpInput.addEventListener("input", function () {

            this.value = this.value.replace(/\D/g, '');

        });

    </script>

</body>

</html>
