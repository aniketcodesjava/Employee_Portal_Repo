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

<title>Employee Payment Slips</title>

<!-- Bootstrap Icons -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet">


<style>

/* =========================================================
   MAIN PAGE
========================================================= */

* {
    box-sizing: border-box;
}
body {

    margin: 0;

    padding: 40px 20px;

    font-family: 'Inter', Arial, sans-serif;

    /* =====================================================
       OVERALL PAGE BACKGROUND IMAGE
       ===================================================== */
background-image:
    linear-gradient(
        rgba(8, 15, 35, 0.45),
        rgba(8, 15, 35, 0.72)
    ),
    url("https://png.pngtree.com/thumb_back/fw800/background/20230616/pngtree-visualizing-the-intersection-of-business-and-finance-in-a-3d-rendered-image_3619377.jpg");
    
    background-size: cover;

    background-position: center;

    background-repeat: no-repeat;

    background-attachment: fixed;

    min-height: 100vh;

    color: #172033;
}

/* =========================================================
   MAIN HEADING
========================================================= */

.page-heading {
    text-align: center;
    margin-bottom: 35px;
    animation: headingAnimation 1s ease;
}

/* Main Heading */
.page-heading h1 {
    margin: 0;
    font-size: 38px;
    font-weight: 800;
    letter-spacing: 1px;
    color: white;
}

/* Heading Icons */
.page-heading h1 i {
    color: white;
}

/* Subtitle */
.page-heading p {
    margin-top: 10px;
    color: white;
    font-size: 15px;
}

/* =========================================================
   HEADING ANIMATION
========================================================= */

