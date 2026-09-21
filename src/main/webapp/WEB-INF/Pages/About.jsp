<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>WorkSphere | About Company</title>

<!-- =========================================================
     BOOTSTRAP
========================================================= -->

<link
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
 rel="stylesheet">

<!-- =========================================================
     BOOTSTRAP ICONS
========================================================= -->

<link
 rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- =========================================================
     GOOGLE FONT
========================================================= -->

<link
 href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Poppins:wght@400;500;600;700;800&display=swap"
 rel="stylesheet">


<style>

/* =========================================================
   GLOBAL
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{

    font-family:'Inter',sans-serif;

    background:#07111f;

    color:#ffffff;

    overflow-x:hidden;
}

a{
    text-decoration:none;
}

section{
    position:relative;
}

.container{
    position:relative;
    z-index:5;
}


/* =========================================================
   CUSTOM SCROLLBAR
========================================================= */

::-webkit-scrollbar{
    width:8px;
}

::-webkit-scrollbar-track{
    background:#050b14;
}

::-webkit-scrollbar-thumb{

    background:linear-gradient(
        #00d9ff,
        #8b5cf6
    );

    border-radius:20px;
}


/* =========================================================
   NAVBAR
========================================================= */

.navbar{

    position:fixed;

    top:0;
    left:0;

    width:100%;

    z-index:9999;

    padding:15px 0;

    background:rgba(5,12,25,.72);

    backdrop-filter:blur(18px);

    border-bottom:1px solid rgba(255,255,255,.08);

    transition:.4s;
}

.navbar.scrolled{

    background:rgba(4,9,18,.95);

    box-shadow:
    0 10px 40px rgba(0,0,0,.35);
}


/* LOGO */

.logo{

    display:flex;

    align-items:center;

    gap:10px;

    color:white;

    font-size:25px;

    font-weight:800;

    letter-spacing:.5px;
}

.logo-icon{

    width:43px;
    height:43px;

    display:flex;

    justify-content:center;
    align-items:center;

    border-radius:13px;

    background:
    linear-gradient(
        135deg,
        #00d9ff,
        #7c3aed
    );

    box-shadow:
    0 0 25px rgba(0,217,255,.35);

    animation:logoPulse 3s infinite;
}

@keyframes logoPulse{

    0%,100%{
        transform:scale(1);
    }

    50%{
        transform:scale(1.08);
    }
}

.logo span{

    background:
    linear-gradient(
        90deg,
        #fff,
        #65eaff
    );

    -webkit-background-clip:text;

    -webkit-text-fill-color:transparent;
}


/* NAV LINKS */

.nav-link{

    color:#cbd5e1 !important;

    margin:0 6px;

    font-weight:500;

    position:relative;

    transition:.3s;
}

.nav-link:hover{

    color:#00d9ff !important;

    transform:translateY(-2px);
}

.nav-link::after{

    content:"";

    position:absolute;

    left:50%;

    bottom:0;

    width:0;

    height:2px;

    background:#00d9ff;

    transition:.3s;

    transform:translateX(-50%);
}

.nav-link:hover::after{

    width:70%;
}


/* =========================================================
   HERO
========================================================= */

.hero{

    min-height:100vh;

    display:flex;

    align-items:center;

    overflow:hidden;

    background:

    linear-gradient(
        115deg,
        rgba(3,9,20,.96),
        rgba(5,15,30,.70),
        rgba(11,8,35,.72)
    ),

    url("https://wallpaperaccess.com/full/3915891.jpg");

    background-size:cover;

    background-position:center;

    background-attachment:fixed;
}


/* HERO LIGHT */

.hero::before{

    content:"";

    position:absolute;

    width:600px;
    height:600px;

    border-radius:50%;

    background:
    radial-gradient(
        circle,
        rgba(0,217,255,.17),
        transparent 70%
    );

    top:-200px;
    right:-150px;

    animation:floatGlow 8s infinite ease-in-out;
}

.hero::after{

    content:"";

    position:absolute;

    width:500px;
    height:500px;

    border-radius:50%;

    background:
    radial-gradient(
        circle,
        rgba(124,58,237,.15),
        transparent 70%
    );

    bottom:-200px;
    left:-150px;

    animation:floatGlow 10s infinite ease-in-out reverse;
}

@keyframes floatGlow{

    0%,100%{
        transform:translate(0,0);
    }

    50%{
        transform:translate(50px,30px);
    }
}


/* =========================================================
   PARTICLES
========================================================= */

.particles{

    position:absolute;

    inset:0;

    overflow:hidden;

    z-index:1;
}

.particle{

    position:absolute;

    width:4px;
    height:4px;

    background:#8beeff;

    border-radius:50%;

    box-shadow:
    0 0 15px #00d9ff;

    animation:
    particleMove linear infinite;
}

@keyframes particleMove{

    0%{
        transform:
        translateY(100vh)
        translateX(0);
        opacity:0;
    }

    20%{
        opacity:1;
    }

    100%{
        transform:
        translateY(-20vh)
        translateX(100px);
        opacity:0;
    }
}


/* =========================================================
   HERO CONTENT
========================================================= */

.hero-content{

    padding-top:90px;

    max-width:850px;
}

.hero-badge{

    display:inline-flex;

    align-items:center;

    gap:8px;

    padding:10px 18px;

    border-radius:50px;

    background:
    rgba(0,217,255,.09);

    border:
    1px solid rgba(0,217,255,.35);

    color:#67e8f9;

    font-size:13px;

    font-weight:600;

    margin-bottom:25px;

    animation:fadeDown 1s ease;
}

.hero-badge i{

    animation:
    blink 1.5s infinite;
}

@keyframes blink{

    0%,100%{
        opacity:1;
    }

    50%{
        opacity:.25;
    }
}


.hero h1{

    font-family:'Poppins',sans-serif;

    font-size:
    clamp(48px,7vw,88px);

    line-height:1.02;

    font-weight:800;

    letter-spacing:-3px;

    margin-bottom:25px;

    animation:heroTitle 1.1s ease;
}

@keyframes heroTitle{

    from{
        opacity:0;
        transform:
        translateY(50px);
    }

    to{
        opacity:1;
        transform:
        translateY(0);
    }
}

.gradient-text{

    background:
    linear-gradient(
        90deg,
        #ffffff,
        #4de7ff,
        #a78bfa,
        #ffffff
    );

    background-size:300%;

    -webkit-background-clip:text;

    -webkit-text-fill-color:transparent;

    animation:
    gradientMove 5s infinite;
}

@keyframes gradientMove{

    0%{
        background-position:0%;
    }

    50%{
        background-position:100%;
    }

    100%{
        background-position:0%;
    }
}


