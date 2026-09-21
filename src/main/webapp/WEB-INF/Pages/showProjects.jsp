<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
   content="width=device-width, initial-scale=1.0">

<title>My Assigned Projects</title>

<!-- Bootstrap 5 -->

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<!-- Bootstrap Icons -->

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

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

    min-height: 100vh;

    font-family:
        "Segoe UI",
        Tahoma,
        Geneva,
        Verdana,
        sans-serif;

    background:
        radial-gradient(
            circle at 10% 20%,
            rgba(124, 58, 237, 0.25),
            transparent 30%
        ),
        radial-gradient(
            circle at 90% 80%,
            rgba(6, 182, 212, 0.20),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #07111f,
            #0d1729 45%,
            #111827
        );

    color: #ffffff;

    overflow-x: hidden;
}


/* =========================================================
   ANIMATED BACKGROUND
========================================================= */

.background-shape {

    position: fixed;

    border-radius: 50%;

    filter: blur(5px);

    opacity: 0.25;

    z-index: -1;

    animation:
        floatShape 10s ease-in-out infinite;
}

.shape-one {

    width: 250px;
    height: 250px;

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #ec4899
        );

    top: 5%;
    left: -80px;
}

.shape-two {

    width: 300px;
    height: 300px;

    background:
        linear-gradient(
            135deg,
            #06b6d4,
            #3b82f6
        );

    bottom: -100px;
    right: -80px;

    animation-delay: 2s;
}

.shape-three {

    width: 150px;
    height: 150px;

    background: #a855f7;

    top: 50%;
    right: 20%;

    animation-delay: 4s;
}

@keyframes floatShape {

    0%,100% {

        transform:
            translateY(0)
            rotate(0deg);

    }

    50% {

        transform:
            translateY(-35px)
            rotate(20deg);

    }
}


/* =========================================================
   MAIN CONTAINER
========================================================= */

.main-container {

    width: 95%;

    max-width: 1500px;

    margin: auto;

    padding:
        40px 0 60px;
}


/* =========================================================
   HEADER
========================================================= */

.header-section {

    position: relative;

    padding: 35px;

    margin-bottom: 30px;

    border-radius: 28px;

    background:
        linear-gradient(
            135deg,
            rgba(30, 41, 59, 0.90),
            rgba(49, 46, 129, 0.75)
        );

    border:
        1px solid
        rgba(255,255,255,0.12);

    box-shadow:
        0 25px 70px
        rgba(0,0,0,0.35);

    overflow: hidden;

    animation:
        slideDown 0.8s ease;
}

.header-section::before {

    content: "";

    position: absolute;

    width: 350px;
    height: 350px;

    right: -120px;
    top: -180px;

    border-radius: 50%;

    background:
        rgba(168,85,247,0.25);

    filter: blur(10px);
}

.header-content {

    position: relative;

    z-index: 2;
}

.header-icon {

    width: 70px;
    height: 70px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 20px;

    background:
        linear-gradient(
            135deg,
            #7c3aed,
            #06b6d4
        );

    font-size: 32px;

    box-shadow:
        0 10px 30px
        rgba(124,58,237,0.45);

    animation:
        pulseIcon 3s infinite;
}

.header-title {

    font-size: 38px;

    font-weight: 800;

    margin: 0;

    letter-spacing: -1px;
}

.header-subtitle {

    color: #cbd5e1;

    margin-top: 8px;

    font-size: 16px;
}

@keyframes slideDown {

    from {

        opacity: 0;

        transform:
            translateY(-30px);

    }

    to {

        opacity: 1;

        transform:
            translateY(0);

    }
}

@keyframes pulseIcon {

    0%,100% {

        transform: scale(1);

    }

    50% {

        transform: scale(1.07);

    }
}


/* =========================================================
   STAT CARDS
========================================================= */

.stats-row {

    margin-bottom: 30px;
}

.stat-card {

    position: relative;

    padding: 25px;

    height: 100%;

    border-radius: 22px;

    background:
        rgba(15,23,42,0.75);

    border:
        1px solid
        rgba(255,255,255,0.10);

    backdrop-filter: blur(15px);

    transition:
        all 0.35s ease;

    overflow: hidden;
}

.stat-card:hover {

    transform:
        translateY(-8px);

    border-color:
        rgba(139,92,246,0.55);

    box-shadow:
        0 20px 45px
        rgba(0,0,0,0.3);
}

.stat-icon {

    width: 52px;
    height: 52px;

    border-radius: 15px;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 24px;

    margin-bottom: 18px;
}

