
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Employee Leave Request</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

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

            background:
                linear-gradient(
                    rgba(10, 20, 45, 0.82),
                    rgba(20, 35, 75, 0.88)
                ),
                url("https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=2000&q=85");

            background-size: cover;
            background-position: center;
            background-attachment: fixed;

            padding: 40px 15px;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Background Floating Circles */

        .circle {
            position: fixed;
            border-radius: 50%;
            filter: blur(2px);
            opacity: 0.18;
            animation: float 7s infinite ease-in-out;
            z-index: -1;
        }

        .circle1 {
            width: 220px;
            height: 220px;
            background: #00d4ff;
            top: 5%;
            left: 5%;
        }

        .circle2 {
            width: 300px;
            height: 300px;
            background: #8c52ff;
            bottom: 5%;
            right: 4%;
            animation-delay: 2s;
        }

        @keyframes float {

            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-30px);
            }
        }

        /* Main Container */

        .leave-container {

            width: 100%;
            max-width: 1100px;

            background: rgba(255,255,255,0.96);

            border-radius: 25px;

            overflow: hidden;

            box-shadow:
                0 25px 70px rgba(0,0,0,0.35);

            animation: slideUp 0.8s ease;
        }

        @keyframes slideUp {

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

        .form-header {

            background:
                linear-gradient(
                    135deg,
                    #0d6efd,
                    #6610f2
                );

            color: white;

            padding: 30px 40px;

            position: relative;

            overflow: hidden;
        }

        .form-header::after {

            content: "";

            position: absolute;

            width: 250px;
            height: 250px;

            border-radius: 50%;

            background: rgba(255,255,255,0.08);

            right: -80px;
            top: -100px;
        }

        .header-icon {

            width: 65px;
            height: 65px;

            border-radius: 18px;

            display: flex;
            justify-content: center;
            align-items: center;

            background: rgba(255,255,255,0.18);

            font-size: 28px;

            margin-bottom: 15px;

            animation: pulseIcon 2s infinite;
        }

        @keyframes pulseIcon {

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

        .form-header h2 {
            font-weight: 700;
            margin-bottom: 5px;
        }

        .form-header p {
            opacity: 0.85;
            margin: 0;
        }

        /* Form Area */

        .form-body {
            padding: 40px;
        }

        .section-title {

            font-size: 18px;

            font-weight: 600;

            color: #172b4d;

            margin-bottom: 25px;

            display: flex;

            align-items: center;

            gap: 10px;
        }

        .section-title i {
            color: #0d6efd;
        }

        /* Input */

        .form-label {

            font-weight: 600;

            color: #344563;

            margin-bottom: 8px;
        }

        .input-group {

            margin-bottom: 20px;
        }

        .input-group-text {

            background: #f1f5ff;

            border: 1px solid #dce3f0;

            color: #0d6efd;

            min-width: 48px;

            justify-content: center;
        }

        .form-control,
        .form-select {

            border: 1px solid #dce3f0;

            padding: 12px 14px;

            min-height: 48px;

            transition: 0.3s;

            box-shadow: none !important;
        }

        .form-control:focus,
        .form-select:focus {

            border-color: #0d6efd;

            box-shadow:
                0 0 0 4px rgba(13,110,253,0.10) !important;
        }

        /* Leave Summary */

        .leave-summary {

            background:
                linear-gradient(
                    135deg,
                    #f5f8ff,
                    #eef3ff
                );

            border-radius: 18px;

            padding: 22px;

            margin-top: 10px;

            border: 1px solid #dce6ff;
        }

        .summary-box {

            background: white;

            border-radius: 14px;

            padding: 15px;

            text-align: center;

            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }

        .summary-box i {

            font-size: 20px;

            color: #0d6efd;

            margin-bottom: 6px;
        }

        .summary-box h5 {

            margin: 0;

            font-weight: 700;

            color: #172b4d;
        }

        .summary-box small {

            color: #718096;
        }

        /* Character Counter */

        .character-count {

            text-align: right;

            font-size: 12px;

            color: #718096;

            margin-top: 4px;
        }

        /* Buttons */

        .btn-submit {

            border: none;

            padding: 13px 30px;

            border-radius: 12px;

            background:
                linear-gradient(
                    135deg,
                    #0d6efd,
                    #6610f2
                );

            color: white;

            font-weight: 600;

            transition: 0.3s;

            box-shadow:
                0 8px 20px rgba(13,110,253,0.25);
        }

        .btn-submit:hover {

            transform: translateY(-3px);

            box-shadow:
                0 12px 25px rgba(13,110,253,0.35);

            color: white;
        }

        .btn-reset {

            padding: 13px 25px;

            border-radius: 12px;

            font-weight: 600;
        }

        /* Required */

        .required {
            color: #dc3545;
        }

        /* Info Box */

        .info-box {

            background: #fff8e6;

            border-left: 4px solid #ffc107;

            padding: 14px 17px;

            border-radius: 8px;

            margin-bottom: 25px;

            color: #6b5500;

            font-size: 14px;
        }

        /* Success Message */

        #successMessage {

            display: none;

            animation: successAnimation 0.5s ease;
        }

        @keyframes successAnimation {

            from {
                opacity: 0;
                transform: scale(0.9);
            }

            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        /* Responsive */

        @media(max-width: 768px) {

            body {
                padding: 15px;
            }

            .form-body {
                padding: 25px 20px;
            }

            .form-header {
                padding: 25px 20px;
            }

            .btn-submit,
            .btn-reset {
                width: 100%;
                margin-bottom: 10px;
            }

        }

    </style>

</head>


<body>

    <!-- Floating Background Elements -->

    <div class="circle circle1"></div>
    <div class="circle circle2"></div>


    <div class="leave-container">

        <!-- HEADER -->

        <div class="form-header">

            <div class="header-icon">

                <i class="fa-solid fa-calendar-days"></i>

            </div>

            <h2>Employee Leave Request</h2>

            <p>
                Submit your leave request and keep your team informed.
            </p>

        </div>


        <!-- FORM BODY -->

        <div class="form-body">


            <div class="info-box">

                <i class="fa-solid fa-circle-info me-2"></i>

                Please provide accurate information before submitting
                your leave request.

            </div>


            <form action="submitLeave" method="post">


                <!-- EMPLOYEE INFORMATION -->

                <div class="section-title">

                    <i class="fa-solid fa-user-tie"></i>

                    Employee Information

                </div>


                <div class="row">
                
                <input type="hidden" name="lid" >  


                    <!-- Employee Name -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Employee Name

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-user"></i>

                            </span>

                            <input
                                type="text"
                                class="form-control"
                                name="empName"
                                id="empName"
                                placeholder="Enter employee name"
                                required>

                        </div>

                    </div>


                    <!-- Employee ID -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Employee ID

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-id-card"></i>

                            </span>

                            <input
                                type="text"
                                class="form-control"
                                name="empId"
                                id="empId"
                                placeholder="Example: EMP1025"
                                required>

                        </div>

                    </div>


                    <!-- Department -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Department

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-building"></i>

                            </span>

                            <select
                                class="form-select"
                                name="empDepartment"
                                id="empDepartment"
                                required>

                                <option value="">
                                    Select Department
                                </option>

                                <option>IT</option>
                                <option>Human Resources</option>
                                <option>Finance</option>
                                <option>Marketing</option>
                                <option>Sales</option>
                                <option>Operations</option>
                                <option>Software Development</option>

                            </select>

                        </div>

                    </div>


                    <!-- Designation -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Designation

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-briefcase"></i>

                            </span>

                            <input
                                type="text"
                                class="form-control"
                                name="empDesignation"
                                id="empDesignation"
                                placeholder="Example: Java Developer"
                                required>

                        </div>

                    </div>

                </div>


                <hr class="my-4">


                <!-- LEAVE INFORMATION -->

                <div class="section-title">

                    <i class="fa-solid fa-calendar-check"></i>

                    Leave Information

                </div>


                <div class="row">


                    <!-- Leave Type -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Leave Type

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-list-check"></i>

                            </span>

                            <select
                                class="form-select"
                                name="leaveType"
                                id="leaveType"
                                required>

                                <option value="">
                                    Select Leave Type
                                </option>

                                <option>Casual Leave</option>
                                <option>Sick Leave</option>
                                <option>Earned Leave</option>
                                <option>Emergency Leave</option>
                                <option>Personal Leave</option>
                                <option>Other</option>

                            </select>

                        </div>

                    </div>


                    <!-- Priority -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Request Priority

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-flag"></i>

                            </span>

                            <select
                                class="form-select"
                                name="priority">

                                <option>Normal</option>
                                <option>High</option>
                                <option>Urgent</option>

                            </select>

                        </div>

                    </div>


                    <!-- Start Date -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Leave Start Date

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-calendar-plus"></i>

                            </span>

                            <input
                                type="date"
                                class="form-control"
                                name="leaveStartDate"
                                id="startDate"
                                required>

                        </div>

                    </div>


                    <!-- End Date -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Leave End Date

                            <span class="required">*</span>

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-calendar-minus"></i>

                            </span>

                            <input
                                type="date"
                                class="form-control"
                                name="leaveEndDate"
                                id="endDate"
                                required>

                        </div>

                    </div>


                    <!-- Contact Number -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Contact Number During Leave

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-phone"></i>

                            </span>

                            <input
                                type="tel"
                                class="form-control"
                                name="contactNumber"
                                placeholder="Enter contact number">

                        </div>

                    </div>


                    <!-- Handover Person -->

                    <div class="col-md-6">

                        <label class="form-label">

                            Work Handover To

                        </label>

                        <div class="input-group">

                            <span class="input-group-text">

                                <i class="fa-solid fa-people-arrows"></i>

                            </span>

                            <input
                                type="text"
                                class="form-control"
                                name="handoverPerson"
                                placeholder="Employee responsible for your work">

                        </div>

                    </div>


                </div>


                <!-- LEAVE SUMMARY -->

                <div class="leave-summary mt-3">

                    <div class="row g-3">


                        <div class="col-md-4">

                            <div class="summary-box">

                                <i class="fa-solid fa-calendar-day"></i>

                                <h5 id="totalDays">
                                    0
                                </h5>

                                <small>
                                    Total Leave Days
                                </small>

                            </div>

                        </div>


                        <div class="col-md-4">

                            <div class="summary-box">

                                <i class="fa-solid fa-calendar-check"></i>

                                <h5 id="startDisplay">
                                    —
                                </h5>

                                <small>
                                    Start Date
                                </small>

                            </div>

                        </div>


                        <div class="col-md-4">

                            <div class="summary-box">

                                <i class="fa-solid fa-calendar-xmark"></i>

                                <h5 id="endDisplay">
                                    —
                                </h5>

                                <small>
                                    End Date
                                </small>

                            </div>

                        </div>


                    </div>

                </div>


                <hr class="my-4">


                <!-- REASON -->

                <div class="section-title">

                    <i class="fa-solid fa-comment-dots"></i>

                    Leave Reason

                </div>


                <div class="mb-4">

                    <label class="form-label">

                        Reason for Leave

                        <span class="required">*</span>

                    </label>

                    <textarea
                        class="form-control"
                        name="reason"
                        id="reason"
                        rows="5"
                        maxlength="500"
                        placeholder="Please explain the reason for your leave..."
                        required></textarea>

                    <div class="character-count">

                        <span id="charCount">0</span> / 500 characters

                    </div>

                </div>

                <!-- DECLARATION -->

                <div class="form-check mb-4">

                    <input
                        class="form-check-input"
                        type="checkbox"
                        id="declaration"
                        required>

                    <label
                        class="form-check-label"
                        for="declaration">

                        I confirm that the information provided above
                        is correct and I understand that my leave request
                        is subject to manager approval.

                    </label>

                </div>


                <!-- BUTTONS -->

                <div class="d-flex gap-3 justify-content-end flex-wrap">

                    <button
                        type="reset"
                        class="btn btn-outline-secondary btn-reset">

                        <i class="fa-solid fa-rotate-left me-2"></i>

                        Reset

                    </button>


                    <button
                        type="submit"
                        class="btn-submit">

                        <i class="fa-solid fa-paper-plane me-2"></i>

                        Submit Leave Request

                    </button>

                </div>


                <!-- SUCCESS MESSAGE -->

                <div
                    id="successMessage"
                    class="alert alert-success mt-4">

                    <i class="fa-solid fa-circle-check me-2"></i>

                    Leave request submitted successfully!

                </div>


            </form>

        </div>

    </div>


    <!-- JAVASCRIPT -->

    <script>

        const startDate =
            document.getElementById("startDate");

        const endDate =
            document.getElementById("endDate");

        const totalDays =
            document.getElementById("totalDays");

        const startDisplay =
            document.getElementById("startDisplay");

        const endDisplay =
            document.getElementById("endDisplay");


        // Set minimum date as today

        const today =
            new Date().toISOString().split("T")[0];

        startDate.min = today;

        endDate.min = today;


        // Calculate Leave Days

        function calculateLeaveDays() {

            if (startDate.value && endDate.value) {

                const start =
                    new Date(startDate.value);

                const end =
                    new Date(endDate.value);


                if (end < start) {

                    alert(
                        "End date cannot be before start date."
                    );

                    endDate.value = "";

                    totalDays.innerText = "0";

                    return;

                }


                const difference =
                    end.getTime() - start.getTime();


                const days =
                    Math.floor(
                        difference /
                        (1000 * 60 * 60 * 24)
                    ) + 1;


                totalDays.innerText = days;


                startDisplay.innerText =
                    formatDate(start);

                endDisplay.innerText =
                    formatDate(end);

            }

        }


        function formatDate(date) {

            return date.toLocaleDateString(
                "en-IN",
                {
                    day: "2-digit",
                    month: "short",
                    year: "numeric"
                }
            );

        }


        startDate.addEventListener(
            "change",
            function() {

                endDate.min = startDate.value;

                calculateLeaveDays();

            }
        );


        endDate.addEventListener(
            "change",
            calculateLeaveDays
        );


        // Character Counter

        const reason =
            document.getElementById("reason");

        const charCount =
            document.getElementById("charCount");


        reason.addEventListener(
            "input",
            function() {

                charCount.innerText =
                    reason.value.length;

            }
        );


        // Form Validation

        document
            .getElementById("leaveForm")
            .addEventListener(
                "submit",
                function(event) {

                    if (
                        !startDate.value ||
                        !endDate.value
                    ) {

                        event.preventDefault();

                        alert(
                            "Please select both leave start and end dates."
                        );

                        return;

                    }


                    const start =
                        new Date(startDate.value);

                    const end =
                        new Date(endDate.value);


                    if (end < start) {

                        event.preventDefault();

                        alert(
                            "Leave end date cannot be before start date."
                        );

                        return;

                    }

                }
            );


        // Reset Summary

        document
            .getElementById("leaveForm")
            .addEventListener(
                "reset",
                function() {

                    setTimeout(function() {

                        totalDays.innerText = "0";

                        startDisplay.innerText = "—";

                        endDisplay.innerText = "—";

                        charCount.innerText = "0";

                    }, 50);

                }
            );

    </script>


    <!-- Bootstrap JS -->

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>


</body>

</html>