.hero-subtitle{

    color:#cbd5e1;

    font-size:18px;

    line-height:1.8;

    max-width:720px;

    animation:
    fadeUp 1.3s ease;
}

@keyframes fadeUp{

    from{
        opacity:0;
        transform:
        translateY(35px);
    }

    to{
        opacity:1;
        transform:
        translateY(0);
    }
}


/* HERO BUTTONS */

.hero-buttons{

    display:flex;

    gap:15px;

    flex-wrap:wrap;

    margin-top:35px;
}

.btn-main{

    padding:14px 27px;

    border-radius:12px;

    border:none;

    color:white;

    font-weight:700;

    background:
    linear-gradient(
        135deg,
        #00c9ff,
        #7c3aed
    );

    box-shadow:
    0 10px 35px rgba(0,217,255,.22);

    transition:.35s;

    position:relative;

    overflow:hidden;
}

.btn-main:hover{

    color:white;

    transform:
    translateY(-5px);

    box-shadow:
    0 18px 45px rgba(0,217,255,.35);
}

.btn-outline-custom{

    padding:14px 27px;

    border-radius:12px;

    border:
    1px solid rgba(255,255,255,.22);

    color:white;

    font-weight:600;

    background:
    rgba(255,255,255,.04);

    backdrop-filter:blur(10px);

    transition:.35s;
}

.btn-outline-custom:hover{

    color:white;

    background:
    rgba(255,255,255,.1);

    transform:
    translateY(-5px);
}


/* =========================================================
   FLOATING INFO CARD
========================================================= */

.hero-card{

    position:absolute;

    right:8%;

    bottom:14%;

    width:250px;

    padding:22px;

    border-radius:20px;

    background:
    rgba(255,255,255,.08);

    border:
    1px solid rgba(255,255,255,.16);

    backdrop-filter:blur(20px);

    box-shadow:
    0 25px 80px rgba(0,0,0,.35);

    animation:
    floatingCard 5s infinite ease-in-out;
}

@keyframes floatingCard{

    0%,100%{
        transform:translateY(0);
    }

    50%{
        transform:translateY(-18px);
    }
}

.hero-card-icon{

    width:48px;
    height:48px;

    display:flex;

    align-items:center;
    justify-content:center;

    border-radius:15px;

    background:
    rgba(0,217,255,.13);

    color:#67e8f9;

    font-size:22px;

    margin-bottom:15px;
}

.hero-card h5{

    font-weight:700;
}

.hero-card p{

    color:#94a3b8;

    font-size:13px;

    margin:0;
}


/* =========================================================
   SCROLL INDICATOR
========================================================= */

.scroll-down{

    position:absolute;

    bottom:25px;

    left:50%;

    transform:translateX(-50%);

    color:#94a3b8;

    font-size:13px;

    z-index:10;

    text-align:center;
}

.mouse{

    width:24px;
    height:38px;

    border:
    2px solid #64748b;

    border-radius:20px;

    margin:8px auto;

    position:relative;
}

.mouse::before{

    content:"";

    width:4px;
    height:7px;

    background:#67e8f9;

    border-radius:5px;

    position:absolute;

    left:50%;
    top:6px;

    transform:translateX(-50%);

    animation:
    mouseScroll 1.6s infinite;
}

@keyframes mouseScroll{

    from{
        transform:
        translate(-50%,0);
        opacity:1;
    }

    to{
        transform:
        translate(-50%,15px);
        opacity:0;
    }
}


/* =========================================================
   SECTION COMMON
========================================================= */

.section{

    padding:110px 0;

    background:#07111f;
}

.section-alt{

    background:
    linear-gradient(
        180deg,
        #07111f,
        #091525
    );
}

.section-heading{

    text-align:center;

    max-width:750px;

    margin:
    0 auto 65px;
}

.section-tag{

    display:inline-block;

    padding:7px 15px;

    border-radius:50px;

    color:#67e8f9;

    background:
    rgba(0,217,255,.08);

    border:
    1px solid rgba(0,217,255,.22);

    font-size:12px;

    font-weight:700;

    letter-spacing:1px;

    text-transform:uppercase;

    margin-bottom:15px;
}

.section-heading h2{

    font-family:'Poppins',sans-serif;

    font-size:
    clamp(34px,5vw,52px);

    font-weight:800;

    margin-bottom:15px;
}

.section-heading p{

    color:#94a3b8;

    line-height:1.8;
}


/* =========================================================
   COMPANY INTRO
========================================================= */

.intro-image{

    position:relative;

    border-radius:28px;

    overflow:hidden;

    min-height:470px;

    box-shadow:
    0 30px 90px rgba(0,0,0,.35);
}

.intro-image img{

    width:100%;
    height:100%;

    min-height:470px;

    object-fit:cover;

    transition:
    transform 1s ease;
}

.intro-image:hover img{

    transform:scale(1.08);
}

.image-overlay{

    position:absolute;

    inset:0;

    background:
    linear-gradient(
        transparent 40%,
        rgba(3,9,20,.9)
    );
}

.floating-stat{

    position:absolute;

    bottom:25px;

    left:25px;

    padding:20px;

    border-radius:18px;

    background:
    rgba(5,15,30,.82);

    border:
    1px solid rgba(255,255,255,.14);

    backdrop-filter:blur(15px);
}

.floating-stat strong{

    display:block;

    font-size:30px;

    color:#67e8f9;
}

.floating-stat span{

    color:#cbd5e1;

    font-size:13px;
}


.intro-content{

    padding-left:30px;
}

.intro-content h3{

    font-size:35px;

    font-weight:800;

    margin-bottom:20px;
}

.intro-content h3 span{

    color:#67e8f9;
}

.intro-content p{

    color:#94a3b8;

    line-height:1.9;

    margin-bottom:18px;
}


/* =========================================================
   FEATURE CARDS
========================================================= */

.feature-card{

    height:100%;

    padding:30px;

    border-radius:22px;

    background:
    linear-gradient(
        145deg,
        rgba(255,255,255,.07),
        rgba(255,255,255,.025)
    );

    border:
    1px solid rgba(255,255,255,.08);

    position:relative;

    overflow:hidden;

    transition:
    .45s cubic-bezier(.2,.8,.2,1);
}

.feature-card::before{

    content:"";

    position:absolute;

    width:150px;
    height:150px;

    border-radius:50%;

    background:
    rgba(0,217,255,.12);

    filter:blur(50px);

    top:-80px;
    right:-80px;
}

.feature-card:hover{

    transform:
    translateY(-12px);

    border-color:
    rgba(0,217,255,.3);

    box-shadow:
    0 25px 60px rgba(0,0,0,.25);
}