.icon-purple {

    background:
        rgba(139,92,246,0.18);

    color: #a78bfa;
}

.icon-cyan {

    background:
        rgba(6,182,212,0.18);

    color: #67e8f9;
}

.icon-green {

    background:
        rgba(34,197,94,0.18);

    color: #86efac;
}

.stat-number {

    font-size: 30px;

    font-weight: 800;

    margin-bottom: 4px;
}

.stat-label {

    color: #94a3b8;

    font-size: 14px;
}


/* =========================================================
   SEARCH SECTION
========================================================= */

.search-panel {

    display: flex;

    align-items: center;

    gap: 15px;

    padding: 18px 22px;

    margin-bottom: 25px;

    border-radius: 20px;

    background:
        rgba(15,23,42,0.75);

    border:
        1px solid
        rgba(255,255,255,0.10);

    backdrop-filter:
        blur(15px);
}

.search-box {

    position: relative;

    flex: 1;
}

.search-box i {

    position: absolute;

    left: 18px;

    top: 50%;

    transform:
        translateY(-50%);

    color: #94a3b8;

    font-size: 18px;
}

.search-input {

    width: 100%;

    padding:
        14px 18px 14px 50px;

    border-radius: 14px;

    border:
        1px solid
        rgba(255,255,255,0.12);

    background:
        rgba(30,41,59,0.75);

    color: white;

    outline: none;

    transition: 0.3s;
}

.search-input::placeholder {

    color: #64748b;
}

.search-input:focus {

    border-color:
        #8b5cf6;

    box-shadow:
        0 0 0 4px
        rgba(139,92,246,0.12);
}


/* =========================================================
   TABLE CARD
========================================================= */

.project-card {

    border-radius: 28px;

    overflow: hidden;

    background:
        rgba(15,23,42,0.82);

    border:
        1px solid
        rgba(255,255,255,0.10);

    box-shadow:
        0 25px 70px
        rgba(0,0,0,0.30);

    backdrop-filter:
        blur(18px);

    animation:
        fadeUp 1s ease;
}

.project-card-header {

    padding: 25px 28px;

    display: flex;

    align-items: center;

    justify-content: space-between;

    border-bottom:
        1px solid
        rgba(255,255,255,0.08);
}

.project-heading {

    font-size: 21px;

    font-weight: 700;

    margin: 0;
}

.live-badge {

    display: inline-flex;

    align-items: center;

    gap: 7px;

    padding:
        7px 13px;

    border-radius: 30px;

    font-size: 12px;

    background:
        rgba(34,197,94,0.12);

    color:
        #86efac;

    border:
        1px solid
        rgba(34,197,94,0.2);
}

.live-dot {

    width: 7px;
    height: 7px;

    border-radius: 50%;

    background:
        #4ade80;

    animation:
        blink 1.5s infinite;
}

@keyframes blink {

    0%,100% {
        opacity: 1;
    }

    50% {
        opacity: 0.3;
    }
}


/* =========================================================
   TABLE
========================================================= */

.table-wrapper {

    overflow-x: auto;
}

.project-table {

    width: 100%;

    min-width: 1150px;

    border-collapse:
        separate;

    border-spacing:
        0;
}

.project-table thead {

    background:
        rgba(30,41,59,0.85);
}

.project-table th {

    padding:
        18px 16px;

    color:
        #94a3b8;

    font-size: 12px;

    text-transform:
        uppercase;

    letter-spacing:
        0.8px;

    font-weight: 700;

    border-bottom:
        1px solid
        rgba(255,255,255,0.08);

    white-space:
        nowrap;
}

.project-table td {

    padding:
        20px 16px;

    color:
        #e2e8f0;

    font-size: 14px;

    border-bottom:
        1px solid
        rgba(255,255,255,0.06);

    vertical-align:
        middle;
}

.project-table tbody tr {

    transition:
        all 0.3s ease;
}

.project-table tbody tr:hover {

    background:
        rgba(139,92,246,0.07);

    transform:
        scale(1.003);
}

.project-table tbody tr:last-child td {

    border-bottom:
        none;
}


/* =========================================================
   PROJECT ID
========================================================= */

.project-id {

    display: inline-flex;

    align-items: center;

    justify-content: center;

    min-width: 48px;

    padding:
        7px 10px;

    border-radius: 10px;

    background:
        rgba(139,92,246,0.13);

    color:
        #c4b5fd;

    font-weight: 700;

    font-size: 12px;
}


