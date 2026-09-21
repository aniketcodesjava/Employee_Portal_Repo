
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Project Management</title>


<!-- ================= BOOTSTRAP ================= -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">


<!-- ================= FONT AWESOME ================= -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


<!-- ================= GOOGLE FONT ================= -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet">


<style>

/* =====================================================
   BASIC
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

    overflow-x: hidden;

    /* Online Background Image */

    background-image:
        linear-gradient(
            rgba(5, 10, 30, 0.78),
            rgba(10, 20, 55, 0.80)
        ),
        url("https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=2000&q=85");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;

}


/* =====================================================
   BACKGROUND DECORATION
===================================================== */

.background-circle {

    position: fixed;

    border-radius: 50%;

    filter: blur(2px);

    opacity: 0.35;

    z-index: 0;

}

.circle-one {

    width: 300px;

    height: 300px;

    background: #00e5ff;

    top: -100px;

    left: -100px;

    animation: floating 7s ease-in-out infinite;

}

.circle-two {

    width: 350px;

    height: 350px;

    background: #a855f7;

    bottom: -150px;

    right: -100px;

    animation: floating 9s ease-in-out infinite reverse;

}


@keyframes floating {

    0%,100% {

        transform: translateY(0px);

    }

    50% {

        transform: translateY(-25px);

    }

}


/* =====================================================
   MAIN CONTAINER
===================================================== */

.main-container {

    width: 92%;

    max-width: 1150px;

    position: relative;

    z-index: 2;

    padding: 35px;

}


/* =====================================================
   HEADER
===================================================== */

.page-heading {

    text-align: center;

    color: white;

    margin-bottom: 45px;

    animation: fadeDown 1s ease;

}


.page-heading .icon {

    width: 75px;

    height: 75px;

    margin: auto;

    border-radius: 22px;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 32px;

    color: white;

    background:
        linear-gradient(
            135deg,
            #00c6ff,
            #7b2ff7
        );

    box-shadow:
        0 15px 35px rgba(0,0,0,0.35);

}


.page-heading h1 {

    margin-top: 18px;

    font-size: 36px;

    font-weight: 700;

    letter-spacing: 1px;

}


.page-heading p {

    color: #dbeafe;

    font-size: 15px;

}


@keyframes fadeDown {

    from {

        opacity: 0;

        transform: translateY(-35px);

    }

    to {

        opacity: 1;

        transform: translateY(0);

    }

}


/* =====================================================
   SLIDE ROW
===================================================== */

.slide-row {

    display: flex;

    gap: 30px;

    justify-content: center;

    align-items: stretch;

}


/* =====================================================
   PROJECT CARD
===================================================== */

.project-card {

    width: 50%;

    min-height: 390px;

    padding: 40px 35px;

    position: relative;

    overflow: hidden;

    border-radius: 30px;

    color: white;

    backdrop-filter: blur(18px);

    -webkit-backdrop-filter: blur(18px);

    border: 1px solid rgba(255,255,255,0.20);

    box-shadow:
        0 25px 60px rgba(0,0,0,0.40);

    display: flex;

    flex-direction: column;

    justify-content: center;

    align-items: center;

    text-align: center;

    transition:
        transform 0.5s ease,
        box-shadow 0.5s ease;

    animation: cardAppear 1s ease backwards;

}


/* First card */

.project-card:nth-child(1) {

    background:
        linear-gradient(
            145deg,
            rgba(0,198,255,0.30),
            rgba(0,70,120,0.35)
        );

    animation-delay: 0.2s;

}


/* Second card */

.project-card:nth-child(2) {

    background:
        linear-gradient(
            145deg,
            rgba(168,85,247,0.35),
            rgba(70,20,120,0.40)
        );

    animation-delay: 0.4s;

}


@keyframes cardAppear {

    from {

        opacity: 0;

        transform: translateY(60px) scale(0.9);

    }

    to {

        opacity: 1;

        transform: translateY(0) scale(1);

    }

}


/* =====================================================
   CARD HOVER
===================================================== */

.project-card:hover {

    transform: translateY(-15px) scale(1.02);

    box-shadow:
        0 35px 80px rgba(0,0,0,0.55);

}


/* =====================================================
   CARD GLOW
===================================================== */

.project-card::before {

    content: "";

    position: absolute;

    width: 220px;

    height: 220px;

    border-radius: 50%;

    background: rgba(255,255,255,0.12);

    top: -100px;

    right: -80px;

    transition: 0.6s;

}


.project-card:hover::before {

    transform: scale(1.5);

}


/* =====================================================
   ICON
===================================================== */

.card-icon {

    width: 100px;

    height: 100px;

    border-radius: 28px;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 45px;

    margin-bottom: 25px;

    background: rgba(255,255,255,0.15);

    border: 1px solid rgba(255,255,255,0.25);

    box-shadow:
        inset 0 0 20px rgba(255,255,255,0.08),
        0 15px 30px rgba(0,0,0,0.20);

    transition: 0.5s;

}


.project-card:hover .card-icon {

    transform:
        rotateY(360deg)
        scale(1.1);

}


/* =====================================================
   TEXT
===================================================== */

.project-card h2 {

    font-size: 25px;

    font-weight: 700;

    margin-bottom: 15px;

}


.project-card p {

    color: #e5e7eb;

    font-size: 14px;

    line-height: 1.8;

    max-width: 420px;

}


/* =====================================================
   BUTTON
===================================================== */

