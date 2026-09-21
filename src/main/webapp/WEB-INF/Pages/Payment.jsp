
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Payment Management</title>

<!-- =========================================================
     GOOGLE FONT
========================================================= -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@500;600;700;800&display=swap"
      rel="stylesheet">


<!-- =========================================================
     FONT AWESOME
========================================================= -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


<style>

/* =========================================================
   RESET
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* =========================================================
   BODY
========================================================= */

body {

    font-family: 'Inter', sans-serif;

    min-height: 100vh;

    padding: 35px 20px;

    color: #172033;

    background:

        linear-gradient(
            135deg,
            rgba(11, 18, 42, 0.94),
            rgba(42, 31, 93, 0.88)
        ),

        url("https://images.unsplash.com/photo-1556761175-b413da4baf72?auto=format&fit=crop&w=2200&q=85");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;

    position: relative;

    overflow-x: hidden;
}


/* =========================================================
   ANIMATED BACKGROUND BLOBS
========================================================= */

body::before {

    content: "";

    position: fixed;

    width: 420px;

    height: 420px;

    border-radius: 50%;

    background: rgba(123, 92, 255, 0.25);

    filter: blur(80px);

    top: -120px;

    left: -100px;

    animation: floatBlob 8s ease-in-out infinite;

    z-index: -1;
}


body::after {

    content: "";

    position: fixed;

    width: 380px;

    height: 380px;

    border-radius: 50%;

    background: rgba(0, 210, 255, 0.18);

    filter: blur(90px);

    bottom: -120px;

    right: -80px;

    animation: floatBlob2 10s ease-in-out infinite;

    z-index: -1;
}


@keyframes floatBlob {

    0%,100% {
        transform: translate(0,0);
    }

    50% {
        transform: translate(60px,50px);
    }
}


@keyframes floatBlob2 {

    0%,100% {
        transform: translate(0,0);
    }

    50% {
        transform: translate(-50px,-40px);
    }
}


/* =========================================================
   MAIN WRAPPER
========================================================= */

.main-wrapper {

    width: 100%;

    max-width: 1550px;

    margin: auto;

    display: flex;

    align-items: flex-start;

    gap: 25px;
}


/* =========================================================
   LEFT CALCULATOR
========================================================= */

.calculator {

    width: 355px;

    flex-shrink: 0;

    position: sticky;

    top: 20px;

    padding: 27px;

    border-radius: 25px;

    background: rgba(255,255,255,0.94);

    backdrop-filter: blur(18px);

    box-shadow:
        0 25px 70px rgba(0,0,0,0.30);

    border: 1px solid rgba(255,255,255,0.7);

    animation: slideLeft 0.8s ease;
}


@keyframes slideLeft {

    from {
        opacity: 0;
        transform: translateX(-50px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}


/* =========================================================
   CALCULATOR HEADER
========================================================= */

.calculator-header {

    text-align: center;

    margin-bottom: 23px;
}


.calculator-icon {

    width: 72px;

    height: 72px;

    margin: auto;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 20px;

    color: white;

    font-size: 30px;

    background:
        linear-gradient(
            135deg,
            #6d5dfc,
            #4936d8
        );

    box-shadow:
        0 12px 30px rgba(82,64,220,0.35);

    animation: iconFloat 3s ease-in-out infinite;
}


@keyframes iconFloat {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-6px);
    }
}


.calculator-header h2 {

    font-family: 'Poppins', sans-serif;

    margin-top: 15px;

    font-size: 23px;

    color: #20234b;
}


.calculator-header p {

    color: #73778c;

    font-size: 13px;

    margin-top: 5px;
}


/* =========================================================
   CALCULATOR GROUP
========================================================= */

.calc-group {

    margin-bottom: 13px;
}


.calc-group label {

    display: block;

    margin-bottom: 6px;

    color: #41455d;

    font-size: 12px;

    font-weight: 700;
}


.calc-group label i {

    color: #6457e8;

    margin-right: 5px;
}


.calc-group input {

    width: 100%;

    padding: 11px 13px;

    border-radius: 10px;

    border: 1px solid #dddfea;

    background: #f9f9fd;

    outline: none;

    font-size: 13px;

    transition: all .3s ease;
}


.calc-group input:focus {

    background: white;

    border-color: #6457e8;

    box-shadow:
        0 0 0 4px rgba(100,87,232,0.10);

    transform: translateY(-1px);
}


.calculator hr {

    border: none;

    height: 1px;

    background: #e8e8f1;

    margin: 17px 0;
}