/* =========================================================
   PROJECT NAME
========================================================= */

.project-name {

    font-weight: 700;

    color: white;

    font-size: 15px;
}

.project-name i {

    color:
        #8b5cf6;

    margin-right: 8px;
}


/* =========================================================
   TEAM MEMBER
========================================================= */

.person {

    display: flex;

    align-items: center;

    gap: 9px;

    white-space: nowrap;
}

.avatar {

    width: 34px;
    height: 34px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 50%;

    background:
        linear-gradient(
            135deg,
            #7c3aed,
            #06b6d4
        );

    color: white;

    font-weight: 700;

    font-size: 12px;
}


/* =========================================================
   TECHNOLOGY BADGE
========================================================= */

.tech-badge {

    display: inline-block;

    padding:
        7px 12px;

    border-radius: 30px;

    background:
        rgba(6,182,212,0.10);

    color:
        #67e8f9;

    border:
        1px solid
        rgba(6,182,212,0.20);

    font-size: 12px;

    font-weight: 600;

    white-space: nowrap;
}


/* =========================================================
   DATE
========================================================= */

.date-text {

    display: flex;

    align-items: center;

    gap: 7px;

    color:
        #cbd5e1;

    white-space: nowrap;
}

.date-text i {

    color:
        #a78bfa;
}


/* =========================================================
   DURATION
========================================================= */

.duration {

    color:
        #fcd34d;

    font-weight:
        700;

    white-space: nowrap;
}


/* =========================================================
   MESSAGE BUTTON
========================================================= */

.message-btn {

    display: inline-flex;

    align-items: center;

    gap: 8px;

    padding:
        10px 15px;

    border-radius: 12px;

    text-decoration: none;

    color: white;

    background:
        linear-gradient(
            135deg,
            #7c3aed,
            #4f46e5
        );

    border:
        1px solid
        rgba(255,255,255,0.10);

    font-size: 12px;

    font-weight: 700;

    transition:
        all 0.3s ease;

    box-shadow:
        0 7px 20px
        rgba(79,70,229,0.25);

    white-space: nowrap;
}

.message-btn:hover {

    color: white;

    transform:
        translateY(-3px);

    box-shadow:
        0 12px 28px
        rgba(124,58,237,0.40);

    background:
        linear-gradient(
            135deg,
            #8b5cf6,
            #6366f1
        );
}

.message-btn i {

    transition:
        transform 0.3s ease;
}

.message-btn:hover i {

    transform:
        translateX(3px);
}


/* =========================================================
   EMPTY STATE
========================================================= */

.empty-state {

    text-align: center;

    padding:
        70px 20px;
}

.empty-icon {

    width: 90px;
    height: 90px;

    margin:
        0 auto 20px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 25px;

    background:
        rgba(139,92,246,0.12);

    color:
        #a78bfa;

    font-size: 42px;
}

.empty-state h3 {

    font-weight: 700;

    margin-bottom: 8px;
}

.empty-state p {

    color:
        #94a3b8;
}


/* =========================================================
   FOOTER
========================================================= */

.footer {

    text-align: center;

    margin-top: 35px;

    color:
        #64748b;

    font-size: 13px;
}

.footer i {

    color:
        #a78bfa;
}


/* =========================================================
   LOADING
========================================================= */

.page-loader {

    position: fixed;

    inset: 0;

    z-index: 9999;

    display: flex;

    align-items: center;
    justify-content: center;

    background:
        #07111f;

    transition:
        opacity 0.5s ease,
        visibility 0.5s ease;
}

.loader-content {

    text-align: center;
}

.loader-spinner {

    width: 55px;
    height: 55px;

    border:
        4px solid
        rgba(255,255,255,0.1);

    border-top-color:
        #8b5cf6;

    border-right-color:
        #06b6d4;

    border-radius: 50%;

    animation:
        spin 0.9s linear infinite;

    margin:
        auto auto 15px;
}

.loader-content span {

    color:
        #94a3b8;

    font-size: 13px;
}

@keyframes spin {

    to {
        transform:
            rotate(360deg);
    }
}

@keyframes fadeUp {

    from {

        opacity: 0;

        transform:
            translateY(30px);

    }

    to {

        opacity: 1;

        transform:
            translateY(0);

    }
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width: 768px) {

    .main-container {

        width: 92%;

        padding-top:
            20px;
    }

    .header-section {

        padding: 25px 20px;

        border-radius: 22px;
    }

    .header-title {

        font-size: 27px;
    }

    .header-icon {

        width: 55px;
        height: 55px;

        font-size: 25px;
    }

    .search-panel {

        padding: 14px;

    }

}


