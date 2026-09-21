<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Submit Project Report</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
      rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
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

body {

    font-family: 'Poppins', sans-serif;

    min-height: 100vh;

    color: white;

    overflow-x: hidden;

    background:
        radial-gradient(circle at 10% 20%, rgba(0, 198, 255, 0.25), transparent 25%),
        radial-gradient(circle at 90% 10%, rgba(123, 47, 247, 0.30), transparent 25%),
        radial-gradient(circle at 50% 90%, rgba(0, 255, 170, 0.18), transparent 30%),
        linear-gradient(135deg, #050816, #0b1026, #111936);

    position: relative;
}


/* =====================================================
   ANIMATED BACKGROUND
===================================================== */

body::before {

    content: "";

    position: fixed;

    width: 500px;
    height: 500px;

    border-radius: 50%;

    background: rgba(0, 200, 255, 0.08);

    filter: blur(10px);

    top: -150px;
    left: -150px;

    animation: moveCircle 12s infinite alternate ease-in-out;

    z-index: -1;
}


body::after {

    content: "";

    position: fixed;

    width: 450px;
    height: 450px;

    border-radius: 50%;

    background: rgba(140, 50, 255, 0.10);

    filter: blur(15px);

    bottom: -150px;
    right: -100px;

    animation: moveCircle2 15s infinite alternate ease-in-out;

    z-index: -1;
}


@keyframes moveCircle {

    0% {
        transform: translate(0, 0);
    }

    100% {
        transform: translate(250px, 180px);
    }
}


@keyframes moveCircle2 {

    0% {
        transform: translate(0, 0);
    }

    100% {
        transform: translate(-200px, -150px);
    }
}


/* =====================================================
   NAVBAR
===================================================== */

.navbar-custom {

    padding: 18px 7%;

    background: rgba(5, 8, 25, 0.65);

    backdrop-filter: blur(15px);

    border-bottom: 1px solid rgba(255,255,255,0.08);

    box-shadow: 0 10px 40px rgba(0,0,0,0.25);
}


.logo {

    font-size: 23px;

    font-weight: 700;

    letter-spacing: 1px;

    color: white;
}


.logo i {

    color: #00d4ff;

    margin-right: 8px;

    animation: pulseIcon 2s infinite;
}


@keyframes pulseIcon {

    0%,100% {
        transform: scale(1);
    }

    50% {
        transform: scale(1.2);
    }
}


.secure-badge {

    padding: 7px 15px;

    border-radius: 30px;

    font-size: 12px;

    background: rgba(0,255,170,0.10);

    border: 1px solid rgba(0,255,170,0.25);

    color: #00ffaa;
}


/* =====================================================
   MAIN CONTAINER
===================================================== */

.main-container {

    width: 92%;

    max-width: 1100px;

    margin: 55px auto;

}


/* =====================================================
   HEADER
===================================================== */

.page-heading {

    text-align: center;

    margin-bottom: 40px;

    animation: slideDown 1s ease;
}


.page-heading .icon {

    width: 75px;

    height: 75px;

    margin: auto;

    display: flex;

    justify-content: center;

    align-items: center;

    border-radius: 22px;

    background: linear-gradient(135deg, #00c6ff, #7b2ff7);

    box-shadow:
        0 10px 35px rgba(0,198,255,0.25);

    font-size: 35px;

    animation: floating 3s infinite ease-in-out;
}


.page-heading h1 {

    margin-top: 22px;

    font-size: 38px;

    font-weight: 700;

    background: linear-gradient(90deg, #ffffff, #8be9ff, #c6a4ff);

    -webkit-background-clip: text;

    -webkit-text-fill-color: transparent;
}


.page-heading p {

    color: #aab4d0;

    font-size: 15px;

    margin-top: 10px;
}


@keyframes floating {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-10px);
    }
}


@keyframes slideDown {

    from {
        opacity: 0;
        transform: translateY(-40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* =====================================================
   FORM CARD
===================================================== */

.report-card {

    background: rgba(255,255,255,0.07);

    border: 1px solid rgba(255,255,255,0.12);

    border-radius: 30px;

    backdrop-filter: blur(25px);

    -webkit-backdrop-filter: blur(25px);

    box-shadow:
        0 30px 80px rgba(0,0,0,0.40);

    padding: 45px;

    animation: cardAppear 1s ease;

    position: relative;

    overflow: hidden;
}


.report-card::before {

    content: "";

    position: absolute;

    width: 250px;

    height: 250px;

    border-radius: 50%;

    background: rgba(0,200,255,0.08);

    top: -150px;

    right: -100px;
}


@keyframes cardAppear {

    from {
        opacity: 0;
        transform: translateY(40px) scale(0.97);
    }

    to {
        opacity: 1;
        transform: translateY(0) scale(1);
    }
}


/* =====================================================
   FORM GROUP
===================================================== */

.form-group-custom {

    margin-bottom: 28px;

    position: relative;
}


.form-label-custom {

    display: block;

    margin-bottom: 10px;

    color: #dce5ff;

    font-weight: 500;

    font-size: 14px;
}


.form-label-custom i {

    color: #00d4ff;

    margin-right: 7px;

    font-size: 17px;
}


/* =====================================================
   INPUT
===================================================== */

.custom-input {

    width: 100%;

    padding: 15px 18px 15px 50px;

    border-radius: 14px;

    border: 1px solid rgba(255,255,255,0.13);

    background: rgba(0,0,0,0.20);

    color: white;

    outline: none;

    transition: all 0.3s ease;

    font-size: 14px;
}


.custom-input::placeholder {

    color: #77829f;
}


.custom-input:focus {

    border-color: #00d4ff;

    background: rgba(0,0,0,0.30);

    box-shadow:
        0 0 0 4px rgba(0,212,255,0.08),
        0 0 25px rgba(0,212,255,0.08);

    transform: translateY(-2px);
}


.input-icon {

    position: absolute;

    left: 18px;

    bottom: 15px;

    color: #00d4ff;

    font-size: 18px;

    pointer-events: none;
}


/* =====================================================
   SELECT
===================================================== */

select.custom-input {

    appearance: none;

    cursor: pointer;
}


select.custom-input option {

    background: #10172e;

    color: white;
}


/* =====================================================
   TEXTAREA
===================================================== */

textarea.custom-input {

    min-height: 170px;

    resize: vertical;

    padding-left: 50px;

    padding-top: 17px;
}


.textarea-icon {

    top: 48px;

    bottom: auto;
}


/* =====================================================
   CHARACTER COUNTER
===================================================== */

.counter {

    text-align: right;

    color: #7d89a8;

    font-size: 11px;

    margin-top: 7px;
}


/* =====================================================
   SUBMIT BUTTON
===================================================== */

.submit-btn {

    width: 100%;

    border: none;

    border-radius: 15px;

    padding: 16px;

    font-size: 16px;

    font-weight: 600;

    color: white;

    background: linear-gradient(
        135deg,
        #00bfff,
        #6c35ff
    );

    box-shadow:
        0 12px 30px rgba(0,180,255,0.20);

    transition: all 0.35s ease;

    position: relative;

    overflow: hidden;
}


.submit-btn:hover {

    transform: translateY(-4px);

    box-shadow:
        0 18px 40px rgba(0,180,255,0.35);
}


.submit-btn:active {

    transform: scale(0.97);
}


.submit-btn i {

    margin-right: 8px;
}


/* =====================================================
   RIPPLE EFFECT
===================================================== */

.submit-btn::after {

    content: "";

    position: absolute;

    width: 0;

    height: 0;

    background: rgba(255,255,255,0.25);

    border-radius: 50%;

    transform: translate(-50%, -50%);

    transition: width 0.5s, height 0.5s;
}


.submit-btn:hover::after {

    width: 400px;

    height: 400px;
}


/* =====================================================
   INFO BOX
===================================================== */

.info-box {

    background: rgba(0,0,0,0.18);

    border: 1px solid rgba(255,255,255,0.08);

    border-radius: 20px;

    padding: 22px;

    margin-top: 25px;

    color: #aab4d0;

    font-size: 13px;

    line-height: 1.7;
}


.info-box i {

    color: #00ffaa;

    margin-right: 6px;
}


/* =====================================================
   PROGRESS
===================================================== */

.progress-container {

    display: none;

    margin-top: 20px;

    align-items: center;

    gap: 10px;
}


.progress {

    height: 7px;

    flex: 1;

    background: rgba(255,255,255,0.10);

    border-radius: 20px;

    overflow: hidden;
}


.progress-bar {

    width: 0%;

    background: linear-gradient(
        90deg,
        #00d4ff,
        #7b2ff7
    );

    transition: width 0.2s;
}


/* =====================================================
   SUCCESS BOX
===================================================== */

.success-box {

    display: none;

    margin-top: 20px;

    padding: 18px;

    border-radius: 15px;

    background: rgba(0,255,170,0.08);

    border: 1px solid rgba(0,255,170,0.25);

    color: #00ffaa;

    text-align: center;

    animation: successAnimation 0.7s ease;
}


@keyframes successAnimation {

    from {
        opacity: 0;
        transform: scale(0.8);
    }

    to {
        opacity: 1;
        transform: scale(1);
    }
}


/* =====================================================
   FOOTER
===================================================== */

.footer-text {

    text-align: center;

    margin-top: 30px;

    color: #68728e;

    font-size: 12px;
}


/* =====================================================
   RESPONSIVE
===================================================== */

@media(max-width:768px) {

    .report-card {

        padding: 25px;

        border-radius: 22px;
    }

    .page-heading h1 {

        font-size: 28px;
    }

    .main-container {

        width: 94%;

        margin-top: 35px;
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

        <div class="logo">

            <i class="bi bi-kanban-fill"></i>

            Project Management

        </div>

        <div class="secure-badge">

            <i class="bi bi-shield-check"></i>

            Secure Portal

        </div>

    </div>

</nav>



<!-- =====================================================
     MAIN
===================================================== -->

<div class="main-container">


    <!-- HEADER -->

    <div class="page-heading">

        <div class="icon">

            <i class="bi bi-file-earmark-arrow-up-fill"></i>

        </div>

        <h1>Submit Project Report</h1>

        <p>
            Share your project progress, updates and final report
            with your manager.
        </p>

    </div>



    <!-- FORM CARD -->

    <div class="report-card">


        <form
            id="reportForm"
            action="saveReport"
            method="post">
            
            
            <!-- PROJECT ID -->

<div class="form-group-custom">

    <label class="form-label-custom">

        <i class="bi bi-hash"></i>

        Project ID

    </label>

    <i class="bi bi-upc-scan input-icon"></i>

    <input
        type="text"
        name="projectId"
        id="projectId"
        class="custom-input"
        placeholder="Enter your project ID"
        required>

</div>


            <!-- PROJECT NAME -->

            <div class="form-group-custom">

                <label class="form-label-custom">

                    <i class="bi bi-folder-fill"></i>

                    Project Name

                </label>

                <i class="bi bi-kanban-fill input-icon"></i>

                <input
                    type="text"
                    name="projectName"
                    id="projectName"
                    class="custom-input"
                    placeholder="Enter your project name"
                    required>

            </div>



            <!-- REPORT TYPE -->

            <div class="form-group-custom">

                <label class="form-label-custom">

                    <i class="bi bi-bar-chart-fill"></i>

                    Report Type

                </label>

                <i class="bi bi-file-earmark-text-fill input-icon"></i>

                <select
                    name="reportType"
                    id="reportType"
                    class="custom-input"
                    required>

                    <option value="">Select report type</option>

                    <option value="Daily">
                        Daily Report
                    </option>

                    <option value="Weekly">
                        Weekly Report
                    </option>

                    <option value="Monthly">
                        Monthly Report
                    </option>

                    <option value="Final">
                        Final Project Report
                    </option>

                </select>

            </div>



            <!-- SUBJECT -->

            <div class="form-group-custom">

                <label class="form-label-custom">

                    <i class="bi bi-pencil-square"></i>

                    Subject

                </label>

                <i class="bi bi-chat-left-text-fill input-icon"></i>

                <input
                    type="text"
                    name="subject"
                    id="subject"
                    class="custom-input"
                    placeholder="Enter report subject"
                    maxlength="100"
                    required>

            </div>



            <!-- MESSAGE -->

            <div class="form-group-custom">

                <label class="form-label-custom">

                    <i class="bi bi-chat-square-dots-fill"></i>

                    Project Report Message

                </label>

                <i class="bi bi-card-text input-icon textarea-icon"></i>

                <textarea
                    name="message"
                    id="message"
                    class="custom-input"
                    placeholder="Write your project report, progress, achievements, issues and important updates..."
                    maxlength="500"
                    required></textarea>

                <div class="counter">

                    <span id="counter">0</span> / 500 characters

                </div>

            </div>



            <!-- SUBMIT -->

            <button
                type="submit"
                class="submit-btn"
                id="sendBtn">

                <i class="bi bi-send-fill"></i>

                Submit Project Report

            </button>



            <!-- PROGRESS -->

            <div
                class="progress-container"
                id="progressContainer">

                <div class="progress">

                    <div
                        class="progress-bar"
                        id="progressBar">
                    </div>

                </div>

                <i class="bi bi-cloud-arrow-up-fill"></i>

            </div>



            <!-- SUCCESS -->

            <div
                class="success-box"
                id="successBox">

                <i class="bi bi-check-circle-fill"></i>

                Project report submitted successfully!

            </div>



            <!-- INFORMATION -->

            <div class="info-box">

                <i class="bi bi-info-circle-fill"></i>

                <strong>Submission Information</strong>

                <br>

                Please make sure that your project name,
                report type, subject and report message
                are correct before submitting.

            </div>


        </form>

    </div>



    <div class="footer-text">

        <i class="bi bi-shield-lock-fill"></i>

        Your project report is securely submitted to the management system.

    </div>


</div>



<!-- =====================================================
     JAVASCRIPT
===================================================== -->

<script>

/* =====================================================
   CHARACTER COUNTER
===================================================== */

const message = document.getElementById("message");

const counter = document.getElementById("counter");

message.addEventListener("input", function() {

    counter.innerText = message.value.length;

});



/* =====================================================
   FORM SUBMIT ANIMATION
===================================================== */

const form = document.getElementById("reportForm");

const sendBtn = document.getElementById("sendBtn");

const progressContainer =
    document.getElementById("progressContainer");

const progressBar =
    document.getElementById("progressBar");


form.addEventListener("submit", function() {

    /*
       DO NOT USE e.preventDefault()

       The form must actually submit
       to your Spring MVC controller.
    */

    sendBtn.disabled = true;

    sendBtn.innerHTML =
        '<span class="spinner-border spinner-border-sm me-2"></span>' +
        'Submitting Report...';

    progressContainer.style.display = "flex";

    let progress = 0;

    const interval = setInterval(function() {

        progress += 10;

        progressBar.style.width =
            progress + "%";

        if(progress >= 100) {

            clearInterval(interval);

        }

    }, 80);

});



/* =====================================================
   INPUT ANIMATION
===================================================== */

const inputs =
    document.querySelectorAll(".custom-input");


inputs.forEach(function(input) {

    input.addEventListener("focus", function() {

        this.parentElement.style.transform =
            "translateY(-2px)";

    });


    input.addEventListener("blur", function() {

        this.parentElement.style.transform =
            "translateY(0)";

    });

});



/* =====================================================
   PREVENT DOUBLE SUBMISSION
===================================================== */

form.addEventListener("submit", function() {

    setTimeout(function() {

        sendBtn.disabled = true;

    }, 10);

});

</script>


</body>

</html>