.feature-icon{

    width:58px;
    height:58px;

    display:flex;

    justify-content:center;
    align-items:center;

    border-radius:17px;

    background:
    linear-gradient(
        135deg,
        rgba(0,217,255,.17),
        rgba(124,58,237,.18)
    );

    color:#67e8f9;

    font-size:25px;

    margin-bottom:23px;

    transition:.4s;
}

.feature-card:hover .feature-icon{

    transform:
    rotateY(180deg);
}

.feature-card h5{

    font-size:19px;

    font-weight:700;

    margin-bottom:12px;
}

.feature-card p{

    color:#94a3b8;

    font-size:14px;

    line-height:1.8;

    margin:0;
}


/* =========================================================
   MISSION VISION
========================================================= */

.mv-card{

    min-height:280px;

    padding:38px;

    border-radius:26px;

    position:relative;

    overflow:hidden;

    border:
    1px solid rgba(255,255,255,.09);

    background:
    rgba(255,255,255,.04);

    transition:.4s;
}

.mv-card:hover{

    transform:
    translateY(-10px);

    border-color:
    rgba(0,217,255,.28);
}

.mv-number{

    position:absolute;

    right:25px;
    top:10px;

    font-size:100px;

    font-weight:900;

    color:
    rgba(255,255,255,.035);
}

.mv-icon{

    font-size:38px;

    color:#67e8f9;

    margin-bottom:20px;
}

.mv-card h3{

    font-size:27px;

    font-weight:800;
}

.mv-card p{

    color:#94a3b8;

    line-height:1.9;
}


/* =========================================================
   COMPANY VALUES
========================================================= */

.value-card{

    text-align:center;

    padding:32px 20px;

    border-radius:20px;

    background:
    rgba(255,255,255,.035);

    border:
    1px solid rgba(255,255,255,.07);

    transition:.35s;

    height:100%;
}

.value-card:hover{

    background:
    rgba(0,217,255,.06);

    transform:
    translateY(-8px);
}

.value-icon{

    font-size:38px;

    margin-bottom:17px;

    color:#67e8f9;
}

.value-card h5{

    font-weight:700;

    margin-bottom:10px;
}

.value-card p{

    color:#94a3b8;

    font-size:13px;

    line-height:1.7;
}


/* =========================================================
   STATISTICS
========================================================= */

.stats-section{

    padding:85px 0;

    background:

    linear-gradient(
        120deg,
        #071827,
        #0d1230,
        #071827
    );

    border-top:
    1px solid rgba(255,255,255,.05);

    border-bottom:
    1px solid rgba(255,255,255,.05);
}

.stat-box{

    text-align:center;

    padding:20px;

    position:relative;
}

.stat-box:not(:last-child)::after{

    content:"";

    position:absolute;

    right:0;

    top:20%;

    height:60%;

    width:1px;

    background:
    rgba(255,255,255,.1);
}

.stat-icon{

    font-size:27px;

    color:#67e8f9;

    margin-bottom:10px;
}

.counter{

    font-size:47px;

    font-weight:800;

    font-family:'Poppins',sans-serif;
}

.counter-symbol{

    color:#67e8f9;

    font-size:35px;

    font-weight:800;
}

.stat-box p{

    color:#94a3b8;

    margin:0;

    font-size:14px;
}


/* =========================================================
   JOURNEY TIMELINE
========================================================= */

.timeline{

    position:relative;

    max-width:950px;

    margin:auto;
}

.timeline::before{

    content:"";

    position:absolute;

    left:50%;

    top:0;

    bottom:0;

    width:2px;

    background:
    linear-gradient(
        #00d9ff,
        #7c3aed,
        transparent
    );

    transform:
    translateX(-50%);
}

.timeline-item{

    width:50%;

    padding:20px 45px;

    position:relative;
}

.timeline-item:nth-child(odd){

    left:0;

    text-align:right;
}

.timeline-item:nth-child(even){

    left:50%;
}

.timeline-dot{

    position:absolute;

    width:18px;
    height:18px;

    border-radius:50%;

    background:#07111f;

    border:
    4px solid #00d9ff;

    top:28px;

    box-shadow:
    0 0 20px rgba(0,217,255,.6);
}

.timeline-item:nth-child(odd)
.timeline-dot{

    right:-9px;
}

.timeline-item:nth-child(even)
.timeline-dot{

    left:-9px;
}

.timeline-content{

    padding:25px;

    border-radius:18px;

    background:
    rgba(255,255,255,.045);

    border:
    1px solid rgba(255,255,255,.08);

    transition:.35s;
}

.timeline-content:hover{

    transform:
    scale(1.03);

    border-color:
    rgba(0,217,255,.25);
}

.timeline-year{

    color:#67e8f9;

    font-weight:800;

    font-size:13px;

    letter-spacing:1px;
}

.timeline-content h5{

    margin:8px 0;

    font-weight:700;
}

.timeline-content p{

    color:#94a3b8;

    font-size:13px;

    line-height:1.7;

    margin:0;
}


/* =========================================================
   PLATFORM SHOWCASE
========================================================= */

.showcase{

    background:

    linear-gradient(
        120deg,
        #07111f,
        #101432
    );
}

.showcase-image{

    border-radius:28px;

    overflow:hidden;

    position:relative;

    box-shadow:
    0 30px 80px rgba(0,0,0,.4);
}

.showcase-image img{

    width:100%;

    height:480px;

    object-fit:cover;

    transition:1s;
}

.showcase-image:hover img{

    transform:scale(1.06);
}

.showcase-overlay{

    position:absolute;

    inset:0;

    background:
    linear-gradient(
        transparent 35%,
        rgba(3,9,20,.95)
    );

    display:flex;

    align-items:flex-end;

    padding:35px;
}

.showcase-overlay h3{

    font-size:30px;

    font-weight:800;
}

.showcase-overlay p{

    color:#cbd5e1;

    max-width:500px;

    margin:0;
}


/* =========================================================
   TECH STACK
========================================================= */

.tech-card{

    padding:25px;

    border-radius:18px;

    background:
    rgba(255,255,255,.04);

    border:
    1px solid rgba(255,255,255,.07);

    text-align:center;

    transition:.35s;

    height:100%;
}

.tech-card:hover{

    transform:
    translateY(-8px);

    background:
    rgba(0,217,255,.07);

    border-color:
    rgba(0,217,255,.25);
}

.tech-card i{

    font-size:37px;

    color:#67e8f9;

    margin-bottom:12px;
}

.tech-card h6{

    font-weight:700;

    margin:0;
}

.tech-card small{

    color:#64748b;
}


/* =========================================================
   PROGRESS SECTION
========================================================= */

.progress-wrapper{

    margin-bottom:25px;
}

.progress-label{

    display:flex;

    justify-content:space-between;

    margin-bottom:8px;

    font-size:14px;

    font-weight:600;
}

