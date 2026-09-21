<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Project Reports | Management Portal</title>

<!-- Bootstrap -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<!-- Bootstrap Icons -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
    rel="stylesheet">

<!-- Google Font -->
<link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
    rel="stylesheet">


<style>

/* =========================================================
   GLOBAL
========================================================= */

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
        radial-gradient(
            circle at 10% 20%,
            rgba(145, 70, 255, 0.20),
            transparent 25%
        ),

        radial-gradient(
            circle at 90% 15%,
            rgba(98, 0, 255, 0.18),
            transparent 25%
        ),

        radial-gradient(
            circle at 50% 100%,
            rgba(180, 90, 255, 0.12),
            transparent 30%
        ),

        linear-gradient(
            135deg,
            #050505,
            #0b0712,
            #120b1c,
            #050505
        );

    background-attachment: fixed;
}


/* =========================================================
   ANIMATED PARTICLES
========================================================= */

.particle {

    position: fixed;

    width: 4px;
    height: 4px;

    background: rgba(190, 120, 255, 0.7);

    border-radius: 50%;

    box-shadow:
        0 0 15px rgba(170, 80, 255, 0.8);

    animation: particleFloat linear infinite;

    z-index: -1;
}

.p1 {
    left: 8%;
    top: 20%;
    animation-duration: 8s;
}

.p2 {
    left: 20%;
    top: 70%;
    animation-duration: 11s;
}

.p3 {
    left: 40%;
    top: 30%;
    animation-duration: 9s;
}

.p4 {
    left: 65%;
    top: 75%;
    animation-duration: 13s;
}

.p5 {
    left: 85%;
    top: 25%;
    animation-duration: 10s;
}

.p6 {
    left: 92%;
    top: 70%;
    animation-duration: 12s;
}

@keyframes particleFloat {

    0% {
        transform: translateY(0) scale(1);
        opacity: 0.2;
    }

    50% {
        transform: translateY(-100px) scale(1.5);
        opacity: 1;
    }

    100% {
        transform: translateY(-200px) scale(0.5);
        opacity: 0;
    }
}


/* =========================================================
   NAVBAR
========================================================= */

.navbar {

    background: rgba(0,0,0,0.65);

    backdrop-filter: blur(20px);

    border-bottom:
        1px solid rgba(170,90,255,0.20);

    padding: 18px 6%;

    box-shadow:
        0 10px 40px rgba(0,0,0,0.4);
}

.brand {

    font-size: 22px;

    font-weight: 700;

    letter-spacing: 0.5px;
}

.brand i {

    color: #b66cff;

    font-size: 27px;

    margin-right: 8px;
}

.secure {

    border:
        1px solid rgba(190,120,255,0.30);

    background:
        rgba(150,70,255,0.10);

    padding: 7px 15px;

    border-radius: 30px;

    color: #d5b2ff;

    font-size: 12px;
}


/* =========================================================
   MAIN
========================================================= */

.container-main {

    width: 92%;

    max-width: 1400px;

    margin: 45px auto;
}


/* =========================================================
   PAGE HEADER
========================================================= */

.page-header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    flex-wrap: wrap;

    gap: 20px;

    margin-bottom: 30px;

    animation: slideDown 0.8s ease;
}

.title-area {

    display: flex;

    align-items: center;

    gap: 18px;
}

.title-icon {

    width: 65px;

    height: 65px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 20px;

    background:
        linear-gradient(
            135deg,
            #7b2cff,
            #c06cff
        );

    box-shadow:
        0 10px 35px rgba(130,40,255,0.35);

    font-size: 30px;

    animation: floating 3s ease-in-out infinite;
}

.title-area h1 {

    font-size: 32px;

    font-weight: 700;

    margin: 0;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #d9baff,
            #9d50ff
        );

    -webkit-background-clip: text;

    -webkit-text-fill-color: transparent;
}

.title-area p {

    margin: 6px 0 0;

    color: #8e8799;

    font-size: 13px;
}