/* =========================================================
   CALCULATE BUTTON
========================================================= */

.calculate-btn {

    width: 100%;

    padding: 14px;

    border: none;

    border-radius: 12px;

    color: white;

    background:
        linear-gradient(
            135deg,
            #6757ef,
            #4935d4
        );

    font-size: 14px;

    font-weight: 800;

    cursor: pointer;

    transition: all .3s ease;

    box-shadow:
        0 10px 25px rgba(82,67,220,0.25);
}


.calculate-btn:hover {

    transform: translateY(-3px);

    box-shadow:
        0 15px 30px rgba(82,67,220,0.35);
}


.calculate-btn i {

    margin-right: 7px;
}


/* =========================================================
   RESET CALCULATOR
========================================================= */

.reset-btn {

    width: 100%;

    margin-top: 9px;

    padding: 10px;

    border: 1px solid #e1e1ed;

    border-radius: 10px;

    background: white;

    color: #62667b;

    font-weight: 700;

    cursor: pointer;

    transition: .3s;
}


.reset-btn:hover {

    background: #f5f4ff;

    color: #4f42d8;
}


/* =========================================================
   CALCULATOR RESULT
========================================================= */

.calculator-result {

    margin-top: 20px;

    padding: 15px;

    border-radius: 15px;

    background:
        linear-gradient(
            145deg,
            #f5f4ff,
            #f8fbff
        );

    border: 1px solid #e7e5fb;
}


.result-row {

    display: flex;

    justify-content: space-between;

    align-items: center;

    padding: 9px 2px;

    border-bottom: 1px solid #e4e4ed;

    font-size: 13px;
}


.result-row:last-child {

    border-bottom: none;
}


.result-row span {

    color: #62667a;

    font-weight: 600;
}


.result-row strong {

    color: #24263c;
}


.net-row {

    margin-top: 10px;

    padding: 13px;

    border-radius: 11px;

    color: white;

    background:
        linear-gradient(
            135deg,
            #00a896,
            #087f72
        );

    box-shadow:
        0 10px 20px rgba(0,140,125,0.20);
}


.net-row span,
.net-row strong {

    color: white;
}


.net-row strong {

    font-size: 17px;
}


/* =========================================================
   RIGHT PAYMENT CONTAINER
========================================================= */

.payment-container {

    flex: 1;

    min-width: 0;

    padding: 35px;

    border-radius: 25px;

    background: rgba(255,255,255,0.96);

    backdrop-filter: blur(18px);

    box-shadow:
        0 25px 70px rgba(0,0,0,0.30);

    border: 1px solid rgba(255,255,255,0.7);

    animation: slideRight 0.8s ease;
}


