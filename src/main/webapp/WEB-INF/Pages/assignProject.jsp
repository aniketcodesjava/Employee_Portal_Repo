<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Assign Project</title>

<!-- ================= BOOTSTRAP ================= -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
    rel="stylesheet">

<!-- ================= BOOTSTRAP ICONS ================= -->
<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<!-- ================= GOOGLE FONT ================= -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
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

        display: flex;

        align-items: center;

        justify-content: center;

        padding: 40px 15px;

        overflow-x: hidden;

        background:
            linear-gradient(
                135deg,
                rgba(5, 15, 35, 0.94),
                rgba(10, 35, 65, 0.90)
            ),
            url("https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=2000&q=90");

        background-size: cover;

        background-position: center;

        background-attachment: fixed;

        position: relative;
    }


    /* =====================================================
       ANIMATED BACKGROUND ORBS
    ===================================================== */

    body::before {

        content: "";

        position: fixed;

        width: 350px;

        height: 350px;

        border-radius: 50%;

        background: rgba(0, 212, 255, 0.18);

        filter: blur(10px);

        top: -120px;

        left: -100px;

        animation: floatingOne 8s ease-in-out infinite;

        z-index: 0;
    }


    body::after {

        content: "";

        position: fixed;

        width: 420px;

        height: 420px;

        border-radius: 50%;

        background: rgba(99, 102, 241, 0.20);

        filter: blur(15px);

        bottom: -160px;

        right: -120px;

        animation: floatingTwo 10s ease-in-out infinite;

        z-index: 0;
    }


    @keyframes floatingOne {

        0%, 100% {
            transform: translate(0, 0);
        }

        50% {
            transform: translate(80px, 70px);
        }
    }


    @keyframes floatingTwo {

        0%, 100% {
            transform: translate(0, 0);
        }

        50% {
            transform: translate(-70px, -60px);
        }
    }


    /* =====================================================
       MAIN CONTAINER
    ===================================================== */

    .main-wrapper {

        width: 100%;

        max-width: 1050px;

        position: relative;

        z-index: 2;

        animation: pageAppear 0.9s ease;
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
       CARD
    ===================================================== */

    .project-card {

        background: rgba(255, 255, 255, 0.94);

        backdrop-filter: blur(18px);

        -webkit-backdrop-filter: blur(18px);

        border-radius: 28px;

        overflow: hidden;

        box-shadow:
            0 30px 80px rgba(0, 0, 0, 0.40);

        border: 1px solid rgba(255, 255, 255, 0.4);
    }


    /* =====================================================
       LEFT PANEL
    ===================================================== */

    .left-panel {

        min-height: 100%;

        padding: 55px 40px;

        color: white;

        display: flex;

        flex-direction: column;

        justify-content: center;

        position: relative;

        overflow: hidden;

        background:
            linear-gradient(
                145deg,
                #071a35,
                #0b4166,
                #075985
            );
    }


    .left-panel::before {

        content: "";

        position: absolute;

        width: 220px;

        height: 220px;

        border-radius: 50%;

        border: 1px solid rgba(255,255,255,0.15);

        top: -90px;

        right: -80px;

        animation: rotateCircle 12s linear infinite;
    }


    .left-panel::after {

        content: "";

        position: absolute;

        width: 150px;

        height: 150px;

        border-radius: 50%;

        border: 1px solid rgba(255,255,255,0.12);

        bottom: -60px;

        left: -40px;

        animation: rotateCircle 15s linear infinite reverse;
    }


    @keyframes rotateCircle {

        from {
            transform: rotate(0deg);
        }

        to {
            transform: rotate(360deg);
        }
    }


    .project-icon {

        width: 82px;

        height: 82px;

        border-radius: 22px;

        display: flex;

        align-items: center;

        justify-content: center;

        font-size: 40px;

        margin-bottom: 25px;

        background:
            linear-gradient(
                135deg,
                #22d3ee,
                #3b82f6
            );

        box-shadow:
            0 15px 35px rgba(0, 0, 0, 0.25);

        animation: iconFloat 3s ease-in-out infinite;
    }


    @keyframes iconFloat {

        0%, 100% {
            transform: translateY(0);
        }

        50% {
            transform: translateY(-8px);
        }
    }


    .left-panel h1 {

        font-size: 34px;

        font-weight: 700;

        margin-bottom: 15px;

        position: relative;

        z-index: 2;
    }


    .left-panel p {

        color: rgba(255,255,255,0.75);

        font-size: 15px;

        line-height: 1.8;

        position: relative;

        z-index: 2;
    }


    .feature-list {

        margin-top: 30px;

        list-style: none;

        padding: 0;

        position: relative;

        z-index: 2;
    }


    .feature-list li {

        display: flex;

        align-items: center;

        gap: 12px;

        margin-bottom: 18px;

        font-size: 14px;

        color: rgba(255,255,255,0.85);
    }


    .feature-list i {

        color: #22d3ee;

        font-size: 19px;
    }


    /* =====================================================
       RIGHT PANEL
    ===================================================== */

    .right-panel {

        padding: 45px 40px;

        background: rgba(255,255,255,0.97);
    }


    .form-title {

        margin-bottom: 30px;
    }


    .form-title h2 {

        font-size: 27px;

        font-weight: 700;

        color: #102a43;

        margin-bottom: 7px;
    }


    .form-title p {

        color: #718096;

        font-size: 13px;
    }


    /* =====================================================
       INPUT GROUP
    ===================================================== */

    .input-box {

        position: relative;

        margin-bottom: 23px;
    }


    .input-box label {

        font-size: 13px;

        font-weight: 600;

        color: #334e68;

        margin-bottom: 8px;

        display: block;
    }


    .input-wrapper {

        position: relative;
    }


    .input-wrapper i {

        position: absolute;

        left: 17px;

        top: 50%;

        transform: translateY(-50%);

        font-size: 18px;

        color: #64748b;

        transition: 0.3s;

        z-index: 2;
    }


    .input-wrapper input {

        width: 100%;

        height: 52px;

        border-radius: 13px;

        border: 1.5px solid #dbe4ee;

        outline: none;

        padding: 0 17px 0 48px;

        font-size: 14px;

        color: #1e293b;

        background: #f8fafc;

        transition: all 0.3s ease;
    }


    .input-wrapper input:hover {

        border-color: #94a3b8;

        background: white;
    }


    .input-wrapper input:focus {

        background: white;

        border-color: #0ea5e9;

        box-shadow:
            0 0 0 4px rgba(14,165,233,0.12);

        transform: translateY(-1px);
    }


    .input-wrapper input:focus + i {

        color: #0ea5e9;
    }


    /* =====================================================
       SUBMIT BUTTON
    ===================================================== */

    .assign-btn {

        width: 100%;

        height: 57px;

        border: none;

        border-radius: 15px;

        color: white;

        font-size: 15px;

        font-weight: 600;

        letter-spacing: 0.3px;

        background:
            linear-gradient(
                135deg,
                #0284c7,
                #2563eb
            );

        box-shadow:
            0 12px 25px rgba(37,99,235,0.30);

        transition: all 0.3s ease;

        position: relative;

        overflow: hidden;
    }


    .assign-btn::before {

        content: "";

        position: absolute;

        width: 0;

        height: 100%;

        top: 0;

        left: -20%;

        background: rgba(255,255,255,0.20);

        transform: skewX(-25deg);

        transition: 0.5s;
    }


    .assign-btn:hover::before {

        width: 140%;
    }


    .assign-btn:hover {

        transform: translateY(-3px);

        box-shadow:
            0 18px 35px rgba(37,99,235,0.38);
    }


    .assign-btn:active {

        transform: scale(0.98);
    }


    .assign-btn i {

        margin-right: 8px;

        font-size: 17px;
    }


    /* =====================================================
       RESET BUTTON
    ===================================================== */

    .reset-btn {

        width: 100%;

        height: 48px;

        margin-top: 12px;

        border: 1px solid #dbe4ee;

        border-radius: 13px;

        background: white;

        color: #64748b;

        font-weight: 500;

        transition: 0.3s;
    }


    .reset-btn:hover {

        background: #f1f5f9;

        color: #334155;

        transform: translateY(-1px);
    }


    /* =====================================================
       FORM FOOTER
    ===================================================== */

    .form-footer {

        text-align: center;

        margin-top: 22px;

        color: #94a3b8;

        font-size: 11px;
    }


    /* =====================================================
       RESPONSIVE
    ===================================================== */

    @media (max-width: 767px) {

        body {

            padding: 20px 12px;

            align-items: flex-start;
        }

        .project-card {

            border-radius: 20px;
        }

        .left-panel {

            padding: 35px 25px;
        }

        .right-panel {

            padding: 35px 22px;
        }

        .left-panel h1 {

            font-size: 28px;
        }

        .project-icon {

            width: 70px;

            height: 70px;

            font-size: 32px;
        }
    }

</style>

</head>

<body>

<div class="main-wrapper">

<div class="project-card">

    <div class="row g-0">


        <!-- =================================================
             LEFT INFORMATION PANEL
        ================================================== -->

        <div class="col-lg-5">

            <div class="left-panel">

                <div class="project-icon">

                    <i class="bi bi-kanban-fill"></i>

                </div>


                <h1>
                    Assign New Project
                </h1>


                <p>
                    Create and assign a project to your
                    team with all the important project
                    information in one place.
                </p>


                <ul class="feature-list">

                    <li>
                        <i class="bi bi-check-circle-fill"></i>
                        Manage project information
                    </li>

                    <li>
                        <i class="bi bi-check-circle-fill"></i>
                        Assign team members
                    </li>

                    <li>
                        <i class="bi bi-check-circle-fill"></i>
                        Track project duration
                    </li>

                    <li>
                        <i class="bi bi-check-circle-fill"></i>
                        Select project technology
                    </li>

                </ul>

            </div>

        </div>


        <!-- =================================================
             RIGHT FORM PANEL
        ================================================== -->

        <div class="col-lg-7">

            <div class="right-panel">


                <div class="form-title">

                    <h2>
                        <i class="bi bi-folder-plus me-2"
                           style="color:#0284c7;"></i>

                        Project Details
                    </h2>

                    <p>
                        Enter the details below to assign a
                        new project to your team.
                    </p>

                </div>


                <form
                    action="saveProject"
                    method="post"
                    id="projectForm">


                    <!-- PROJECT ID + PROJECT NAME -->

                    <div class="row">

                        <div class="col-md-6">

                            <div class="input-box">

                                <label for="Pid">
                                    Project ID
                                </label>

                                <div class="input-wrapper">

                                    <input
                                        type="text"
                                        id="Pid"
                                        name="Pid"
                                        placeholder="e.g. PRJ001"
                                        required>

                                    <i class="bi bi-hash"></i>

                                </div>

                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="input-box">

                                <label for="Pname">
                                    Project Name
                                </label>

                                <div class="input-wrapper">

                                    <input
                                        type="text"
                                        id="Pname"
                                        name="Pname"
                                        placeholder="Enter project name"
                                        required>

                                    <i class="bi bi-folder2-open"></i>

                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- TEAM LEADER + TEAM MEMBERS -->

                    <div class="row">

                        <div class="col-md-6">

                            <div class="input-box">

                                <label for="TeamLeader">
                                    Team Leader
                                </label>

                                <div class="input-wrapper">

                                    <input
                                        type="text"
                                        id="TeamLeader"
                                        name="TeamLeader"
                                        placeholder="Enter team leader"
                                        required>

                                    <i class="bi bi-person-badge-fill"></i>

                                </div>

                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="input-box">

                                <label for="TeamMembers">
                                    Team Members
                                </label>

                                <div class="input-wrapper">

                                    <input
                                        type="text"
                                        id="TeamMembers"
                                        name="TeamMembers"
                                        placeholder="e.g. 5 members"
                                        required>

                                    <i class="bi bi-people-fill"></i>

                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- TECHNOLOGY -->

                    <div class="input-box">

                        <label for="Technology">
                            Technology / Tech Stack
                        </label>

                        <div class="input-wrapper">

                            <input
                                type="text"
                                id="Technology"
                                name="Technology"
                                placeholder="e.g. Java, Spring Boot, React, MySQL"
                                required>

                            <i class="bi bi-code-slash"></i>

                        </div>

                    </div>


                    <!-- START DATE + END DATE -->

                    <div class="row">

                        <div class="col-md-6">

                            <div class="input-box">

                                <label for="StartDate">
                                    Start Date
                                </label>

                                <div class="input-wrapper">

                                    <input
                                        type="date"
                                        id="StartDate"
                                        name="StartDate"
                                        required>

                                    <i class="bi bi-calendar-event"></i>

                                </div>

                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="input-box">

                                <label for="EndDate">
                                    End Date
                                </label>

                                <div class="input-wrapper">

                                    <input
                                        type="date"
                                        id="EndDate"
                                        name="EndDate"
                                        required>

                                    <i class="bi bi-calendar-check"></i>

                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- DURATION -->

                    <div class="input-box">

                        <label for="Duration">
                            Project Duration
                        </label>

                        <div class="input-wrapper">

                            <input
                                type="text"
                                id="Duration"
                                name="Duration"
                                placeholder="e.g. 6 Months"
                                readonly>

                            <i class="bi bi-clock-history"></i>

                        </div>

                    </div>


                    <!-- SUBMIT -->

                    <button
                        type="submit"
                        class="assign-btn">

                        <i class="bi bi-send-fill"></i>

                        Assign Project

                    </button>


                    <!-- RESET -->

                    <button
                        type="reset"
                        class="reset-btn">

                        <i class="bi bi-arrow-counterclockwise me-1"></i>

                        Reset Form

                    </button>


                    <div class="form-footer">

                        <i class="bi bi-shield-check me-1"></i>

                        Make sure all project information is correct
                        before assigning.

                    </div>


                </form>

            </div>

        </div>

    </div>

</div>
```

</div>

<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>

    const form = document.getElementById("projectForm");

    const startDate =
        document.getElementById("StartDate");

    const endDate =
        document.getElementById("EndDate");

    const duration =
        document.getElementById("Duration");


    /* =====================================================
       CALCULATE PROJECT DURATION
    ===================================================== */

    function calculateDuration() {

        if (!startDate.value || !endDate.value) {

            duration.value = "";

            return;
        }


        const start =
            new Date(startDate.value);

        const end =
            new Date(endDate.value);


        if (end < start) {

            duration.value = "";

            endDate.setCustomValidity(
                "End date must be after start date."
            );

            return;
        }


        endDate.setCustomValidity("");


        const difference =
            end.getTime() - start.getTime();


        const days =
            Math.ceil(
                difference /
                (1000 * 60 * 60 * 24)
            ) + 1;


        if (days < 30) {

            duration.value =
                days + " Days";

        } else {

            const months =
                Math.floor(days / 30);

            const remainingDays =
                days % 30;


            if (remainingDays === 0) {

                duration.value =
                    months + " Month" +
                    (months > 1 ? "s" : "");

            } else {

                duration.value =
                    months + " Month" +
                    (months > 1 ? "s" : "") +
                    " " +
                    remainingDays +
                    " Days";
            }
        }

    }


    startDate.addEventListener(
        "change",
        calculateDuration
    );


    endDate.addEventListener(
        "change",
        calculateDuration
    );


    /* =====================================================
       FORM SUBMISSION
    ===================================================== */

    form.addEventListener(
        "submit",
        function(event) {

            if (!form.checkValidity()) {

                event.preventDefault();

                form.classList.add("was-validated");

                return;
            }


            const button =
                form.querySelector(".assign-btn");


            button.innerHTML =
                '<span class="spinner-border spinner-border-sm me-2"></span>' +
                'Assigning Project...';


            button.disabled = true;

        }
    );


    /* =====================================================
       RESET FORM
    ===================================================== */

    form.addEventListener(
        "reset",
        function() {

            setTimeout(
                function() {

                    duration.value = "";

                    endDate.setCustomValidity("");

                },
                50
            );

        }
    );


    /* =====================================================
       AUTO SET MINIMUM END DATE
    ===================================================== */

    startDate.addEventListener(
        "change",
        function() {

            endDate.min = startDate.value;

        }
    );

</script>

<!-- ================= BOOTSTRAP JS ================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>