.progress{

    height:8px;

    background:
    rgba(255,255,255,.08);

    border-radius:20px;

    overflow:visible;
}

.progress-bar{

    border-radius:20px;

    background:
    linear-gradient(
        90deg,
        #00d9ff,
        #7c3aed
    );

    position:relative;

    animation:
    progressAnimation 2s ease;
}

@keyframes progressAnimation{

    from{
        width:0 !important;
    }
}


/* =========================================================
   EMPLOYEE SECTION
========================================================= */

.employee-section{

    min-height:550px;

    display:flex;

    align-items:center;

    background:

    linear-gradient(
        90deg,
        rgba(3,9,20,.98),
        rgba(3,9,20,.72)
    ),

    url("https://images.unsplash.com/photo-1521737711867-e3b97375f902?auto=format&fit=crop&w=2200&q=90");

    background-size:cover;

    background-position:center;

    background-attachment:fixed;
}

.employee-content{

    max-width:700px;
}

.employee-content h2{

    font-family:'Poppins';

    font-size:
    clamp(35px,5vw,58px);

    font-weight:800;

    margin-bottom:20px;
}

.employee-content p{

    color:#cbd5e1;

    line-height:1.9;
}


/* =========================================================
   TESTIMONIAL / QUOTE
========================================================= */

.quote-card{

    max-width:850px;

    margin:auto;

    padding:55px;

    border-radius:30px;

    text-align:center;

    background:

    linear-gradient(
        135deg,
        rgba(0,217,255,.07),
        rgba(124,58,237,.07)
    );

    border:
    1px solid rgba(255,255,255,.09);

    position:relative;

    overflow:hidden;
}

.quote-icon{

    font-size:50px;

    color:#67e8f9;

    opacity:.7;
}

.quote-card p{

    font-family:'Poppins';

    font-size:24px;

    line-height:1.7;

    font-weight:500;

    color:#e2e8f0;
}


/* =========================================================
   CONTACT CARD
========================================================= */

.contact-card{

    padding:35px;

    border-radius:24px;

    background:
    rgba(255,255,255,.045);

    border:
    1px solid rgba(255,255,255,.08);

    height:100%;

    transition:.35s;
}

.contact-card:hover{

    transform:
    translateY(-8px);

    border-color:
    rgba(0,217,255,.25);
}

.contact-item{

    display:flex;

    gap:15px;

    align-items:flex-start;

    margin-bottom:25px;
}

.contact-icon{

    min-width:45px;
    height:45px;

    display:flex;

    align-items:center;
    justify-content:center;

    border-radius:13px;

    background:
    rgba(0,217,255,.1);

    color:#67e8f9;
}

.contact-item h6{

    margin-bottom:5px;

    font-weight:700;
}

.contact-item p{

    color:#94a3b8;

    font-size:13px;

    margin:0;
}


/* =========================================================
   FOOTER
========================================================= */

.footer{

    padding:60px 0 25px;

    background:#040a13;

    border-top:
    1px solid rgba(255,255,255,.07);
}

.footer-logo{

    font-size:25px;

    font-weight:800;

    margin-bottom:15px;
}

.footer p{

    color:#64748b;

    line-height:1.8;

    font-size:14px;
}

.footer-links a{

    display:block;

    color:#64748b;

    margin-bottom:10px;

    transition:.3s;
}

.footer-links a:hover{

    color:#67e8f9;

    transform:
    translateX(5px);
}

.social{

    width:40px;
    height:40px;

    display:inline-flex;

    align-items:center;
    justify-content:center;

    border-radius:12px;

    background:
    rgba(255,255,255,.05);

    color:#cbd5e1;

    margin-right:7px;

    transition:.3s;
}

.social:hover{

    background:
    linear-gradient(
        135deg,
        #00d9ff,
        #7c3aed
    );

    color:white;

    transform:
    translateY(-5px);
}

.footer-bottom{

    border-top:
    1px solid rgba(255,255,255,.06);

    margin-top:40px;

    padding-top:20px;

    text-align:center;

    color:#475569;

    font-size:13px;
}


/* =========================================================
   AI FLOATING BUTTON
========================================================= */

.ai-button{

    position:fixed;

    right:25px;

    bottom:25px;

    width:62px;
    height:62px;

    border-radius:50%;

    display:flex;

    align-items:center;
    justify-content:center;

    background:
    linear-gradient(
        135deg,
        #00d9ff,
        #7c3aed
    );

    color:white;

    font-size:25px;

    z-index:9998;

    box-shadow:
    0 10px 35px rgba(0,217,255,.3);

    animation:
    aiPulse 2.5s infinite;

    cursor:pointer;
}

@keyframes aiPulse{

    0%{
        box-shadow:
        0 0 0 0
        rgba(0,217,255,.45);
    }

    70%{
        box-shadow:
        0 0 0 18px
        rgba(0,217,255,0);
    }

    100%{
        box-shadow:
        0 0 0 0
        rgba(0,217,255,0);
    }
}

.ai-tooltip{

    position:fixed;

    right:100px;

    bottom:36px;

    background:#111827;

    border:
    1px solid rgba(255,255,255,.1);

    color:#e2e8f0;

    padding:10px 15px;

    border-radius:10px;

    font-size:12px;

    opacity:0;

    transform:
    translateX(10px);

    pointer-events:none;

    transition:.3s;

    z-index:9997;
}

.ai-button:hover + .ai-tooltip{

    opacity:1;

    transform:
    translateX(0);
}


/* =========================================================
   REVEAL ANIMATION
========================================================= */

.reveal{

    opacity:0;

    transform:
    translateY(50px);

    transition:
    1s cubic-bezier(.2,.8,.2,1);
}

.reveal.active{

    opacity:1;

    transform:
    translateY(0);
}


/* =========================================================
   FLOATING SHAPES
========================================================= */

.shape{

    position:absolute;

    border-radius:50%;

    pointer-events:none;

    opacity:.25;

    filter:blur(1px);
}

.shape-one{

    width:120px;
    height:120px;

    border:
    1px solid #00d9ff;

    top:15%;

    left:4%;

    animation:
    shapeMove 8s infinite;
}

.shape-two{

    width:70px;
    height:70px;

    border:
    1px solid #a78bfa;

    right:5%;

    top:45%;

    animation:
    shapeMove 6s infinite reverse;
}