@keyframes headingAnimation {
    from {
        opacity: 0;
        transform: translateY(-30px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* =========================================================
   PAYMENT SLIP
========================================================= */

.payment-slip {

    position: relative;

    width: 950px;

    max-width: 100%;

    margin: 35px auto;

    padding: 30px;

    overflow: hidden;

    border-radius: 24px;

    background: rgba(255,255,255,0.96);

    border: 1px solid rgba(255,255,255,0.8);

    box-shadow:
        0 25px 60px rgba(15,23,42,0.16);

    animation: slipAnimation 0.8s ease;

    page-break-after: always;

}


@keyframes slipAnimation {

    from {

        opacity: 0;

        transform: translateY(40px) scale(0.97);

    }

    to {

        opacity: 1;

        transform: translateY(0) scale(1);

    }

}


/* =========================================================
   MONEY BACKGROUND IMAGE
========================================================= */

.payment-slip::before {

    content: "";

    position: absolute;

    inset: 0;

    background-image:
        linear-gradient(
            rgba(255,255,255,0.88),
            rgba(255,255,255,0.95)
        ),
        url("https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1600&q=80");

    background-size: cover;

    background-position: center;

    opacity: 0.14;

    z-index: 0;

}


/* Everything above background */

.payment-slip > * {

    position: relative;

    z-index: 1;

}


/* =========================================================
   DIFFERENT COLOR THEMES
========================================================= */


/* Employee 1 */

.payment-slip:nth-of-type(2) {

    border-top: 8px solid #2563eb;

}

.payment-slip:nth-of-type(2) .title-icon {

    background: linear-gradient(
        135deg,
        #2563eb,
        #06b6d4
    );

}


/* Employee 2 */

.payment-slip:nth-of-type(3) {

    border-top: 8px solid #7c3aed;

}

.payment-slip:nth-of-type(3) .title-icon {

    background: linear-gradient(
        135deg,
        #7c3aed,
        #ec4899
    );

}


/* Employee 3 */

.payment-slip:nth-of-type(4) {

    border-top: 8px solid #059669;

}

.payment-slip:nth-of-type(4) .title-icon {

    background: linear-gradient(
        135deg,
        #059669,
        #14b8a6
    );

}


/* Employee 4 */

.payment-slip:nth-of-type(5) {

    border-top: 8px solid #ea580c;

}

.payment-slip:nth-of-type(5) .title-icon {

    background: linear-gradient(
        135deg,
        #ea580c,
        #f59e0b
    );

}


/* Employee 5 */

.payment-slip:nth-of-type(6) {

    border-top: 8px solid #db2777;

}

.payment-slip:nth-of-type(6) .title-icon {

    background: linear-gradient(
        135deg,
        #db2777,
        #9333ea
    );

}


/* Employee 6 */

.payment-slip:nth-of-type(7) {

    border-top: 8px solid #0891b2;

}

.payment-slip:nth-of-type(7) .title-icon {

    background: linear-gradient(
        135deg,
        #0891b2,
        #2563eb
    );

}


/* =========================================================
   HEADER
========================================================= */

.slip-header {

    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 20px;

    padding-bottom: 22px;

    border-bottom: 2px dashed #cbd5e1;

}


.company-info {

    display: flex;

    align-items: center;

    gap: 15px;

}


.title-icon {

    width: 65px;

    height: 65px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 18px;

    color: white;

    font-size: 31px;

    box-shadow:
        0 10px 25px rgba(0,0,0,0.18);

    animation: floatingIcon 3s infinite ease-in-out;

}


@keyframes floatingIcon {

    0%,100% {

        transform: translateY(0);

    }

    50% {

        transform: translateY(-6px);

    }

}


.company-info h1 {

    margin: 0;

    font-size: 27px;

    font-weight: 800;

}


.company-info p {

    margin: 5px 0 0;

    color: #64748b;

    font-size: 13px;

}


.payment-badge {

    padding: 9px 15px;

    border-radius: 30px;

    background: #dcfce7;

    color: #166534;

    font-size: 13px;

    font-weight: 700;

}


.payment-badge i {

    margin-right: 5px;

}


/* =========================================================
   SECTION TITLE
========================================================= */

.section-title {

    display: flex;

    align-items: center;

    gap: 9px;

    margin-top: 25px;

    margin-bottom: 10px;

    padding: 11px 15px;

    border-radius: 12px;

    background:
        linear-gradient(
            90deg,
            #172033,
            #334155
        );

    color: white;

    font-size: 14px;

    font-weight: 700;

    letter-spacing: 0.5px;

}


.section-title i {

    color: #fbbf24;

    font-size: 18px;

}


/* =========================================================
   TABLE
========================================================= */

table {

    width: 100%;

    border-collapse: separate;

    border-spacing: 0;

    overflow: hidden;

    border-radius: 12px;

    background: rgba(255,255,255,0.90);

}


th,
td {

    border: 1px solid #e2e8f0;

    padding: 12px 14px;

    font-size: 13px;

}


th {

    width: 23%;

    background: #f8fafc;

    color: #334155;

    text-align: left;

    font-weight: 700;

}


td {

    color: #172033;

    font-weight: 500;

}


tr:hover td {

    background: #f8fafc;

}


/* =========================================================
   SALARY TABLE
========================================================= */

.salary-table th {

    width: 50%;

}


.salary-table td {

    text-align: right;

    font-weight: 700;

}


/* =========================================================
   GROSS SALARY
========================================================= */

.gross-row th,
.gross-row td {

    background: #eff6ff;

    color: #1d4ed8;

    font-size: 15px;

}


/* =========================================================
   DEDUCTION
========================================================= */

.deduction-row th,
.deduction-row td {

    background: #fff7ed;

    color: #c2410c;

}


/* =========================================================
   NET SALARY
========================================================= */

.net-box {

    margin-top: 20px;

    padding: 22px;

    border-radius: 18px;

    background:
        linear-gradient(
            135deg,
            #dcfce7,
            #ecfdf5
        );

    border: 2px solid #86efac;

    display: flex;

    align-items: center;

    justify-content: space-between;

    box-shadow:
        0 12px 30px rgba(22,163,74,0.12);

    animation: salaryPulse 3s infinite;

}


@keyframes salaryPulse {

    0%,100% {

        transform: scale(1);

    }

    50% {

        transform: scale(1.01);

    }

}


.net-label {

    display: flex;

    align-items: center;

    gap: 12px;

    color: #166534;

    font-weight: 800;

    font-size: 16px;

}


.net-label i {

    width: 42px;

    height: 42px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 50%;

    background: #22c55e;

    color: white;

    font-size: 21px;

}


.net-amount {

    color: #15803d;

    font-size: 25px;

    font-weight: 800;

}


/* =========================================================
   STATUS
========================================================= */

.status {

    text-align: center;

    font-weight: 800;

    color: #15803d;

}


/* =========================================================
   FOOTER
========================================================= */

.slip-footer {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-top: 25px;

    padding-top: 18px;

    border-top: 1px dashed #cbd5e1;

    color: #64748b;

    font-size: 11px;

}


.footer-right {

    font-weight: 600;

}


/* =========================================================
   PRINT BUTTON
========================================================= */

.print-btn {

    display: block;

    margin: 25px auto 50px;

    padding: 14px 30px;

    border: none;

    border-radius: 12px;

    background:
        linear-gradient(
            135deg,
            #111827,
            #334155
        );

    color: white;

    font-size: 15px;

    font-weight: 700;

    cursor: pointer;

    box-shadow:
        0 10px 25px rgba(15,23,42,0.25);

    transition: 0.3s;

}


.print-btn:hover {

    transform: translateY(-4px);

    box-shadow:
        0 15px 30px rgba(15,23,42,0.30);

}


/* =========================================================
   MOBILE
========================================================= */

@media(max-width:700px) {

    body {

        padding: 20px 10px;

    }

    .payment-slip {

        padding: 18px;

        border-radius: 16px;

    }

    .slip-header {

        flex-direction: column;

        align-items: flex-start;

    }

    .company-info h1 {

        font-size: 21px;

    }

    .title-icon {

        width: 55px;

        height: 55px;

        font-size: 25px;

    }

    th,
    td {

        padding: 8px;

        font-size: 11px;

    }

    .net-box {

        flex-direction: column;

        gap: 12px;

        text-align: center;

    }

    .slip-footer {

        flex-direction: column;

        gap: 8px;

    }

}


/* =========================================================
   PRINT
========================================================= */

@media print {

    body {

        padding: 0;

        background: white;

    }

    .page-heading {

        display: none;

    }

    .print-btn {

        display: none;

    }

    .payment-slip {

        width: 100%;

        margin: 0;

        border-radius: 0;

        box-shadow: none;

        animation: none;

        page-break-after: always;

    }

    .payment-slip::before {

        opacity: 0.08;

    }

}

</style>

</head>


<body>


<!-- ======================================================
     PAGE HEADING
======================================================= -->

<div class="page-heading">

    <h1>
        <i class="bi bi-wallet2"></i>
        Employee Payment Center
        <i class="bi bi-cash-coin"></i>
    </h1>

    <p>
        Your salary details are ready — congratulations! 🎉
    </p>

</div>


<!-- ======================================================
     EVERY EMPLOYEE GETS SEPARATE PAYMENT SLIP
======================================================= -->

<c:forEach var="p" items="${temp}">


<div class="payment-slip">


    <!-- ==================================================
         HEADER
    =================================================== -->

    <div class="slip-header">

        <div class="company-info">

            <div class="title-icon">

                <i class="bi bi-receipt-cutoff"></i>

            </div>

            <div>

                <h1>PAYMENT SLIP</h1>

                <p>
                    Employee Salary & Payment Statement
                </p>

            </div>

        </div>


        <div class="payment-badge">

            <i class="bi bi-check-circle-fill"></i>

            ${p.payStatus}

        </div>

    </div>


    <!-- ==================================================
         EMPLOYEE INFORMATION
    =================================================== -->

    <div class="section-title">

        <i class="bi bi-person-vcard-fill"></i>

        Employee Information

    </div>


    <table>

        <tr>

            <th>
                <i class="bi bi-hash"></i>
                Pay ID
            </th>

            <td>${p.id}</td>


            <th>
                <i class="bi bi-person-badge-fill"></i>
                Employee ID
            </th>

            <td>${p.empId}</td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-person-fill"></i>
                Employee Name
            </th>

            <td>${p.empName}</td>


            <th>
                <i class="bi bi-building-fill"></i>
                Department
            </th>

            <td>${p.empDept}</td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-calendar-event-fill"></i>
                Join Date
            </th>

            <td>${p.joinDate}</td>


            <th>
                <i class="bi bi-credit-card-2-front-fill"></i>
                PAN Card
            </th>

            <td>${p.panNumber}</td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-fingerprint"></i>
                Aadhar Card
            </th>

            <td>${p.aadharNumber}</td>


            <th>
                <i class="bi bi-bank2"></i>
                Bank Name
            </th>

            <td>${p.bankName}</td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-credit-card-fill"></i>
                Account Number
            </th>

            <td>${p.accNumber}</td>


            <th>
                <i class="bi bi-patch-check-fill"></i>
                Payment Status
            </th>

            <td class="status">

                ${p.payStatus}

            </td>

        </tr>

    </table>


    <!-- ==================================================
         ATTENDANCE
    =================================================== -->

    <div class="section-title">

        <i class="bi bi-calendar-check-fill"></i>

        Attendance Information

    </div>


    <table>

        <tr>

            <th>
                <i class="bi bi-calendar2-check"></i>
                Working Days
            </th>

            <td>${p.workDay}</td>


            <th>
                <i class="bi bi-calendar2-x"></i>
                Leave Days
            </th>

            <td>${p.leaveDay}</td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-clock-history"></i>
                Half Days
            </th>

            <td>${p.halfDay}</td>


            <th>
                <i class="bi bi-calendar-month"></i>
                Month
            </th>

            <td>${p.month}</td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-calendar3"></i>
                Year
            </th>

            <td>${p.year}</td>

            <th>
                Salary Period
            </th>

            <td>
                ${p.month} ${p.year}
            </td>

        </tr>

    </table>


    <!-- ==================================================
         EARNINGS
    =================================================== -->

    <div class="section-title">

        <i class="bi bi-cash-stack"></i>

        Earnings

    </div>


    <table class="salary-table">

        <tr>

            <th>
                <i class="bi bi-currency-rupee"></i>
                Basic Salary
            </th>

            <td>
                ₹ ${p.basicSal}
            </td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-house-heart-fill"></i>
                HRA
            </th>

            <td>
                ₹ ${p.hra}
            </td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-bus-front-fill"></i>
                Transport Allowance
            </th>

            <td>
                ₹ ${p.transportAllow}
            </td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-star-fill"></i>
                Special Allowance
            </th>

            <td>
                ₹ ${p.specialAllow}
            </td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-heart-pulse-fill"></i>
                Medical Allowance
            </th>

            <td>
                ₹ ${p.mediAllow}
            </td>

        </tr>


        <tr>

            <th>
                <i class="bi bi-plus-circle-fill"></i>
                Other Allowance
            </th>

            <td>
                ₹ ${p.otherAllow}
            </td>

        </tr>


        <tr class="gross-row">

            <th>
                <i class="bi bi-graph-up-arrow"></i>
                Gross Salary
            </th>

            <td>
                ₹ ${p.grossSal}
            </td>

        </tr>

    </table>


    <!-- ==================================================
         DEDUCTIONS
    =================================================== -->

    <div class="section-title">

        <i class="bi bi-dash-circle-fill"></i>

        Deductions

    </div>


    <table class="salary-table">

        <tr class="deduction-row">

            <th>
                <i class="bi bi-shield-check"></i>
                PF
            </th>

            <td>
                ₹ ${p.pf}
            </td>

        </tr>


        <tr class="deduction-row">

            <th>
                <i class="bi bi-percent"></i>
                Tax
            </th>

            <td>
                ₹ ${p.tax}
            </td>

        </tr>


        <tr class="deduction-row">

            <th>
                <i class="bi bi-file-earmark-minus-fill"></i>
                TDS
            </th>

            <td>
                ₹ ${p.tdx}
            </td>

        </tr>


        <tr class="deduction-row">

            <th>
                <i class="bi bi-cash"></i>
                Advance Deduction
            </th>

            <td>
                ₹ ${p.advanceDeduction}
            </td>

        </tr>


        <tr class="deduction-row">

            <th>
                <i class="bi bi-calculator-fill"></i>
                Total Deduction
            </th>

            <td>
                ₹ ${p.totalDeduction}
            </td>

        </tr>

    </table>


    <!-- ==================================================
         NET SALARY
    =================================================== -->

    <div class="net-box">

        <div class="net-label">

            <i class="bi bi-cash-coin"></i>

            <span>
                NET SALARY
            </span>

        </div>


        <div class="net-amount">

            ₹ ${p.netSalary}

        </div>

    </div>


    <!-- ==================================================
         FOOTER
    =================================================== -->

    <div class="slip-footer">

        <div>

            <i class="bi bi-shield-lock-fill"></i>

            This is a computer-generated payment slip.

        </div>


        <div class="footer-right">

            <i class="bi bi-check-circle-fill"></i>

            Salary Statement Verified

        </div>

    </div>


</div>


</c:forEach>


<!-- ======================================================
     PRINT ALL
======================================================= -->

<button class="print-btn"
        onclick="window.print()">

    <i class="bi bi-printer-fill"></i>

    Print Payment Slips

</button>


</body>

</html>