@keyframes slideDown {

    from {
        opacity: 0;
        transform: translateY(-30px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes floating {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-7px);
    }
}


/* =========================================================
   STAT CARDS
========================================================= */

.stats {

    display: grid;

    grid-template-columns:
        repeat(3, 1fr);

    gap: 18px;

    margin-bottom: 28px;
}

.stat-card {

    padding: 22px;

    border-radius: 20px;

    background:
        rgba(255,255,255,0.045);

    border:
        1px solid rgba(255,255,255,0.08);

    backdrop-filter: blur(20px);

    transition: 0.3s;

    animation: fadeUp 0.8s ease;
}

.stat-card:hover {

    transform: translateY(-5px);

    border-color:
        rgba(170,90,255,0.4);

    box-shadow:
        0 15px 35px rgba(100,30,180,0.15);
}

.stat-icon {

    width: 45px;

    height: 45px;

    border-radius: 13px;

    display: flex;

    justify-content: center;

    align-items: center;

    background:
        rgba(150,70,255,0.14);

    color: #bd82ff;

    font-size: 20px;

    margin-bottom: 12px;
}

.stat-number {

    font-size: 25px;

    font-weight: 700;
}

.stat-label {

    font-size: 12px;

    color: #82798e;
}

@keyframes fadeUp {

    from {
        opacity: 0;
        transform: translateY(25px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* =========================================================
   REPORT PANEL
========================================================= */

.report-panel {

    background:
        rgba(255,255,255,0.045);

    border:
        1px solid rgba(255,255,255,0.10);

    border-radius: 26px;

    backdrop-filter: blur(25px);

    overflow: hidden;

    box-shadow:
        0 30px 70px rgba(0,0,0,0.40);

    animation: fadeUp 1s ease;
}


/* =========================================================
   TOOLBAR
========================================================= */

.toolbar {

    padding: 22px;

    display: flex;

    justify-content: space-between;

    align-items: center;

    gap: 15px;

    flex-wrap: wrap;

    border-bottom:
        1px solid rgba(255,255,255,0.07);
}

.search-box {

    position: relative;

    width: 330px;
}

.search-box i {

    position: absolute;

    left: 15px;

    top: 50%;

    transform: translateY(-50%);

    color: #a568ff;
}

.search-box input {

    width: 100%;

    padding: 12px 15px 12px 43px;

    border-radius: 12px;

    border:
        1px solid rgba(255,255,255,0.10);

    background:
        rgba(0,0,0,0.30);

    color: white;

    outline: none;

    transition: 0.3s;
}

.search-box input:focus {

    border-color: #9a4dff;

    box-shadow:
        0 0 20px rgba(140,50,255,0.15);
}

.search-box input::placeholder {

    color: #71687b;
}


/* =========================================================
   BUTTONS
========================================================= */

.tool-btn {

    border: none;

    padding: 11px 17px;

    border-radius: 12px;

    color: white;

    background:
        linear-gradient(
            135deg,
            #6d24c9,
            #9a4dff
        );

    transition: 0.3s;
}

.tool-btn:hover {

    transform: translateY(-2px);

    box-shadow:
        0 10px 25px rgba(130,40,255,0.25);
}


/* =========================================================
   TABLE
========================================================= */

.table-container {

    overflow-x: auto;
}

table {

    width: 100%;

    border-collapse: collapse;

    min-width: 1050px;
}

thead {

    background:
        rgba(100,30,160,0.15);
}

th {

    padding: 18px 20px;

    color: #b993e8;

    font-size: 12px;

    text-transform: uppercase;

    letter-spacing: 0.8px;

    text-align: left;

    border-bottom:
        1px solid rgba(255,255,255,0.08);
}

td {

    padding: 18px 20px;

    color: #ddd7e4;

    font-size: 13px;

    border-bottom:
        1px solid rgba(255,255,255,0.055);

    vertical-align: middle;
}

tbody tr {

    transition: 0.3s;

    animation: rowAppear 0.6s ease;
}

tbody tr:hover {

    background:
        rgba(145,60,255,0.08);

    transform: scale(1.003);
}

@keyframes rowAppear {

    from {
        opacity: 0;
        transform: translateX(-15px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}


/* =========================================================
   SERIAL NUMBER
========================================================= */

.serial {

    width: 35px;

    height: 35px;

    display: flex;

    justify-content: center;

    align-items: center;

    border-radius: 10px;

    background:
        rgba(160,80,255,0.12);

    color: #c28aff;

    font-weight: 600;
}


/* =========================================================
   PROJECT ID
========================================================= */

.project-id {

    color: #d7b3ff;

    font-weight: 600;
}

.project-id i {

    color: #9b52ff;

    margin-right: 5px;
}


/* =========================================================
   PROJECT NAME
========================================================= */

.project-name {

    font-weight: 600;

    color: white;
}

.project-name i {

    color: #b76cff;

    margin-right: 7px;
}


/* =========================================================
   REPORT BADGES
========================================================= */

.badge-report {

    padding: 7px 12px;

    border-radius: 20px;

    font-size: 10px;

    font-weight: 600;

    background:
        rgba(150,70,255,0.12);

    color: #c99aff;

    border:
        1px solid rgba(170,90,255,0.20);
}


/* =========================================================
   SUBJECT
========================================================= */

.subject {

    color: #eee;

    font-weight: 500;
}


/* =========================================================
   MESSAGE
========================================================= */

.message-preview {

    max-width: 300px;

    white-space: nowrap;

    overflow: hidden;

    text-overflow: ellipsis;

    color: #9d96a8;
}


/* =========================================================
   VIEW BUTTON
========================================================= */

.view-btn {

    width: 38px;

    height: 38px;

    border-radius: 10px;

    border:
        1px solid rgba(170,90,255,0.20);

    background:
        rgba(140,50,255,0.10);

    color: #bd82ff;

    transition: 0.3s;
}

.view-btn:hover {

    background: #812cff;

    color: white;

    transform: scale(1.1);

    box-shadow:
        0 0 20px rgba(130,40,255,0.35);
}


/* =========================================================
   MODAL
========================================================= */

.modal-content {

    background:
        #100b18;

    color: white;

    border:
        1px solid rgba(180,100,255,0.20);

    border-radius: 20px;
}

.modal-header {

    border-bottom:
        1px solid rgba(255,255,255,0.08);
}

.modal-footer {

    border-top:
        1px solid rgba(255,255,255,0.08);
}

.btn-close {

    filter: invert(1);
}

.modal-message {

    background:
        rgba(255,255,255,0.04);

    border:
        1px solid rgba(255,255,255,0.08);

    padding: 20px;

    border-radius: 15px;

    color: #ccc;

    line-height: 1.8;

    white-space: pre-wrap;
}


/* =========================================================
   EMPTY STATE
========================================================= */

.empty-state {

    text-align: center;

    padding: 70px 20px;

    color: #8d8598;
}

.empty-state i {

    font-size: 60px;

    color: #7334ad;

    margin-bottom: 15px;
}


/* =========================================================
   FOOTER
========================================================= */

.footer {

    text-align: center;

    color: #62596b;

    font-size: 11px;

    padding: 30px;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width: 800px) {

    .stats {

        grid-template-columns: 1fr;
    }

    .page-header {

        align-items: flex-start;
    }

    .title-area h1 {

        font-size: 25px;
    }

    .search-box {

        width: 100%;
    }

    .container-main {

        width: 95%;
    }
}

</style>

</head>


<body>


<!-- =====================================================
     BACKGROUND PARTICLES
===================================================== -->

<div class="particle p1"></div>
<div class="particle p2"></div>
<div class="particle p3"></div>
<div class="particle p4"></div>
<div class="particle p5"></div>
<div class="particle p6"></div>


<!-- =====================================================
     NAVBAR
===================================================== -->

<nav class="navbar">

    <div class="d-flex justify-content-between align-items-center">

        <div class="brand">

            <i class="bi bi-kanban-fill"></i>

            Project Management

        </div>

        <div class="secure">

            <i class="bi bi-shield-check"></i>

            Secure Dashboard

        </div>

    </div>

</nav>



<!-- =====================================================
     MAIN
===================================================== -->

<div class="container-main">


    <!-- HEADER -->

    <div class="page-header">

        <div class="title-area">

            <div class="title-icon">

                <i class="bi bi-file-earmark-bar-graph-fill"></i>

            </div>

            <div>

                <h1>Project Reports</h1>

                <p>
                    Monitor and manage submitted project reports
                </p>

            </div>

        </div>


        <div>

            <button
                class="tool-btn"
                onclick="location.reload()">

                <i class="bi bi-arrow-clockwise"></i>

                Refresh

            </button>

        </div>

    </div>



    <!-- =================================================
         STATISTICS
    ================================================= -->

    <div class="stats">


        <div class="stat-card">

            <div class="stat-icon">

                <i class="bi bi-file-earmark-text-fill"></i>

            </div>

            <div
                class="stat-number"
                id="reportCount">

                0

            </div>

            <div class="stat-label">

                Total Reports

            </div>

        </div>



        <div class="stat-card">

            <div class="stat-icon">

                <i class="bi bi-folder-fill"></i>

            </div>

            <div class="stat-number">

                <i class="bi bi-check-circle-fill"
                   style="color:#a96cff;"></i>

                Active

            </div>

            <div class="stat-label">

                Project Reports

            </div>

        </div>



        <div class="stat-card">

            <div class="stat-icon">

                <i class="bi bi-clock-history"></i>

            </div>

            <div
                class="stat-number"
                id="currentTime">

                --

            </div>

            <div class="stat-label">

                Current Time

            </div>

        </div>

    </div>



    <!-- =================================================
         REPORT PANEL
    ================================================= -->

    <div class="report-panel">


        <!-- TOOLBAR -->

        <div class="toolbar">


            <div class="search-box">

                <i class="bi bi-search"></i>

                <input
                    type="text"
                    id="searchInput"
                    placeholder="Search project, subject or report type...">

            </div>


            <div>

                <button
                    class="tool-btn"
                    onclick="clearSearch()">

                    <i class="bi bi-x-circle"></i>

                    Clear Search

                </button>

            </div>


        </div>



        <!-- =================================================
             TABLE
        ================================================= -->

        <div class="table-container">

            <table id="reportTable">


                <thead>

                    <tr>

                        <th>Sr No</th>

                        <th>
                            <i class="bi bi-upc-scan"></i>
                            Project ID
                        </th>

                        <th>
                            <i class="bi bi-folder-fill"></i>
                            Project Name
                        </th>

                        <th>
                            <i class="bi bi-bar-chart-fill"></i>
                            Report Type
                        </th>

                        <th>
                            <i class="bi bi-chat-left-text-fill"></i>
                            Subject
                        </th>

                        <th>
                            <i class="bi bi-envelope-fill"></i>
                            Message
                        </th>

                        <th>
                            Action
                        </th>

                    </tr>

                </thead>


                <tbody id="reportBody">


                    <c:forEach
                        items="${temp}"
                        var="demo"
                        varStatus="status">


                        <tr>


                            <!-- SR NO -->

                            <td>

                                <div class="serial">

                                    ${status.count}

                                </div>

                            </td>



                            <!-- PROJECT ID -->

                            <td>

                                <span class="project-id">

                                    <i class="bi bi-hash"></i>

                                    ${demo.projectId}

                                </span>

                            </td>



                            <!-- PROJECT NAME -->

                            <td>

                                <span class="project-name">

                                    <i class="bi bi-folder2-open-fill"></i>

                                    ${demo.projectName}

                                </span>

                            </td>



                            <!-- REPORT TYPE -->

                            <td>

                                <span class="badge-report">

                                    <i class="bi bi-file-earmark-text"></i>

                                    ${demo.reportType}

                                </span>

                            </td>



                            <!-- SUBJECT -->

                            <td>

                                <span class="subject">

                                    ${demo.subject}

                                </span>

                            </td>



                            <!-- MESSAGE -->

                            <td>

                                <div class="message-preview">

                                    ${demo.message}

                                </div>

                            </td>



                            <!-- ACTION -->

                            <td>

                                <button
                                    class="view-btn"
                                    title="View Report"
                                    onclick="viewReport(
                                        '${demo.projectId}',
                                        '${demo.projectName}',
                                        '${demo.reportType}',
                                        '${demo.subject}',
                                        `${demo.message}`
                                    )">

                                    <i class="bi bi-eye-fill"></i>

                                </button>

                            </td>


                        </tr>


                    </c:forEach>


                </tbody>


            </table>


        </div>

    </div>



    <!-- FOOTER -->

    <div class="footer">

        <i class="bi bi-shield-lock-fill"></i>

        Project Management System

        &nbsp; • &nbsp;

        Secure Report Management

    </div>


</div>



<!-- =====================================================
     VIEW REPORT MODAL
===================================================== -->

<div
    class="modal fade"
    id="reportModal"
    tabindex="-1">

    <div class="modal-dialog modal-dialog-centered modal-lg">

        <div class="modal-content">


            <div class="modal-header">

                <h5 class="modal-title">

                    <i
                        class="bi bi-file-earmark-text-fill"
                        style="color:#ad6aff;"></i>

                    Project Report Details

                </h5>

                <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal">
                </button>

            </div>


            <div class="modal-body">


                <div class="row g-3">


                    <div class="col-md-6">

                        <small class="text-secondary">
                            Project ID
                        </small>

                        <h6 id="modalProjectId">
                            -
                        </h6>

                    </div>


                    <div class="col-md-6">

                        <small class="text-secondary">
                            Project Name
                        </small>

                        <h6 id="modalProjectName">
                            -
                        </h6>

                    </div>


                    <div class="col-md-6">

                        <small class="text-secondary">
                            Report Type
                        </small>

                        <h6 id="modalReportType">
                            -
                        </h6>

                    </div>


                    <div class="col-md-6">

                        <small class="text-secondary">
                            Subject
                        </small>

                        <h6 id="modalSubject">
                            -
                        </h6>

                    </div>


                    <div class="col-12">

                        <small class="text-secondary">
                            Report Message
                        </small>

                        <div
                            class="modal-message"
                            id="modalMessage">

                        </div>

                    </div>


                </div>

            </div>


            <div class="modal-footer">

                <button
                    class="btn btn-secondary"
                    data-bs-dismiss="modal">

                    Close

                </button>

                <button
                    class="tool-btn"
                    onclick="copyMessage()">

                    <i class="bi bi-clipboard"></i>

                    Copy Message

                </button>

            </div>


        </div>

    </div>

</div>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>



<script>

/* =====================================================
   REPORT COUNT
===================================================== */

const rows =
    document.querySelectorAll("#reportBody tr");

document.getElementById("reportCount").innerText =
    rows.length;



/* =====================================================
   LIVE SEARCH
===================================================== */

const searchInput =
    document.getElementById("searchInput");

searchInput.addEventListener("input", function() {

    const search =
        this.value.toLowerCase().trim();

    rows.forEach(function(row) {

        const text =
            row.innerText.toLowerCase();

        if(text.includes(search)) {

            row.style.display = "";

        } else {

            row.style.display = "none";

        }

    });

});



/* =====================================================
   CLEAR SEARCH
===================================================== */

function clearSearch() {

    searchInput.value = "";

    rows.forEach(function(row) {

        row.style.display = "";

    });

}



/* =====================================================
   CURRENT TIME
===================================================== */

function updateTime() {

    const now = new Date();

    let hours =
        now.getHours();

    let minutes =
        now.getMinutes();

    let seconds =
        now.getSeconds();

    hours =
        hours < 10 ? "0" + hours : hours;

    minutes =
        minutes < 10 ? "0" + minutes : minutes;

    seconds =
        seconds < 10 ? "0" + seconds : seconds;

    document.getElementById("currentTime").innerText =
        hours + ":" + minutes + ":" + seconds;

}

updateTime();

setInterval(updateTime, 1000);



/* =====================================================
   VIEW REPORT
===================================================== */

function viewReport(
    projectId,
    projectName,
    reportType,
    subject,
    message
) {

    document.getElementById("modalProjectId").innerText =
        projectId;

    document.getElementById("modalProjectName").innerText =
        projectName;

    document.getElementById("modalReportType").innerText =
        reportType;

    document.getElementById("modalSubject").innerText =
        subject;

    document.getElementById("modalMessage").innerText =
        message;

    const modal =
        new bootstrap.Modal(
            document.getElementById("reportModal")
        );

    modal.show();

}



/* =====================================================
   COPY MESSAGE
===================================================== */

function copyMessage() {

    const message =
        document.getElementById("modalMessage").innerText;

    navigator.clipboard.writeText(message);

    alert("Report message copied successfully!");

}

</script>


</body>

</html>