/* =========================================================
   SCROLLBAR
========================================================= */

::-webkit-scrollbar {

    width: 8px;
    height: 8px;
}

::-webkit-scrollbar-track {

    background:
        #0f172a;
}

::-webkit-scrollbar-thumb {

    background:
        linear-gradient(
            #7c3aed,
            #06b6d4
        );

    border-radius:
        20px;
}

</style>

</head>

<body>

<% String str=(String)session.getAttribute("temp1"); %>

 <script>
 
 <% if(str != null && !str.isEmpty()) { %>
 alert("<%=str%>");
 <% } %>
 </script>
 
 <%
 session.removeAttribute("temp1");
 %>

<!-- =====================================================
     ANIMATED BACKGROUND
===================================================== -->

<div class="background-shape shape-one"></div>

<div class="background-shape shape-two"></div>

<div class="background-shape shape-three"></div>

<!-- =====================================================
     PAGE LOADER
===================================================== -->

<div class="page-loader" id="pageLoader">

<div class="loader-content">

    <div class="loader-spinner"></div>

    <span>Loading your projects...</span>

</div>

</div>

<!-- =====================================================
     MAIN
===================================================== -->

<div class="main-container">

<!-- =================================================
     STATISTICS
================================================== -->

<div class="row g-4 stats-row">


    <!-- Total Projects -->

    <div class="col-lg-4 col-md-6">

        <div class="stat-card">

            <div class="stat-icon icon-purple">

                <i class="bi bi-kanban"></i>

            </div>

            <div class="stat-number"
                 id="projectCount">

                0

            </div>

            <div class="stat-label">

                Assigned Projects

            </div>

        </div>

    </div>


    <!-- Team -->

    <div class="col-lg-4 col-md-6">

        <div class="stat-card">

            <div class="stat-icon icon-cyan">

                <i class="bi bi-people-fill"></i>

            </div>

            <div class="stat-number">

                <i class="bi bi-person-check"></i>

            </div>

            <div class="stat-label">

                Team Collaboration

            </div>

        </div>

    </div>


    <!-- Status -->

    <div class="col-lg-4 col-md-12">

        <div class="stat-card">

            <div class="stat-icon icon-green">

                <i class="bi bi-activity"></i>

            </div>

            <div class="stat-number">

                Active

            </div>

            <div class="stat-label">

                Project Workspace

            </div>

        </div>

    </div>


</div>


<!-- =================================================
     SEARCH
================================================== -->

<div class="search-panel">

    <div class="search-box">

        <i class="bi bi-search"></i>

        <input
            type="text"
            id="projectSearch"
            class="search-input"
            placeholder="Search project, team leader, technology..."
            onkeyup="searchProjects()">

    </div>

    <button
        type="button"
        class="btn btn-outline-light rounded-3 px-4"
        onclick="clearSearch()">

        <i class="bi bi-arrow-clockwise"></i>

    </button>

</div>


<!-- =================================================
     PROJECT TABLE
================================================== -->