.project-btn {

    margin-top: 25px;

    padding: 13px 28px;

    border: none;

    border-radius: 50px;

    color: white;

    font-size: 14px;

    font-weight: 600;

    text-decoration: none;

    display: inline-flex;

    align-items: center;

    gap: 10px;

    transition: 0.4s;

    position: relative;

    overflow: hidden;

}


/* Button 1 */

.new-project-btn {

    background:
        linear-gradient(
            90deg,
            #00c6ff,
            #0072ff
        );

    box-shadow:
        0 10px 25px rgba(0,198,255,0.35);

}


/* Button 2 */

.report-btn {

    background:
        linear-gradient(
            90deg,
            #a855f7,
            #ec4899
        );

    box-shadow:
        0 10px 25px rgba(168,85,247,0.35);

}


.project-btn:hover {

    transform: translateY(-4px);

    color: white;

    box-shadow:
        0 15px 35px rgba(0,0,0,0.35);

}


.project-btn i {

    transition: 0.3s;

}


.project-btn:hover i {

    transform: translateX(6px);

}


/* =====================================================
   BADGE
===================================================== */

.card-badge {

    position: absolute;

    top: 20px;

    left: 20px;

    padding: 7px 14px;

    border-radius: 30px;

    background: rgba(255,255,255,0.12);

    border: 1px solid rgba(255,255,255,0.20);

    font-size: 11px;

    font-weight: 500;

    letter-spacing: 0.5px;

}


/* =====================================================
   RESPONSIVE
===================================================== */

@media(max-width: 768px) {

    .main-container {

        width: 95%;

        padding: 25px 10px;

    }

    .page-heading h1 {

        font-size: 27px;

    }

    .slide-row {

        flex-direction: column;

    }

    .project-card {

        width: 100%;

        min-height: 350px;

    }

}


/* =====================================================
   SMALL MOBILE
===================================================== */

@media(max-width: 480px) {

    .page-heading h1 {

        font-size: 23px;

    }

    .project-card {

        padding: 35px 20px;

    }

    .project-card h2 {

        font-size: 21px;

    }

}

</style>

</head>


<body>


<!-- Background Decorations -->

<div class="background-circle circle-one"></div>

<div class="background-circle circle-two"></div>


<!-- =====================================================
     MAIN
===================================================== -->

<div class="main-container">


    <!-- HEADER -->

    <div class="page-heading">

        <div class="icon">

            <i class="fa-solid fa-diagram-project"></i>

        </div>

        <h1>Project Management</h1>

        <p>
            Manage your projects, assignments and project reports
            from one place.
        </p>

    </div>



    <!-- =================================================
         TWO SLIDES
    ================================================== -->

    <div class="slide-row">


        <!-- =============================================
             SLIDE 1 : NEW PROJECT
        ============================================== -->

        <div class="project-card">

            <span class="card-badge">

                <i class="fa-solid fa-bolt"></i>
                NEW

            </span>


            <div class="card-icon">

                <i class="fa-solid fa-folder-plus"></i>

            </div>


            <h2>
                Assign New Project
            </h2>


            <p>

                Create and assign a new project to your
                employees or team members. Set project
                details, deadlines and responsibilities easily.

            </p>


            <a href="assignProject"
               class="project-btn new-project-btn">

                Assign Project

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>



        <!-- =============================================
             SLIDE 2 : OLD REPORTS
        ============================================== -->

      
<!-- =============================================
     SLIDE 2 : OLD REPORTS
============================================== -->

<div class="project-card">

    <span class="card-badge">

        <i class="fa-solid fa-chart-line"></i>
        REPORTS

    </span>


    <!-- CORRECTED ICON -->

    <div class="card-icon">

        <i class="fa-solid fa-chart-column"></i>

    </div>


    <h2>
        Show Old Project Reports
    </h2>


    <p>

        View previously completed projects,
        employee performance, project status,
        deadlines and historical project reports.

    </p>


    <a href="showProjectRepo"
       class="project-btn report-btn">

        View Reports

        <i class="fa-solid fa-arrow-right"></i>

    </a>

</div>



    </div>


</div>


<!-- =====================================================
     BOOTSTRAP JS
===================================================== -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


<!-- =====================================================
     CUSTOM JAVASCRIPT
===================================================== -->

<script>

document.addEventListener("DOMContentLoaded", function() {

    const cards =
        document.querySelectorAll(".project-card");


    cards.forEach(function(card) {

        card.addEventListener("click", function(e) {

            /*
             * Do not trigger animation
             * when clicking the button/link.
             */

            if(e.target.closest("a")) {
                return;
            }


            card.style.transform =
                "translateY(-20px) scale(1.04)";


            setTimeout(function() {

                card.style.transform =
                    "";

            }, 400);

        });

    });


    /*
     * Button ripple effect
     */

    const buttons =
        document.querySelectorAll(".project-btn");


    buttons.forEach(function(button) {

        button.addEventListener("click", function(e) {

            const ripple =
                document.createElement("span");


            ripple.style.position = "absolute";

            ripple.style.width = "10px";

            ripple.style.height = "10px";

            ripple.style.background =
                "rgba(255,255,255,0.5)";

            ripple.style.borderRadius = "50%";

            ripple.style.transform =
                "translate(-50%, -50%)";

            ripple.style.pointerEvents = "none";


            const rect =
                button.getBoundingClientRect();


            ripple.style.left =
                (e.clientX - rect.left) + "px";


            ripple.style.top =
                (e.clientY - rect.top) + "px";


            button.appendChild(ripple);


            setTimeout(function() {

                ripple.remove();

            }, 600);

        });

    });

});

</script>


</body>

</html>