@keyframes shapeMove{

    0%,100%{
        transform:
        translate(0,0)
        rotate(0);
    }

    50%{
        transform:
        translate(30px,-40px)
        rotate(180deg);
    }
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:991px){

    .hero-card{
        display:none;
    }

    .navbar{
        padding:10px 0;
    }

    .nav-link{
        padding:10px 0;
    }

    .intro-content{
        padding-left:0;

        margin-top:35px;
    }

    .timeline::before{
        left:15px;
    }

    .timeline-item{

        width:100%;

        left:0 !important;

        text-align:left !important;

        padding-left:50px;

        padding-right:0;
    }

    .timeline-item:nth-child(odd)
    .timeline-dot,
    .timeline-item:nth-child(even)
    .timeline-dot{

        left:6px;

        right:auto;
    }

    .stat-box:not(:last-child)::after{
        display:none;
    }

}

@media(max-width:576px){

    .hero h1{

        font-size:45px;

        letter-spacing:-2px;
    }

    .hero-subtitle{

        font-size:15px;
    }

    .section{

        padding:80px 0;
    }

    .quote-card{

        padding:30px 20px;
    }

    .quote-card p{

        font-size:18px;
    }

    .showcase-image img{

        height:380px;
    }

}

</style>

</head>


<body>


<!-- =========================================================
     NAVBAR
========================================================= -->


<!-- =========================================================
     HERO
========================================================= -->

<section class="hero" id="home">


<div class="particles">

<span class="particle"
style="left:5%;animation-duration:12s;"></span>

<span class="particle"
style="left:15%;animation-duration:17s;"></span>

<span class="particle"
style="left:25%;animation-duration:14s;"></span>

<span class="particle"
style="left:38%;animation-duration:19s;"></span>

<span class="particle"
style="left:50%;animation-duration:13s;"></span>

<span class="particle"
style="left:63%;animation-duration:16s;"></span>

<span class="particle"
style="left:74%;animation-duration:11s;"></span>

<span class="particle"
style="left:85%;animation-duration:18s;"></span>

<span class="particle"
style="left:94%;animation-duration:15s;"></span>

</div>


<div class="shape shape-one"></div>

<div class="shape shape-two"></div>


<div class="container">

<div class="hero-content">


<div class="hero-badge">

<i class="bi bi-circle-fill"></i>

ABOUT WORKSPHERE

</div>


<h1>

Building a
<span class="gradient-text">
Smarter Workplace
</span>

for the Future.

</h1>


<p class="hero-subtitle">

WorkSphere is a modern employee management ecosystem
designed to connect people, simplify workplace operations,
and transform everyday employee experiences through
technology.

</p>


<div class="hero-buttons">

<a href="#company"
class="btn-main">

Explore WorkSphere

<i class="bi bi-arrow-down ms-2"></i>

</a>


<a href="#contact"
class="btn-outline-custom">

Contact Us

<i class="bi bi-arrow-right ms-2"></i>

</a>

</div>


</div>

</div>


<div class="hero-card">

<div class="hero-card-icon">

<i class="bi bi-stars"></i>

</div>

<h5>

Smart Workplace

</h5>

<p>

Technology, people and productivity
working together in one ecosystem.

</p>

</div>


<div class="scroll-down">

Scroll to explore

<div class="mouse"></div>

</div>


</section>



<!-- =========================================================
     COMPANY INTRODUCTION
========================================================= -->

<section
class="section"
id="company">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">

Who We Are

</span>

<h2>

More Than An
<span class="gradient-text">
Employee Platform
</span>

</h2>

<p>

WorkSphere brings employees, managers and
organizational processes together through
one connected digital workplace.

</p>

</div>


<div class="row align-items-center g-5">


<div class="col-lg-6 reveal">

<div class="intro-image">

<img
src="https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=1400&q=90"
alt="Modern WorkSphere Office">

<div class="image-overlay"></div>

<div class="floating-stat">

<strong>24/7</strong>

<span>
Connected Digital Workplace
</span>

</div>

</div>

</div>


<div class="col-lg-6 reveal">

<div class="intro-content">

<h3>

Welcome to
<span>WorkSphere</span>

</h3>


<p>

WorkSphere is envisioned as a smart digital
workplace where employees can manage their
professional activities from a single platform.

</p>


<p>

From attendance and leave requests to projects,
performance, communication and payment information,
WorkSphere creates a connected employee experience.

</p>


<p>

Our goal is to reduce administrative complexity
while giving employees and managers a clear,
organized and technology-driven workspace.

</p>


<a
href="#platform"
class="btn-main d-inline-block mt-3">

Discover Our Platform

<i class="bi bi-arrow-right ms-2"></i>

</a>

</div>

</div>

</div>

</div>

</section>



<!-- =========================================================
     MISSION / VISION
========================================================= -->

<section class="section section-alt">

<div class="container">

<div class="section-heading reveal">

<span class="section-tag">
Our Direction
</span>

<h2>

Mission &
<span class="gradient-text">
Vision
</span>

</h2>

<p>

The principles that guide the WorkSphere
digital workplace.

</p>

</div>


<div class="row g-4">


<div class="col-lg-6 reveal">

<div class="mv-card">

<div class="mv-number">
01
</div>

<div class="mv-icon">
<i class="bi bi-bullseye"></i>
</div>

<h3>
Our Mission
</h3>

<p>

To simplify employee management through
technology while creating an environment where
people can communicate, collaborate and
perform their responsibilities efficiently.

</p>

</div>

</div>


<div class="col-lg-6 reveal">

<div class="mv-card">

<div class="mv-number">
02
</div>

<div class="mv-icon">
<i class="bi bi-eye"></i>
</div>

<h3>
Our Vision
</h3>

<p>

To build a smarter, connected and employee-centric
workplace where technology supports people,
improves productivity and enables organizations
to operate more effectively.

</p>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     STATISTICS
========================================================= -->

<section class="stats-section">

<div class="container">

<div class="row g-4">


<div class="col-6 col-lg-3">

<div class="stat-box reveal">

<div class="stat-icon">
<i class="bi bi-people"></i>
</div>

<div>

<span
class="counter"
data-target="500">
0
</span>

<span class="counter-symbol">+</span>

</div>

<p>
Employees
</p>

</div>

</div>


<div class="col-6 col-lg-3">

<div class="stat-box reveal">

<div class="stat-icon">
<i class="bi bi-diagram-3"></i>
</div>

<div>

<span
class="counter"
data-target="25">
0
</span>

<span class="counter-symbol">+</span>

</div>

<p>
Departments
</p>

</div>

</div>


<div class="col-6 col-lg-3">

<div class="stat-box reveal">

<div class="stat-icon">
<i class="bi bi-kanban"></i>
</div>

<div>

<span
class="counter"
data-target="120">
0
</span>

<span class="counter-symbol">+</span>

</div>

<p>
Projects
</p>

</div>

</div>


<div class="col-6 col-lg-3">

<div class="stat-box reveal">

<div class="stat-icon">
<i class="bi bi-graph-up-arrow"></i>
</div>

<div>

<span
class="counter"
data-target="98">
0
</span>