@keyframes slideRight {

    from {
        opacity: 0;
        transform: translateX(50px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}


/* =========================================================
   HERO HEADER
========================================================= */

.form-header {

    position: relative;

    overflow: hidden;

    border-radius: 20px;

    padding: 30px;

    margin-bottom: 30px;

    color: white;

    background:

        linear-gradient(
            120deg,
            rgba(47,42,125,.96),
            rgba(89,68,205,.94)
        ),

        url("https://images.unsplash.com/photo-1554224155-6726b3ff858f?auto=format&fit=crop&w=1400&q=80");

    background-size: cover;

    background-position: center;

    box-shadow:
        0 15px 35px rgba(65,50,170,.25);
}


.form-header::after {

    content: "";

    position: absolute;

    width: 180px;

    height: 180px;

    border-radius: 50%;

    background: rgba(255,255,255,.10);

    right: -50px;

    top: -70px;
}


.header-content {

    position: relative;

    z-index: 2;
}


.header-badge {

    display: inline-flex;

    align-items: center;

    gap: 7px;

    padding: 7px 13px;

    border-radius: 30px;

    background: rgba(255,255,255,.15);

    border: 1px solid rgba(255,255,255,.25);

    font-size: 11px;

    font-weight: 700;

    letter-spacing: .5px;
}


.form-header h1 {

    margin-top: 15px;

    font-family: 'Poppins', sans-serif;

    font-size: 31px;

    font-weight: 800;
}


.form-header p {

    margin-top: 7px;

    color: rgba(255,255,255,.80);

    font-size: 14px;
}


.header-icon {

    position: absolute;

    right: 35px;

    bottom: 20px;

    font-size: 85px;

    color: rgba(255,255,255,.12);
}


/* =========================================================
   PROGRESS
========================================================= */

.progress-wrapper {

    margin-bottom: 25px;
}


.progress-top {

    display: flex;

    justify-content: space-between;

    margin-bottom: 8px;

    font-size: 12px;

    font-weight: 700;

    color: #64687b;
}


.progress-bar {

    width: 100%;

    height: 7px;

    border-radius: 20px;

    background: #ececf4;

    overflow: hidden;
}


.progress-fill {

    width: 0%;

    height: 100%;

    border-radius: 20px;

    background:
        linear-gradient(
            90deg,
            #6557e8,
            #00b4d8
        );

    transition: width .4s ease;
}


/* =========================================================
   SECTION
========================================================= */

.section {

    margin-top: 23px;

    padding: 23px;

    border-radius: 18px;

    background: #fbfbfe;

    border: 1px solid #e9e9f2;

    transition: all .3s ease;

    animation: sectionAppear .6s ease;
}


.section:hover {

    border-color: #dcd9fa;

    box-shadow:
        0 10px 30px rgba(45,40,100,0.06);
}


@keyframes sectionAppear {

    from {
        opacity: 0;
        transform: translateY(15px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* =========================================================
   SECTION TITLE
========================================================= */

.section-title {

    display: flex;

    align-items: center;

    gap: 10px;

    margin-bottom: 21px;

    font-family: 'Poppins', sans-serif;

    font-size: 18px;

    font-weight: 800;

    color: #292b48;
}


.section-title::before {

    content: "";

    width: 6px;

    height: 27px;

    border-radius: 20px;

    background:
        linear-gradient(
            180deg,
            #6758eb,
            #00a8c6
        );
}


.section-title i {

    width: 34px;

    height: 34px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 10px;

    color: #5b4cdb;

    background: #eeedff;

    font-size: 14px;
}


/* =========================================================
   FORM ROW
========================================================= */

.form-row {

    display: flex;

    gap: 20px;

    margin-bottom: 18px;
}


.form-row:last-child {

    margin-bottom: 0;
}


.form-group {

    width: 50%;
}


/* =========================================================
   LABEL
========================================================= */

.form-group label {

    display: flex;

    align-items: center;

    margin-bottom: 7px;

    font-size: 13px;

    font-weight: 700;

    color: #3d4158;
}


.form-group label i {

    width: 24px;

    color: #6354df;

    font-size: 13px;
}


/* =========================================================
   INPUT / SELECT
========================================================= */

.form-group input,
.form-group select {

    width: 100%;

    height: 46px;

    padding: 0 14px;

    border-radius: 11px;

    border: 1px solid #dfe0ea;

    background: white;

    outline: none;

    font-family: 'Inter', sans-serif;

    font-size: 13px;

    color: #292d40;

    transition: all .3s ease;
}


.form-group input::placeholder {

    color: #a1a4b4;
}


.form-group input:hover,
.form-group select:hover {

    border-color: #bdb9ef;
}


.form-group input:focus,
.form-group select:focus {

    border-color: #6253df;

    box-shadow:
        0 0 0 4px rgba(98,83,223,.10);

    transform: translateY(-1px);
}


/* =========================================================
   READONLY
========================================================= */

.readonly {

    background:
        linear-gradient(
            135deg,
            #f0efff,
            #eefbff
        ) !important;

    color: #5042cc !important;

    font-weight: 800 !important;

    border-color: #d8d5ff !important;

    cursor: not-allowed;
}


/* =========================================================
   INPUT HELP
========================================================= */

.input-help {

    display: block;

    margin-top: 5px;

    font-size: 10px;

    color: #999daf;
}


/* =========================================================
   SALARY HIGHLIGHT
========================================================= */

.salary-highlight {

    margin-top: 18px;

    padding: 18px;

    border-radius: 15px;

    background:
        linear-gradient(
            135deg,
            #f2f0ff,
            #effaff
        );

    border: 1px solid #e0ddff;
}


.salary-highlight-title {

    display: flex;

    align-items: center;

    gap: 8px;

    margin-bottom: 12px;

    color: #4d43aa;

    font-size: 13px;

    font-weight: 800;
}


.salary-highlight-title i {

    font-size: 15px;
}


/* =========================================================
   SAVE BUTTON
========================================================= */

.button-container {

    display: flex;

    justify-content: center;

    gap: 12px;

    margin-top: 30px;

    padding-top: 10px;
}


.save-btn {

    min-width: 230px;

    padding: 15px 35px;

    border: none;

    border-radius: 13px;

    color: white;

    background:
        linear-gradient(
            135deg,
            #6554e8,
            #4331c5
        );

    font-size: 14px;

    font-weight: 800;

    cursor: pointer;

    box-shadow:
        0 12px 28px rgba(77,61,206,.28);

    transition: all .3s ease;
}


.save-btn:hover {

    transform: translateY(-3px) scale(1.01);

    box-shadow:
        0 18px 35px rgba(77,61,206,.38);
}


.save-btn i {

    margin-right: 8px;
}


/* =========================================================
   FOOTER NOTE
========================================================= */

.form-note {

    text-align: center;

    margin-top: 17px;

    color: #8b8fa0;

    font-size: 11px;
}


.form-note i {

    color: #00a18e;

    margin-right: 4px;
}


/* =========================================================
   TOAST
========================================================= */

.toast {

    position: fixed;

    right: 25px;

    bottom: 25px;

    min-width: 280px;

    padding: 15px 18px;

    border-radius: 14px;

    color: white;

    background:
        linear-gradient(
            135deg,
            #24213e,
            #413b70
        );

    box-shadow:
        0 15px 40px rgba(0,0,0,.30);

    display: flex;

    align-items: center;

    gap: 10px;

    transform: translateY(100px);

    opacity: 0;

    transition: .4s ease;

    z-index: 1000;

    font-size: 13px;

    font-weight: 600;
}


.toast.show {

    transform: translateY(0);

    opacity: 1;
}


.toast i {

    color: #00d4bd;

    font-size: 18px;
}


/* =========================================================
   MOBILE
========================================================= */

@media(max-width: 1150px) {

    .main-wrapper {

        flex-direction: column;
    }

    .calculator {

        width: 100%;

        position: static;
    }

    .payment-container {

        width: 100%;
    }
}


@media(max-width: 700px) {

    body {

        padding: 15px 10px;
    }

    .payment-container {

        padding: 16px;

        border-radius: 18px;
    }

    .calculator {

        padding: 20px;

        border-radius: 18px;
    }

    .form-header {

        padding: 23px;
    }

    .form-header h1 {

        font-size: 24px;
    }

    .header-icon {

        display: none;
    }

    .section {

        padding: 17px;
    }

    .form-row {

        flex-direction: column;

        gap: 17px;

        margin-bottom: 17px;
    }

    .form-group {

        width: 100%;
    }

    .button-container {

        flex-direction: column;
    }

    .save-btn {

        width: 100%;
    }
}


/* =========================================================
   SMALL MOBILE
========================================================= */

@media(max-width: 400px) {

    .form-header h1 {

        font-size: 21px;
    }

    .section-title {

        font-size: 16px;
    }

    .calculator-header h2 {

        font-size: 20px;
    }
}

</style>

</head>


<body>


<div class="main-wrapper">


<!-- =========================================================
     LEFT SIDE - SALARY CALCULATOR
========================================================= -->

<div class="calculator">

    <div class="calculator-header">

        <div class="calculator-icon">
            <i class="fa-solid fa-calculator"></i>
        </div>

        <h2>Salary Calculator</h2>

        <p>
            Quickly calculate gross, deductions and net salary
        </p>

    </div>


    <!-- BASIC -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-money-bill-wave"></i>
            Basic Salary
        </label>

        <input type="number"
               id="calcBasic"
               step="0.01"
               min="0"
               placeholder="Enter basic salary">

    </div>


    <!-- HRA -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-house"></i>
            HRA
        </label>

        <input type="number"
               id="calcHra"
               step="0.01"
               min="0"
               placeholder="Enter HRA">

    </div>


    <!-- TRANSPORT -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-bus"></i>
            Transport Allowance
        </label>

        <input type="number"
               id="calcTransport"
               step="0.01"
               min="0"
               placeholder="Transport allowance">

    </div>


    <!-- SPECIAL -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-star"></i>
            Special Allowance
        </label>

        <input type="number"
               id="calcSpecial"
               step="0.01"
               min="0"
               placeholder="Special allowance">

    </div>


    <!-- MEDICAL -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-notes-medical"></i>
            Medical Allowance
        </label>

        <input type="number"
               id="calcMedical"
               step="0.01"
               min="0"
               placeholder="Medical allowance">

    </div>


    <!-- OTHER -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-circle-plus"></i>
            Other Allowance
        </label>

        <input type="number"
               id="calcOther"
               step="0.01"
               min="0"
               placeholder="Other allowance">

    </div>


    <hr>


    <!-- PF -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-piggy-bank"></i>
            PF
        </label>

        <input type="number"
               id="calcPf"
               step="0.01"
               min="0"
               placeholder="PF deduction">

    </div>


    <!-- TAX -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-file-invoice-dollar"></i>
            Tax
        </label>

        <input type="number"
               id="calcTax"
               step="0.01"
               min="0"
               placeholder="Tax deduction">

    </div>


    <!-- TDS -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-percent"></i>
            TDS
        </label>

        <input type="number"
               id="calcTds"
               step="0.01"
               min="0"
               placeholder="TDS">

    </div>


    <!-- ADVANCE -->

    <div class="calc-group">

        <label>
            <i class="fa-solid fa-hand-holding-dollar"></i>
            Advance Deduction
        </label>

        <input type="number"
               id="calcAdvance"
               step="0.01"
               min="0"
               placeholder="Advance deduction">

    </div>


    <!-- CALCULATE -->

    <button type="button"
            class="calculate-btn"
            onclick="calculateSalary()">

        <i class="fa-solid fa-bolt"></i>

        Calculate & Sync Salary

    </button>


    <!-- RESET -->

    <button type="button"
            class="reset-btn"
            onclick="resetCalculator()">

        <i class="fa-solid fa-rotate-left"></i>

        Reset Calculator

    </button>


    <!-- RESULTS -->

    <div class="calculator-result">

        <div class="result-row">

            <span>
                <i class="fa-solid fa-arrow-trend-up"></i>
                Gross Salary
            </span>

            <strong id="calcGross">
                ₹0.00
            </strong>

        </div>


        <div class="result-row">

            <span>
                <i class="fa-solid fa-arrow-trend-down"></i>
                Total Deduction
            </span>

            <strong id="calcDeduction">
                ₹0.00
            </strong>

        </div>


        <div class="result-row net-row">

            <span>
                <i class="fa-solid fa-wallet"></i>
                Net Salary
            </span>

            <strong id="calcNet">
                ₹0.00
            </strong>

        </div>

    </div>

</div>



<!-- =========================================================
     RIGHT SIDE - PAYMENT FORM
========================================================= -->

<div class="payment-container">


    <!-- HERO -->

    <div class="form-header">

        <div class="header-content">

            <div class="header-badge">

                <i class="fa-solid fa-shield-halved"></i>

                SECURE PAYROLL MANAGEMENT

            </div>


            <h1>

                <i class="fa-solid fa-file-invoice-dollar"></i>

                Employee Payment Form

            </h1>


            <p>
                Manage employee salary, allowances, deductions
                and payment information easily.
            </p>

        </div>


        <i class="fa-solid fa-money-check-dollar header-icon"></i>

    </div>



    <!-- =====================================================
         PROGRESS
    ====================================================== -->

    <div class="progress-wrapper">

        <div class="progress-top">

            <span>
                <i class="fa-solid fa-list-check"></i>
                Form Completion
            </span>

            <span id="progressText">
                0%
            </span>

        </div>


        <div class="progress-bar">

            <div class="progress-fill"
                 id="progressFill">
            </div>

        </div>

    </div>



    <!-- =====================================================
         FORM
    ====================================================== -->

    <form action="savePayment"
          method="post"
          id="paymentForm">


    <!-- =====================================================
         PERSONAL INFORMATION
    ====================================================== -->

    <div class="section">

        <div class="section-title">

            <i class="fa-solid fa-user"></i>

            Personal Information

        </div>


        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-id-badge"></i>

                    Employee ID

                </label>

                <input type="text"
                       name="empId"
                       placeholder="Example: EMP001"
                       required>

                <small class="input-help">
                    Enter unique employee identification number
                </small>

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-user"></i>

                    Employee Name

                </label>

                <input type="text"
                       name="empName"
                       placeholder="Enter full employee name"
                       required>

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-building"></i>

                    Department

                </label>

                <input type="text"
                       name="empDept"
                       placeholder="Example: Software Development">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-calendar-check"></i>

                    Joining Date

                </label>

                <input type="date"
                       name="joinDate">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-address-card"></i>

                    PAN Number

                </label>

                <input type="text"
                       name="panNumber"
                       maxlength="10"
                       style="text-transform:uppercase"
                       placeholder="Example: ABCDE1234F">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-fingerprint"></i>

                    Aadhaar Number

                </label>

                <input type="text"
                       name="aadharNumber"
                       maxlength="12"
                       inputmode="numeric"
                       placeholder="12 digit Aadhaar number">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-building-columns"></i>

                    Bank Name

                </label>

                <input type="text"
                       name="bankName"
                       placeholder="Example: HDFC Bank">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-credit-card"></i>

                    Account Number

                </label>

                <input type="text"
                       name="accNumber"
                       inputmode="numeric"
                       placeholder="Enter bank account number">

            </div>

        </div>

    </div>



    <!-- =====================================================
         WORKING INFORMATION
    ====================================================== -->

    <div class="section">

        <div class="section-title">

            <i class="fa-solid fa-calendar-days"></i>

            Working Information

        </div>


        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-calendar-check"></i>

                    Working Days

                </label>

                <input type="number"
                       name="workDay"
                       min="0"
                       placeholder="Example: 26">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-calendar-xmark"></i>

                    Leave Days

                </label>

                <input type="number"
                       name="leaveDay"
                       min="0"
                       placeholder="Example: 2">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-clock"></i>

                    Half Days

                </label>

                <input type="number"
                       name="halfDay"
                       min="0"
                       step="0.5"
                       placeholder="Example: 1">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-business-time"></i>

                    Attendance Status

                </label>

                <select name="attendanceStatus">

                    <option value="">
                        Select Attendance
                    </option>

                    <option value="FULL_TIME">
                        Full Time
                    </option>

                    <option value="PART_TIME">
                        Part Time
                    </option>

                    <option value="CONTRACT">
                        Contract
                    </option>

                </select>

            </div>

        </div>

    </div>



    <!-- =====================================================
         EARNINGS
    ====================================================== -->

    <div class="section">

        <div class="section-title">

            <i class="fa-solid fa-money-bill-trend-up"></i>

            Earnings

        </div>


        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-money-bill-wave"></i>

                    Basic Salary

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="basicSal"
                       id="basicSal"
                       placeholder="Basic salary">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-house"></i>

                    HRA

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="hra"
                       id="hra"
                       placeholder="House rent allowance">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-bus"></i>

                    Transport Allowance

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="transportAllow"
                       id="transportAllow"
                       placeholder="Transport allowance">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-star"></i>

                    Special Allowance

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="specialAllow"
                       id="specialAllow"
                       placeholder="Special allowance">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-notes-medical"></i>

                    Medical Allowance

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="mediAllow"
                       id="mediAllow"
                       placeholder="Medical allowance">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-circle-plus"></i>

                    Other Allowance

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="otherAllow"
                       id="otherAllow"
                       placeholder="Other allowance">

            </div>

        </div>

    </div>



    <!-- =====================================================
         DEDUCTIONS
    ====================================================== -->

    <div class="section">

        <div class="section-title">

            <i class="fa-solid fa-file-invoice"></i>

            Deductions

        </div>


        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-piggy-bank"></i>

                    PF

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="pf"
                       id="pf"
                       placeholder="Provident fund">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-file-invoice-dollar"></i>

                    Tax

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="tax"
                       id="tax"
                       placeholder="Tax deduction">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-percent"></i>

                    TDS

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="tdx"
                       id="tdx"
                       placeholder="TDS deduction">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-hand-holding-dollar"></i>

                    Advance Deduction

                </label>

                <input type="number"
                       step="0.01"
                       min="0"
                       name="advanceDeduction"
                       id="advanceDeduction"
                       placeholder="Advance deduction">

            </div>

        </div>

    </div>



    <!-- =====================================================
         FINAL SALARY
    ====================================================== -->

    <div class="section">

        <div class="section-title">

            <i class="fa-solid fa-wallet"></i>

            Final Salary

        </div>


        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-sack-dollar"></i>

                    Gross Salary

                </label>

                <input type="number"
                       step="0.01"
                       name="grossSal"
                       id="grossSal"
                       class="readonly"
                       readonly
                       placeholder="Calculated automatically">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-minus"></i>

                    Total Deduction

                </label>

                <input type="number"
                       step="0.01"
                       name="totalDeduction"
                       id="totalDeduction"
                       class="readonly"
                       readonly
                       placeholder="Calculated automatically">

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-wallet"></i>

                    Net Salary

                </label>

                <input type="number"
                       step="0.01"
                       name="netSalary"
                       id="netSalary"
                       class="readonly"
                       readonly
                       placeholder="Calculated automatically">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-calendar-days"></i>

                    Salary Month

                </label>

                <select name="month">

                    <option value="">
                        Select Month
                    </option>

                    <option value="January">January</option>
                    <option value="February">February</option>
                    <option value="March">March</option>
                    <option value="April">April</option>
                    <option value="May">May</option>
                    <option value="June">June</option>
                    <option value="July">July</option>
                    <option value="August">August</option>
                    <option value="September">September</option>
                    <option value="October">October</option>
                    <option value="November">November</option>
                    <option value="December">December</option>

                </select>

            </div>

        </div>



        <div class="form-row">


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-calendar"></i>

                    Salary Year

                </label>

                <input type="number"
                       name="year"
                       id="salaryYear"
                       min="2000"
                       max="2100"
                       placeholder="Example: 2026">

            </div>


            <div class="form-group">

                <label>

                    <i class="fa-solid fa-circle-check"></i>

                    Payment Status

                </label>

                <select name="payStatus"
                        required>

                    <option value="">
                        Select Payment Status
                    </option>

                    <option value="PAID">
                        PAID
                    </option>

                    <option value="PENDING">
                        PENDING
                    </option>

                </select>

            </div>

        </div>


        <!-- Salary summary -->

        <div class="salary-highlight">

            <div class="salary-highlight-title">

                <i class="fa-solid fa-chart-pie"></i>

                Salary Summary

            </div>


            <div class="result-row">

                <span>Gross Earnings</span>

                <strong id="summaryGross">
                    ₹0.00
                </strong>

            </div>


            <div class="result-row">

                <span>Total Deductions</span>

                <strong id="summaryDeduction">
                    ₹0.00
                </strong>

            </div>


            <div class="result-row">

                <span>Final Net Salary</span>

                <strong id="summaryNet">
                    ₹0.00
                </strong>

            </div>

        </div>

    </div>



    <!-- =====================================================
         SAVE BUTTON
    ====================================================== -->

    <div class="button-container">

        <button type="submit"
                class="save-btn"
                onclick="return validateBeforeSubmit()">

            <i class="fa-solid fa-floppy-disk"></i>

            Save Payment

        </button>

    </div>


    <div class="form-note">

        <i class="fa-solid fa-circle-check"></i>

        Please verify salary and employee information
        before saving the payment.

    </div>


    </form>

</div>

</div>



<!-- =========================================================
     TOAST
========================================================= -->

<div class="toast"
     id="toast">

    <i class="fa-solid fa-circle-check"></i>

    <span id="toastMessage">
        Salary calculated successfully.
    </span>

</div>



<script>

/* =========================================================
   GET VALUE
========================================================= */

function getValue(id) {

    let element = document.getElementById(id);

    if (!element) {
        return 0;
    }

    let value = parseFloat(element.value);

    return isNaN(value) ? 0 : value;
}


/* =========================================================
   FORMAT CURRENCY
========================================================= */

function formatCurrency(value) {

    return "₹" + value.toLocaleString("en-IN", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    });
}


/* =========================================================
   CALCULATE SALARY
========================================================= */

function calculateSalary() {

    /* =========================
       EARNINGS
    ========================= */

    let basic = getValue("calcBasic");

    let hra = getValue("calcHra");

    let transport = getValue("calcTransport");

    let special = getValue("calcSpecial");

    let medical = getValue("calcMedical");

    let other = getValue("calcOther");


    /* =========================
       DEDUCTIONS
    ========================= */

    let pf = getValue("calcPf");

    let tax = getValue("calcTax");

    let tds = getValue("calcTds");

    let advance = getValue("calcAdvance");


    /* =========================
       GROSS
    ========================= */

    let gross =
        basic +
        hra +
        transport +
        special +
        medical +
        other;


    /* =========================
       TOTAL DEDUCTION
    ========================= */

    let totalDeduction =
        pf +
        tax +
        tds +
        advance;


    /* =========================
       NET SALARY
    ========================= */

    let netSalary =
        gross -
        totalDeduction;


    /* Prevent negative salary */

    if (netSalary < 0) {

        netSalary = 0;

    }


    /* =========================
       DISPLAY CALCULATOR
    ========================= */

    document.getElementById("calcGross").innerText =
        formatCurrency(gross);


    document.getElementById("calcDeduction").innerText =
        formatCurrency(totalDeduction);


    document.getElementById("calcNet").innerText =
        formatCurrency(netSalary);


    /* =========================
       COPY VALUES TO FORM
    ========================= */

    document.getElementById("basicSal").value =
        basic.toFixed(2);


    document.getElementById("hra").value =
        hra.toFixed(2);


    document.getElementById("transportAllow").value =
        transport.toFixed(2);


    document.getElementById("specialAllow").value =
        special.toFixed(2);


    document.getElementById("mediAllow").value =
        medical.toFixed(2);


    document.getElementById("otherAllow").value =
        other.toFixed(2);


    document.getElementById("pf").value =
        pf.toFixed(2);


    document.getElementById("tax").value =
        tax.toFixed(2);


    document.getElementById("tdx").value =
        tds.toFixed(2);


    document.getElementById("advanceDeduction").value =
        advance.toFixed(2);


    /* =========================
       FINAL FORM VALUES
    ========================= */

    document.getElementById("grossSal").value =
        gross.toFixed(2);


    document.getElementById("totalDeduction").value =
        totalDeduction.toFixed(2);


    document.getElementById("netSalary").value =
        netSalary.toFixed(2);


    /* =========================
       SUMMARY
    ========================= */

    document.getElementById("summaryGross").innerText =
        formatCurrency(gross);


    document.getElementById("summaryDeduction").innerText =
        formatCurrency(totalDeduction);


    document.getElementById("summaryNet").innerText =
        formatCurrency(netSalary);


    /* =========================
       TOAST
    ========================= */

    showToast("Salary calculated and synchronized successfully.");

}


/* =========================================================
   RESET CALCULATOR
========================================================= */

function resetCalculator() {

    let ids = [

        "calcBasic",
        "calcHra",
        "calcTransport",
        "calcSpecial",
        "calcMedical",
        "calcOther",
        "calcPf",
        "calcTax",
        "calcTds",
        "calcAdvance"

    ];


    ids.forEach(function(id) {

        document.getElementById(id).value = "";

    });


    document.getElementById("calcGross").innerText =
        "₹0.00";


    document.getElementById("calcDeduction").innerText =
        "₹0.00";


    document.getElementById("calcNet").innerText =
        "₹0.00";


    document.getElementById("summaryGross").innerText =
        "₹0.00";


    document.getElementById("summaryDeduction").innerText =
        "₹0.00";


    document.getElementById("summaryNet").innerText =
        "₹0.00";


    document.getElementById("basicSal").value = "";

    document.getElementById("hra").value = "";

    document.getElementById("transportAllow").value = "";

    document.getElementById("specialAllow").value = "";

    document.getElementById("mediAllow").value = "";

    document.getElementById("otherAllow").value = "";

    document.getElementById("pf").value = "";

    document.getElementById("tax").value = "";

    document.getElementById("tdx").value = "";

    document.getElementById("advanceDeduction").value = "";

    document.getElementById("grossSal").value = "";

    document.getElementById("totalDeduction").value = "";

    document.getElementById("netSalary").value = "";


    showToast("Calculator has been reset.");

}


/* =========================================================
   TOAST MESSAGE
========================================================= */

function showToast(message) {

    let toast =
        document.getElementById("toast");

    let toastMessage =
        document.getElementById("toastMessage");


    toastMessage.innerText = message;

    toast.classList.add("show");


    setTimeout(function() {

        toast.classList.remove("show");

    }, 3000);
}


/* =========================================================
   FORM PROGRESS
========================================================= */

function updateProgress() {

    let form =
        document.getElementById("paymentForm");


    let inputs =
        form.querySelectorAll(
            "input:not([readonly]), select"
        );


    let filled = 0;


    inputs.forEach(function(input) {

        if (input.value.trim() !== "") {

            filled++;

        }

    });


    let percentage =
        Math.round(
            (filled / inputs.length) * 100
        );


    document.getElementById("progressFill")
        .style.width = percentage + "%";


    document.getElementById("progressText")
        .innerText = percentage + "%";

}


/* =========================================================
   INPUT EVENT
========================================================= */

document.querySelectorAll(
    "#paymentForm input, #paymentForm select"
).forEach(function(input) {

    input.addEventListener(
        "input",
        updateProgress
    );

    input.addEventListener(
        "change",
        updateProgress
    );

});


/* =========================================================
   CURRENT YEAR
========================================================= */

document.getElementById("salaryYear").value =
    new Date().getFullYear();


/* =========================================================
   VALIDATE BEFORE SUBMIT
========================================================= */

function validateBeforeSubmit() {

    let basic =
        getValue("basicSal");


    let gross =
        getValue("grossSal");


    if (basic <= 0) {

        showToast(
            "Please enter salary information before saving."
        );

        document.getElementById("calcBasic")
            .focus();

        return false;

    }


    if (gross <= 0) {

        showToast(
            "Please calculate the salary before saving."
        );

        return false;

    }


    return true;

}


/* =========================================================
   AUTO CALCULATE WHEN CALCULATOR INPUT CHANGES
========================================================= */

document.querySelectorAll(
    ".calc-group input"
).forEach(function(input) {

    input.addEventListener(
        "input",
        function() {

            calculateSalary();

        }
    );

});


/* =========================================================
   INITIAL PROGRESS
========================================================= */

updateProgress();

</script>


</body>

</html>