<div class="project-card">


    <!-- Card Header -->

    <div class="project-card-header">

        <div class="d-flex align-items-center gap-3">

            <i class="bi bi-folder2-open fs-4"
               style="color:#a78bfa;"></i>

            <h2 class="project-heading">

                Project Assignments

            </h2>

        </div>

        <div class="live-badge">

            <span class="live-dot"></span>

            LIVE PROJECTS

        </div>

    </div>


    <!-- Table -->

    <div class="table-wrapper">

        <table class="project-table"
               id="projectTable">

            <thead>

                <tr>

                    <th>
                        Project ID
                    </th>

                    <th>
                        Project Name
                    </th>

                    <th>
                        Team Leader
                    </th>

                    <th>
                        Team Member
                    </th>

                    <th>
                        Technology
                    </th>

                    <th>
                        Start Date
                    </th>

                    <th>
                        End Date
                    </th>

                    <th>
                        Duration
                    </th>

                    <th>
                        Action
                    </th>

                </tr>

            </thead>


            <tbody>


            <c:forEach
                items="${temp}"
                var="demo">


                <tr class="project-row">


                    <!-- PROJECT ID -->

                    <td>

                        <span class="project-id">

                            #${demo.pid}

                        </span>

                    </td>


                    <!-- PROJECT NAME -->

                    <td>

                        <div class="project-name">

                            <i class="bi bi-folder-fill"></i>

                            ${demo.pname}

                        </div>

                    </td>


                    <!-- TEAM LEADER -->

                    <td>

                        <div class="person">

                            <div class="avatar">

                                ${demo.teamLeader.substring(0,1)}

                            </div>

                            <span>
                                ${demo.teamLeader}
                            </span>

                        </div>

                    </td>


                    <!-- TEAM MEMBER -->

                    <td>

                        <div class="person">

                            <div class="avatar">

                                ${demo.teamMembers.substring(0,1)}

                            </div>

                            <span>
                                ${demo.teamMembers}
                            </span>

                        </div>

                    </td>


                    <!-- TECHNOLOGY -->

                    <td>

                        <span class="tech-badge">

                            <i class="bi bi-code-slash"></i>

                            ${demo.technology}

                        </span>

                    </td>


                    <!-- START DATE -->

                    <td>

                        <div class="date-text">

                            <i class="bi bi-calendar-event"></i>

                            ${demo.startDate}

                        </div>

                    </td>


                    <!-- END DATE -->

                    <td>

                        <div class="date-text">

                            <i class="bi bi-calendar-check"></i>

                            ${demo.endDate}

                        </div>

                    </td>


                    <!-- DURATION -->

                    <td>

                        <span class="duration">

                            <i class="bi bi-hourglass-split"></i>

                            ${demo.duration}

                        </span>

                    </td>


                    <!-- ACTION -->

                    <td>

                        <a href="ProjectReports"
                           class="message-btn"
                           onclick="sendMessage(event, '${demo.teamLeader}')">

                            <i class="bi bi-chat-dots-fill"></i>

                            Send Report

                        </a>

                    </td>


                </tr>


            </c:forEach>


            </tbody>

        </table>


        <!-- EMPTY MESSAGE -->

        <div id="noProjects"
             class="empty-state"
             style="display:none;">

            <div class="empty-icon">

                <i class="bi bi-folder-x"></i>

            </div>

            <h3>
                No Projects Found
            </h3>

            <p>
                There are currently no projects matching your search.
            </p>

        </div>


    </div>

</div>


<!-- =================================================
     FOOTER
================================================== -->

<div class="footer">

    <i class="bi bi-shield-check"></i>

    Your project information is securely displayed

    &nbsp; • &nbsp;

    Manager Project Portal

</div>

</div>

<!-- =====================================================
     JAVASCRIPT
===================================================== -->

<script>

/* ========================================================
   PAGE LOADER
======================================================== */

window.addEventListener("load", function() {

    setTimeout(function() {

        const loader =
            document.getElementById("pageLoader");

        loader.style.opacity = "0";

        loader.style.visibility = "hidden";

    }, 700);

});


/* ========================================================
   COUNT PROJECTS
======================================================== */

document.addEventListener("DOMContentLoaded", function() {

    const rows =
        document.querySelectorAll(".project-row");

    const count =
        document.getElementById("projectCount");

    count.innerText = rows.length;

});


/* ========================================================
   SEARCH PROJECTS
======================================================== */

function searchProjects() {

    const input =
        document
        .getElementById("projectSearch")
        .value
        .toLowerCase()
        .trim();


    const rows =
        document.querySelectorAll(".project-row");


    let visibleRows = 0;


    rows.forEach(function(row) {

        const text =
            row.innerText.toLowerCase();


        if(text.includes(input)) {

            row.style.display = "";

            visibleRows++;

        }
        else {

            row.style.display = "none";

        }

    });


    const noProjects =
        document.getElementById("noProjects");


    if(visibleRows === 0) {

        noProjects.style.display = "block";

    }
    else {

        noProjects.style.display = "none";

    }

}


/* ========================================================
   CLEAR SEARCH
======================================================== */

function clearSearch() {

    document
        .getElementById("projectSearch")
        .value = "";

    searchProjects();

}


/* ========================================================
   ROW ANIMATION
======================================================== */

document.addEventListener("DOMContentLoaded", function() {

    const rows =
        document.querySelectorAll(".project-row");


    rows.forEach(function(row, index) {

        row.style.opacity = "0";

        row.style.transform =
            "translateY(15px)";


        setTimeout(function() {

            row.style.transition =
                "all 0.45s ease";

            row.style.opacity = "1";

            row.style.transform =
                "translateY(0)";

        }, 100 + (index * 80));

    });

});

</script>

</body>
</html>