<span class="counter-symbol">%</span>

</div>

<p>
Digital Efficiency
</p>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     PLATFORM FEATURES
========================================================= -->

<section
class="section"
id="platform">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">
Our Ecosystem
</span>

<h2>

Everything Employees Need,
<span class="gradient-text">
In One Place
</span>

</h2>

<p>

A connected platform designed to simplify
everyday workplace activities.

</p>

</div>


<div class="row g-4">


<!-- CARD -->

<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-person-badge"></i>
</div>

<h5>
Employee Management
</h5>

<p>

Centralized employee profiles and professional
information for organized workforce management.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-clock-history"></i>
</div>

<h5>
Attendance Management
</h5>

<p>

Track attendance and working activity through
a simple and organized digital interface.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-calendar2-check"></i>
</div>

<h5>
Leave Management
</h5>

<p>

Employees can submit leave requests while
managers can review and manage approvals.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-kanban"></i>
</div>

<h5>
Project Management
</h5>

<p>

Organize project assignments, reports and
employee participation from one place.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-bar-chart-line"></i>
</div>

<h5>
Performance Tracking
</h5>

<p>

Create a structured view of employee performance
and professional development.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-wallet2"></i>
</div>

<h5>
Payroll & Payment
</h5>

<p>

Provide employees with convenient access to
salary and payment-related information.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-chat-left-dots"></i>
</div>

<h5>
Smart Communication
</h5>

<p>

Keep employees and managers connected through
a centralized messaging experience.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-robot"></i>
</div>

<h5>
AI HR Assistant
</h5>

<p>

An intelligent assistant concept designed to help
employees find HR information quickly.

</p>

</div>

</div>


<div class="col-md-6 col-lg-4 reveal">

<div class="feature-card">

<div class="feature-icon">
<i class="bi bi-file-earmark-bar-graph"></i>
</div>

<h5>
Reports & Analytics
</h5>

<p>

Transform workplace information into meaningful
reports and management insights.

</p>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     COMPANY VALUES
========================================================= -->

<section class="section section-alt">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">
Our Values
</span>

<h2>

What Drives
<span class="gradient-text">
Us
</span>

</h2>

<p>

The principles behind our workplace culture.

</p>

</div>


<div class="row g-4">


<div class="col-6 col-lg-4 reveal">

<div class="value-card">

<div class="value-icon">
<i class="bi bi-lightbulb"></i>
</div>

<h5>Innovation</h5>

<p>
We continuously explore better ways to solve
workplace challenges.
</p>

</div>

</div>


<div class="col-6 col-lg-4 reveal">

<div class="value-card">

<div class="value-icon">
<i class="bi bi-shield-check"></i>
</div>

<h5>Integrity</h5>

<p>
Trust, transparency and responsible actions
are important to our culture.
</p>

</div>

</div>


<div class="col-6 col-lg-4 reveal">

<div class="value-card">

<div class="value-icon">
<i class="bi bi-people"></i>
</div>

<h5>Teamwork</h5>

<p>
Great results come from people working
together toward shared goals.
</p>

</div>

</div>


<div class="col-6 col-lg-4 reveal">

<div class="value-card">

<div class="value-icon">
<i class="bi bi-stars"></i>
</div>

<h5>Excellence</h5>

<p>
We aim to continuously improve the quality
of our work and services.
</p>

</div>

</div>


<div class="col-6 col-lg-4 reveal">

<div class="value-card">

<div class="value-icon">
<i class="bi bi-book"></i>
</div>

<h5>Learning</h5>

<p>
Continuous learning helps employees and
organizations grow together.
</p>

</div>

</div>


<div class="col-6 col-lg-4 reveal">

<div class="value-card">

<div class="value-icon">
<i class="bi bi-heart"></i>
</div>

<h5>People First</h5>

<p>
Our workplace experience is designed around
the people who make the organization successful.
</p>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     JOURNEY
========================================================= -->

<section class="section">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">
Our Journey
</span>

<h2>

From Idea to
<span class="gradient-text">
Smart Workplace
</span>

</h2>

<p>

A simple concept evolving into a connected
employee management ecosystem.

</p>

</div>


<div class="timeline">


<div class="timeline-item reveal">

<div class="timeline-dot"></div>

<div class="timeline-content">

<div class="timeline-year">
2023
</div>

<h5>
The Idea
</h5>

<p>
The WorkSphere concept began with a simple goal:
make employee management easier and more organized.
</p>

</div>

</div>


<div class="timeline-item reveal">

<div class="timeline-dot"></div>

<div class="timeline-content">

<div class="timeline-year">
2024
</div>

<h5>
Platform Development
</h5>

<p>
Core employee management, attendance, leave and
project management modules were introduced.
</p>

</div>

</div>


<div class="timeline-item reveal">

<div class="timeline-dot"></div>

<div class="timeline-content">

<div class="timeline-year">
2025
</div>

<h5>
Connected Workplace
</h5>

<p>
Communication, payroll, performance and reporting
capabilities expanded the platform.
</p>

</div>

</div>


<div class="timeline-item reveal">

<div class="timeline-dot"></div>

<div class="timeline-content">

<div class="timeline-year">
2026
</div>

<h5>
Smart Workplace Vision
</h5>

<p>
AI-assisted HR features and intelligent workplace
analytics become part of the future roadmap.
</p>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     SHOWCASE
========================================================= -->

<section class="section showcase">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">
Workplace Experience
</span>

<h2>

Designed for
<span class="gradient-text">
Modern Teams
</span>

</h2>

<p>

A workplace should feel connected, simple
and inspiring.

</p>

</div>


<div
id="companyCarousel"
class="carousel slide carousel-fade"
data-bs-ride="carousel"
data-bs-interval="4000">


<div class="carousel-inner">


<div class="carousel-item active">

<div class="showcase-image">

<img
src="https://images.unsplash.com/photo-1524758631624-e2822e304c36?auto=format&fit=crop&w=1800&q=90"
alt="Modern Office">

<div class="showcase-overlay">

<div>

<h3>
A Better Place to Work
</h3>

<p>
Create a workplace where employees can
focus on meaningful work.
</p>

</div>

</div>

</div>

</div>


<div class="carousel-item">

<div class="showcase-image">

<img
src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?auto=format&fit=crop&w=1800&q=90"
alt="Team Collaboration">

<div class="showcase-overlay">

<div>

<h3>
Connected Collaboration
</h3>

<p>
Bring teams together and encourage
transparent communication.
</p>

</div>

</div>

</div>

</div>


<div class="carousel-item">

<div class="showcase-image">

<img
src="https://images.unsplash.com/photo-1552664730-d307ca884978?auto=format&fit=crop&w=1800&q=90"
alt="Business Team">

<div class="showcase-overlay">

<div>

<h3>
People & Technology
</h3>

<p>
Technology should empower people,
not complicate their work.
</p>

</div>

</div>

</div>

</div>


</div>


<button
class="carousel-control-prev"
type="button"
data-bs-target="#companyCarousel"
data-bs-slide="prev">

<span
class="carousel-control-prev-icon">
</span>

</button>


<button
class="carousel-control-next"
type="button"
data-bs-target="#companyCarousel"
data-bs-slide="next">

<span
class="carousel-control-next-icon">
</span>

</button>


</div>

</div>

</section>



<!-- =========================================================
     TECHNOLOGY STACK
========================================================= -->

<section class="section">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">
Technology
</span>

<h2>

Powered by
<span class="gradient-text">
Modern Technologies
</span>

</h2>

<p>

WorkSphere is designed around a Java-based
enterprise web application architecture.

</p>

</div>


<div class="row g-4">


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-cup-hot"></i>

<h6>Java</h6>

<small>Backend</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-diagram-3"></i>

<h6>Spring MVC</h6>

<small>Framework</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-database"></i>

<h6>Hibernate</h6>

<small>ORM</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-database-fill"></i>

<h6>PostgreSQL</h6>

<small>Database</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-filetype-html"></i>

<h6>HTML5</h6>

<small>Frontend</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-filetype-css"></i>

<h6>CSS3</h6>

<small>Styling</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-bootstrap"></i>

<h6>Bootstrap</h6>

<small>UI Framework</small>

</div>

</div>


<div class="col-6 col-md-4 col-lg-3 reveal">

<div class="tech-card">

<i class="bi bi-filetype-js"></i>

<h6>JavaScript</h6>

<small>Interaction</small>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     DIGITAL CAPABILITIES
========================================================= -->

<section class="section section-alt">

<div class="container">


<div class="row align-items-center g-5">


<div class="col-lg-6 reveal">

<div class="section-heading text-start mb-4">

<span class="section-tag">
Our Capabilities
</span>

<h2>

Creating a More
<span class="gradient-text">
Digital Workplace
</span>

</h2>

<p>

WorkSphere focuses on simplifying workplace
processes through connected digital experiences.

</p>

</div>


<div class="progress-wrapper">

<div class="progress-label">

<span>
Employee Experience
</span>

<span>
95%
</span>

</div>

<div class="progress">

<div
class="progress-bar"
style="width:95%">
</div>

</div>

</div>


<div class="progress-wrapper">

<div class="progress-label">

<span>
Process Automation
</span>

<span>
90%
</span>

</div>

<div class="progress">

<div
class="progress-bar"
style="width:90%">
</div>

</div>

</div>


<div class="progress-wrapper">

<div class="progress-label">

<span>
Workplace Connectivity
</span>

<span>
94%
</span>

</div>

<div class="progress">

<div
class="progress-bar"
style="width:94%">
</div>

</div>

</div>


<div class="progress-wrapper">

<div class="progress-label">

<span>
Data Visibility
</span>

<span>
88%
</span>

</div>

<div class="progress">

<div
class="progress-bar"
style="width:88%">
</div>

</div>

</div>


</div>


<div class="col-lg-6 reveal">

<div class="intro-image">

<img
src="https://images.unsplash.com/photo-1553877522-43269d4ea984?auto=format&fit=crop&w=1400&q=90"
alt="Technology Workplace">

<div class="image-overlay"></div>

</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     EMPLOYEE EXPERIENCE
========================================================= -->

<section class="employee-section">

<div class="container">

<div class="employee-content reveal">

<span class="section-tag">

Employee First

</span>

<h2>

Your Work.
<br>

<span class="gradient-text">
One Connected Experience.
</span>

</h2>

<p>

WorkSphere gives employees a centralized digital
workspace where they can access important workplace
services without moving between multiple systems.

</p>


<div class="hero-buttons">

<a
href="#platform"
class="btn-main">

Explore Features

<i class="bi bi-arrow-right ms-2"></i>

</a>

</div>

</div>

</div>

</section>



<!-- =========================================================
     QUOTE
========================================================= -->

<section class="section">

<div class="container">

<div class="quote-card reveal">

<div class="quote-icon">

<i class="bi bi-quote"></i>

</div>

<p>

“Technology becomes powerful when it makes
people's work simpler, smarter and more connected.”

</p>

<span class="text-secondary">

— WorkSphere Philosophy

</span>

</div>

</div>

</section>



<!-- =========================================================
     CONTACT
========================================================= -->

<section
class="section section-alt"
id="contact">

<div class="container">


<div class="section-heading reveal">

<span class="section-tag">
Connect With Us
</span>

<h2>

Let's Build the
<span class="gradient-text">
Future Together
</span>

</h2>

<p>

Have a question about WorkSphere?
Connect with our team.

</p>

</div>


<div class="row g-4">


<div class="col-lg-6 reveal">

<div class="contact-card">


<div class="contact-item">

<div class="contact-icon">

<i class="bi bi-geo-alt"></i>

</div>

<div>

<h6>
Office
</h6>

<p>
WorkSphere Technologies<br>
Pune, Maharashtra, India
</p>

</div>

</div>


<div class="contact-item">

<div class="contact-icon">

<i class="bi bi-envelope"></i>

</div>

<div>

<h6>
Email
</h6>

<p>
workspherepune@gmail.com
</p>

</div>

</div>


<div class="contact-item">

<div class="contact-icon">

<i class="bi bi-telephone"></i>

</div>

<div>

<h6>
Phone
</h6>

<p>
+91 9657982006
</p>

</div>

</div>


<div class="contact-item">

<div class="contact-icon">

<i class="bi bi-clock"></i>

</div>

<div>

<h6>
Working Hours
</h6>

<p>
Monday – Friday<br>
9:00 AM – 6:00 PM
</p>

</div>

</div>


</div>

</div>


<div class="col-lg-6 reveal">

<div class="contact-card">


<h4 class="fw-bold mb-4">

Send Us a Message

</h4>


<form
onsubmit="sendMessage(event)">


<div class="mb-3">

<label class="form-label text-secondary">

Your Name

</label>

<input
type="text"
class="form-control bg-dark text-white border-secondary"
placeholder="Enter your name"
required>

</div>


<div class="mb-3">

<label class="form-label text-secondary">

Email Address

</label>

<input
type="email"
class="form-control bg-dark text-white border-secondary"
placeholder="Enter your email"
required>

</div>


<div class="mb-3">

<label class="form-label text-secondary">

Message

</label>

<textarea
class="form-control bg-dark text-white border-secondary"
rows="4"
placeholder="Write your message..."
required></textarea>

</div>


<button
class="btn-main w-100"
type="submit">

<i class="bi bi-send me-2"></i>

Send Message

</button>


</form>


</div>

</div>


</div>

</div>

</section>



<!-- =========================================================
     FOOTER
========================================================= -->

<footer class="footer">

<div class="container">


<div class="row g-5">


<div class="col-lg-5">

<div class="footer-logo">

<i class="bi bi-buildings text-info me-2"></i>

WorkSphere

</div>

<p>

A modern employee management ecosystem designed
to connect people, simplify processes and create
a smarter workplace experience.

</p>

<div class="mt-4">

    <!-- LinkedIn -->
    <a href="https://www.linkedin.com/in/ANIKET SAWANT/"
       class="social"
       target="_blank"
       title="LinkedIn">
        <i class="bi bi-linkedin"></i>
    </a>

    <!-- GitHub -->
    <a href="https://github.com/YOUR-GITHUB-USERNAME"
       class="social"
       target="_blank"
       title="GitHub">
        <i class="bi bi-github"></i>
    </a>

    <!-- Instagram -->
    <a href="https://www.instagram.com/anikets._07/"
       class="social"
       target="_blank"
       title="Instagram">
        <i class="bi bi-instagram"></i>
    </a>

</div>

</div>


<div class="col-6 col-lg-2">

<h6 class="fw-bold mb-3">
Platform
</h6>

<div class="footer-links">

<a href="#platform">
Employee
</a>

<a href="#platform">
Attendance
</a>

<a href="#platform">
Leave
</a>

<a href="#platform">
Projects
</a>

<a href="#platform">
Payroll
</a>

</div>

</div>


<div class="col-6 col-lg-2">

<h6 class="fw-bold mb-3">
Company
</h6>

<div class="footer-links">

<a href="#company">
About
</a>

<a href="#company">
Mission
</a>

<a href="#company">
Vision
</a>

<a href="#contact">
Contact
</a>

</div>

</div>


<div class="col-lg-3">

<h6 class="fw-bold mb-3">
WorkSphere
</h6>

<p>

Empowering people.
<br>

Connecting work.
<br>

Building the future.

</p>

</div>


</div>


<div class="footer-bottom">

© 2026 WorkSphere Technologies.
All Rights Reserved.

</div>

</div>

</footer>



<!-- =========================================================
     AI BUTTON
========================================================= -->

<div
class="ai-button"
onclick="openAI()">

<i class="bi bi-robot"></i>

</div>

<div class="ai-tooltip">

Ask WorkSphere AI

</div>



<!-- =========================================================
     BOOTSTRAP JS
========================================================= -->

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>



<script>

/* =========================================================
   NAVBAR SCROLL EFFECT
========================================================= */

window.addEventListener("scroll",function(){

    const navbar =
    document.querySelector(".navbar");

    if(window.scrollY > 50){

        navbar.classList.add("scrolled");

    }else{

        navbar.classList.remove("scrolled");

    }

});


/* =========================================================
   REVEAL ON SCROLL
========================================================= */

const reveals =
document.querySelectorAll(".reveal");


function revealElements(){

    reveals.forEach(function(element){

        const windowHeight =
        window.innerHeight;

        const elementTop =
        element.getBoundingClientRect().top;

        if(elementTop <
        windowHeight - 80){

            element.classList.add("active");

        }

    });

}


window.addEventListener(
"scroll",
revealElements
);

revealElements();



/* =========================================================
   COUNTER ANIMATION
========================================================= */

const counters =
document.querySelectorAll(".counter");

let counterStarted = false;


function startCounters(){

    if(counterStarted)
        return;

    const stats =
    document.querySelector(
    ".stats-section"
    );

    if(!stats)
        return;

    const position =
    stats.getBoundingClientRect().top;

    if(position <
    window.innerHeight - 100){

        counterStarted = true;

        counters.forEach(function(counter){

            const target =
            parseInt(
            counter.getAttribute(
            "data-target"
            )
            );

            let current = 0;

            const increment =
            Math.ceil(target / 80);

            const timer =
            setInterval(function(){

                current += increment;

                if(current >= target){

                    current = target;

                    clearInterval(timer);

                }

                counter.innerText =
                current;

            },25);

        });

    }

}


window.addEventListener(
"scroll",
startCounters
);

startCounters();



/* =========================================================
   CONTACT FORM
========================================================= */

function sendMessage(event){

    event.preventDefault();

    alert(
    "Thank you for contacting WorkSphere! " +
    "Your message has been received."
    );

    event.target.reset();

}


/* =========================================================
   AI BUTTON
========================================================= */

function openAI(){

    alert(
    "WorkSphere AI Assistant\n\n" +
    "Your AI HR Assistant can help you " +
    "with workplace-related questions."
    );

}


/* =========================================================
   MOVING TITLE EFFECT
========================================================= */

const gradientText =
document.querySelector(".gradient-text");


document.addEventListener(
"mousemove",
function(e){

    if(!gradientText)
        return;

    const x =
    (e.clientX /
    window.innerWidth) * 100;

    gradientText.style.backgroundPosition =
    x + "%";

});


/* =========================================================
   PARALLAX HERO
========================================================= */

window.addEventListener(
"mousemove",
function(e){

    const shapes =
    document.querySelectorAll(
    ".shape"
    );

    const x =
    (e.clientX -
    window.innerWidth / 2) / 50;

    const y =
    (e.clientY -
    window.innerHeight / 2) / 50;

    shapes.forEach(function(shape,index){

        const multiplier =
        index + 1;

        shape.style.transform =
        "translate(" +
        x * multiplier +
        "px," +
        y * multiplier +
        "px)";

    });

});


/* =========================================================
   TYPING EFFECT
========================================================= */

const words = [

    "Smarter Workplace",

    "Connected Teams",

    "Digital Employees",

    "Modern Organizations",

    "Future of Work"

];

let wordIndex = 0;

let charIndex = 0;

let deleting = false;

const typingElement =
document.querySelector(
".gradient-text"
);


function typeEffect(){

    if(!typingElement)
        return;

    const word =
    words[wordIndex];

    if(!deleting){

        typingElement.textContent =
        word.substring(
        0,
        charIndex + 1
        );

        charIndex++;

        if(charIndex ===
        word.length){

            deleting = true;

            setTimeout(
            typeEffect,
            1700
            );

            return;

        }

    }else{

        typingElement.textContent =
        word.substring(
        0,
        charIndex - 1
        );

        charIndex--;

        if(charIndex === 0){

            deleting = false;

            wordIndex =
            (wordIndex + 1)
            % words.length;

        }

    }

    setTimeout(
    typeEffect,
    deleting ? 50 : 100
    );

}


setTimeout(
typeEffect,
1500
);

</script>


</body>

</html>