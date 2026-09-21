
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String ctx = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Employee Management Dashboard</title>

<!-- Bootstrap -->
<link rel="stylesheet"
      href="<%=ctx%>/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
   ========================================================= */

:root{

    --bg:#0b1020;

    --bg2:#10172d;

    --sidebar:#0d1428;

    --card:rgba(22,30,55,.82);

    --card2:#17213d;

    --primary:#6c63ff;

    --primary2:#8f7cff;

    --cyan:#22d3ee;

    --green:#32d583;

    --yellow:#fbbf24;

    --red:#ff5b67;

    --text:#ffffff;

    --muted:#98a2b3;

    --border:rgba(255,255,255,.09);

    --shadow:0 20px 60px rgba(0,0,0,.30);
}


/* =========================================================
   BASIC
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

    font-family:
    "Poppins",
    "Segoe UI",
    Arial,
    sans-serif;

    background:
    radial-gradient(
        circle at 10% 10%,
        rgba(108,99,255,.18),
        transparent 28%
    ),
    radial-gradient(
        circle at 90% 80%,
        rgba(34,211,238,.12),
        transparent 28%
    ),
    var(--bg);

    color:var(--text);

    min-height:100vh;

    overflow-x:hidden;

    transition:.4s ease;
}


/* =========================================================
   ANIMATED BACKGROUND
   ========================================================= */

body::before{

    content:"";

    position:fixed;

    width:500px;
    height:500px;

    border-radius:50%;

    background:
    radial-gradient(
        circle,
        rgba(108,99,255,.16),
        transparent 65%
    );

    top:-220px;
    right:-150px;

    animation:
    floatingOne 10s infinite alternate ease-in-out;

    pointer-events:none;

    z-index:-1;
}

body::after{

    content:"";

    position:fixed;

    width:450px;
    height:450px;

    border-radius:50%;

    background:
    radial-gradient(
        circle,
        rgba(34,211,238,.10),
        transparent 65%
    );

    bottom:-220px;
    left:120px;

    animation:
    floatingTwo 12s infinite alternate ease-in-out;

    pointer-events:none;

    z-index:-1;
}

@keyframes floatingOne{

    from{
        transform:translate(0,0);
    }

    to{
        transform:translate(-80px,80px);
    }
}

@keyframes floatingTwo{

    from{
        transform:translate(0,0);
    }

    to{
        transform:translate(100px,-70px);
    }
}


/* =========================================================
   SIDEBAR
   ========================================================= */

.sidebar{

    position:fixed;

    top:0;
    left:0;

    width:275px;
    height:100vh;

    background:
    linear-gradient(
        180deg,
        #111a34,
        #0a1020
    );

    border-right:1px solid var(--border);

    z-index:3000;

    transition:.35s ease;

    overflow-y:auto;
}

.brand{

    height:85px;

    display:flex;

    align-items:center;

    padding:0 24px;

    border-bottom:1px solid var(--border);
}

.brand-logo{

    width:46px;
    height:46px;

    border-radius:15px;

    background:
    linear-gradient(
        135deg,
        var(--primary),
        var(--cyan)
    );

    display:flex;

    align-items:center;
    justify-content:center;

    font-size:21px;

    font-weight:800;

    box-shadow:
    0 12px 35px rgba(108,99,255,.35);

    animation:logoPulse 3s infinite;
}

@keyframes logoPulse{

    0%,100%{
        transform:scale(1);
    }

    50%{
        transform:scale(1.05);
    }
}

.brand-text{
    margin-left:13px;
}

.brand-text h2{

    font-size:18px;

    margin:0;

    font-weight:700;
}

.brand-text span{

    font-size:10px;

    color:var(--muted);
}

.menu{

    padding:20px 13px;
}

.menu-title{

    font-size:10px;

    color:#68738b;

    text-transform:uppercase;

    letter-spacing:1.5px;

    margin:
    12px 12px;
}

.menu-item{

    height:48px;

    padding:0 15px;

    margin-bottom:7px;

    border-radius:13px;

    display:flex;

    align-items:center;

    gap:13px;

    color:#aab3c7;

    text-decoration:none;

    cursor:pointer;

    transition:.25s ease;

    position:relative;
}

.menu-item span:first-child{

    width:24px;

    text-align:center;

    font-size:17px;
}

.menu-item:hover{

    background:
    rgba(108,99,255,.12);

    color:white;

    transform:translateX(4px);
}

.menu-item.active{

    background:
    linear-gradient(
        90deg,
        rgba(108,99,255,.30),
        rgba(108,99,255,.06)
    );

    color:white;

    border:
    1px solid rgba(108,99,255,.25);
}

.menu-item.active::before{

    content:"";

    position:absolute;

    left:-1px;

    top:10px;

    width:3px;

    height:28px;

    border-radius:10px;

    background:
    linear-gradient(
        180deg,
        var(--primary),
        var(--cyan)
    );
}


/* =========================================================
   MAIN
   ========================================================= */

.main{

    margin-left:275px;

    min-height:100vh;

    transition:.35s ease;
}


/* =========================================================
   TOPBAR
   ========================================================= */

.topbar{

    height:82px;

    padding:0 30px;

    display:flex;

    align-items:center;

    justify-content:space-between;

    border-bottom:1px solid var(--border);

    background:
    rgba(11,16,32,.75);

    backdrop-filter:blur(20px);

    position:sticky;

    top:0;

    z-index:2000;
}

.left-top{

    display:flex;

    align-items:center;

    gap:18px;
}

.menu-btn{

    width:42px;
    height:42px;

    border:1px solid var(--border);

    background:var(--card);

    color:white;

    border-radius:12px;

    display:none;

    cursor:pointer;
}


/* =========================================================
   SEARCH
   ========================================================= */

.search-box{

    width:340px;

    height:44px;

    border-radius:14px;

    border:1px solid var(--border);

    background:
    rgba(255,255,255,.045);

    display:flex;

    align-items:center;

    padding:0 15px;

    gap:10px;

    transition:.3s;
}

.search-box:focus-within{

    border-color:
    rgba(108,99,255,.7);

    box-shadow:
    0 0 0 4px
    rgba(108,99,255,.08);
}

.search-box span{

    color:#8d97aa;

    font-size:18px;
}

.search-box input{

    width:100%;

    background:transparent;

    border:none;

    outline:none;

    color:white;

    font-size:12px;
}

.search-box input::placeholder{

    color:#778198;
}


/* =========================================================
   TOP ACTIONS
   ========================================================= */

.top-actions{

    display:flex;

    align-items:center;

    gap:9px;
}

.top-btn{

    position:relative;

    width:43px;
    height:43px;

    border:1px solid var(--border);

    border-radius:50%;

    background:
    rgba(255,255,255,.04);

    color:white;

    display:flex;

    align-items:center;
    justify-content:center;

    cursor:pointer;

    font-size:16px;

    transition:.3s;
}

.top-btn:hover{

    background:
    linear-gradient(
        135deg,
        var(--primary),
        #5148d9
    );

    transform:
    translateY(-3px);

    box-shadow:
    0 10px 25px
    rgba(108,99,255,.28);
}

.badge-dot{

    position:absolute;

    right:-2px;
    top:-3px;

    width:19px;
    height:19px;

    background:var(--red);

    color:white;

    font-size:8px;

    font-weight:700;

    display:flex;

    align-items:center;
    justify-content:center;

    border-radius:50%;

    border:2px solid var(--bg);

    animation:
    notificationPulse 2s infinite;
}

@keyframes notificationPulse{

    0%{
        box-shadow:
        0 0 0 0
        rgba(255,91,103,.5);
    }

    70%{
        box-shadow:
        0 0 0 7px
        rgba(255,91,103,0);
    }

    100%{
        box-shadow:
        0 0 0 0
        rgba(255,91,103,0);
    }
}

.profile{

    width:44px;
    height:44px;

    border-radius:50%;

    object-fit:cover;

    border:
    2px solid
    rgba(108,99,255,.7);

    margin-left:7px;

    cursor:pointer;

    transition:.3s;
}

.profile:hover{
    transform:scale(1.08);
}


/* =========================================================
   DROPDOWNS
   ========================================================= */

.top-dropdown{

    position:fixed;

    top:75px;

    right:28px;

    width:340px;

    background:
    linear-gradient(
        145deg,
        #17213d,
        #0d1428
    );

    border:
    1px solid var(--border);

    border-radius:18px;

    padding:12px;

    box-shadow:
    0 25px 70px
    rgba(0,0,0,.55);

    backdrop-filter:blur(20px);

    z-index:5000;

    opacity:0;

    visibility:hidden;

    transform:
    translateY(-12px)
    scale(.96);

    transition:.25s ease;
}

.top-dropdown.show{

    opacity:1;

    visibility:visible;

    transform:
    translateY(0)
    scale(1);
}

.dropdown-title{

    padding:12px;

    font-size:14px;

    font-weight:700;

    border-bottom:1px solid var(--border);

    margin-bottom:7px;
}

.language-dropdown button{

    width:100%;

    border:none;

    background:transparent;

    color:#ddd;

    text-align:left;

    padding:12px;

    border-radius:10px;

    cursor:pointer;

    transition:.2s;
}

.language-dropdown button:hover{

    background:
    rgba(108,99,255,.15);

    color:white;
}

.dropdown-header{

    display:flex;

    justify-content:space-between;

    padding:10px 12px;

    border-bottom:1px solid var(--border);

    margin-bottom:5px;
}

.dropdown-header span{

    color:#8f7cff;

    font-size:10px;
}

.dropdown-item{

    display:flex;

    gap:12px;

    padding:12px;

    border-radius:11px;

    cursor:pointer;

    transition:.2s;
}

.dropdown-item:hover{

    background:
    rgba(255,255,255,.05);
}

.dropdown-avatar{

    width:38px;
    height:38px;

    border-radius:50%;

    background:
    linear-gradient(
        135deg,
        var(--primary),
        var(--cyan)
    );

    display:flex;

    align-items:center;
    justify-content:center;

    font-weight:700;
}

.dropdown-item strong,
.notification-item strong{

    display:block;

    font-size:12px;
}

.dropdown-item small,
.notification-item small{

    display:block;

    color:var(--muted);

    font-size:10px;

    margin-top:3px;
}

.notification-item{

    display:flex;

    gap:12px;

    padding:12px;

    border-radius:11px;
}

.notification-icon{

    width:36px;
    height:36px;

    border-radius:10px;

    display:flex;

    align-items:center;
    justify-content:center;

    flex-shrink:0;
}

.notification-icon.blue{

    background:
    rgba(108,99,255,.15);

    color:#8f7cff;
}

.notification-icon.green{

    background:
    rgba(50,213,131,.15);

    color:var(--green);
}

.notification-icon.yellow{

    background:
    rgba(251,191,36,.15);

    color:var(--yellow);
}

.view-all-btn{

    width:100%;

    border:none;

    background:
    rgba(108,99,255,.10);

    color:#a99fff;

    padding:11px;

    border-radius:10px;

    cursor:pointer;

    margin-top:7px;

    transition:.2s;
}

.view-all-btn:hover{

    background:
    rgba(108,99,255,.20);
}


/* =========================================================
   CONTENT
   ========================================================= */

.content{

    padding:30px;
}

.welcome-section{

    display:flex;

    align-items:center;

    justify-content:space-between;

    margin-bottom:25px;

    animation:
    pageDown .7s ease;
}

@keyframes pageDown{

    from{
        opacity:0;
        transform:translateY(-15px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

.welcome-section h1{

    font-size:29px;

    margin-bottom:7px;

    font-weight:700;
}

.welcome-section p{

    color:var(--muted);

    font-size:13px;
}

.clock{

    color:#9f96ff;

    font-weight:600;

    font-size:13px;
}


/* =========================================================
   HERO
   ========================================================= */

.hero{

    min-height:255px;

    border-radius:25px;

    overflow:hidden;

    position:relative;

    margin-bottom:25px;

    background:
    linear-gradient(
        90deg,
        rgba(8,13,30,.96),
        rgba(20,27,58,.82),
        rgba(18,26,55,.40)
    ),
    url("https://wallpaperaccess.com/full/656670.jpg")
    center/cover;

    box-shadow:
    var(--shadow);

    border:
    1px solid rgba(255,255,255,.08);

    animation:
    heroAppear .8s ease;
}

@keyframes heroAppear{

    from{
        opacity:0;
        transform:scale(.98);
    }

    to{
        opacity:1;
        transform:scale(1);
    }
}

.hero::before{

    content:"";

    position:absolute;

    inset:0;

    background:
    linear-gradient(
        120deg,
        transparent 30%,
        rgba(108,99,255,.18),
        transparent 70%
    );

    transform:
    translateX(-100%);

    animation:
    heroShine 7s infinite linear;
}

@keyframes heroShine{

    0%{
        transform:translateX(-100%);
    }

    100%{
        transform:translateX(100%);
    }
}

.hero-content{

    position:relative;

    z-index:2;

    padding:40px;

    max-width:670px;
}

.hero-content h2{

    font-size:30px;

    margin-bottom:12px;

    font-weight:700;
}

.hero-content p{

    color:#c4cbe0;

    font-size:13px;

    line-height:1.8;
}

.hero-btn{

    display:inline-flex;

    align-items:center;

    gap:8px;

    margin-top:18px;

    padding:12px 20px;

    border-radius:11px;

    background:
    linear-gradient(
        135deg,
        var(--primary),
        #5148d9
    );

    color:white;

    text-decoration:none;

    font-size:12px;

    border:none;

    transition:.3s;

    box-shadow:
    0 10px 25px
    rgba(108,99,255,.25);
}

.hero-btn::after{
    content:" →";
}

.hero-btn:hover{

    color:white;

    transform:
    translateY(-3px);

    box-shadow:
    0 15px 35px
    rgba(108,99,255,.35);
}


/* =========================================================
   STATS
   ========================================================= */

.stats-grid{

    display:grid;

    grid-template-columns:
    repeat(4,1fr);

    gap:18px;

    margin-bottom:25px;
}

.stat-card{

    background:
    linear-gradient(
        145deg,
        rgba(23,33,61,.92),
        rgba(14,20,39,.90)
    );

    border:
    1px solid var(--border);

    border-radius:19px;

    padding:20px;

    transition:.3s;

    position:relative;

    overflow:hidden;

    animation:
    cardAppear .7s ease backwards;
}

.stat-card:nth-child(1){
    animation-delay:.1s;
}

.stat-card:nth-child(2){
    animation-delay:.2s;
}

.stat-card:nth-child(3){
    animation-delay:.3s;
}

.stat-card:nth-child(4){
    animation-delay:.4s;
}

@keyframes cardAppear{

    from{
        opacity:0;
        transform:translateY(20px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

.stat-card::after{

    content:"";

    position:absolute;

    width:100px;
    height:100px;

    border-radius:50%;

    background:
    rgba(108,99,255,.08);

    right:-40px;
    bottom:-45px;
}

.stat-card:hover{

    transform:
    translateY(-7px);

    border-color:
    rgba(108,99,255,.35);

    box-shadow:
    0 20px 40px
    rgba(0,0,0,.22);
}

.stat-top{

    display:flex;

    justify-content:space-between;

    align-items:center;
}

.stat-icon{

    width:44px;
    height:44px;

    border-radius:13px;

    display:flex;

    align-items:center;
    justify-content:center;

    background:
    linear-gradient(
        135deg,
        rgba(108,99,255,.18),
        rgba(34,211,238,.10)
    );

    color:#a69eff;

    font-size:19px;
}

.stat-value{

    font-size:29px;

    font-weight:700;

    margin-top:15px;
}

.stat-title{

    color:var(--muted);

    font-size:11px;

    margin-top:3px;
}

.stat-growth{

    color:var(--green);

    font-size:10px;

    margin-top:8px;
}


/* =========================================================
   DASHBOARD GRID
   ========================================================= */

.dashboard-grid{

    display:grid;

    grid-template-columns:
    1.5fr 1fr;

    gap:20px;

    margin-bottom:20px;
}

.card-box{

    background:
    linear-gradient(
        145deg,
        rgba(23,33,61,.88),
        rgba(13,20,39,.90)
    );

    border:
    1px solid var(--border);

    border-radius:21px;

    padding:22px;

    min-width:0;

    box-shadow:
    0 10px 40px
    rgba(0,0,0,.12);

    transition:.3s;
}

.card-box:hover{

    border-color:
    rgba(108,99,255,.18);
}

.card-header{

    display:flex;

    align-items:center;

    justify-content:space-between;

    margin-bottom:20px;
}

.card-header h3{

    font-size:15px;

    margin:0;
}

.card-header span{

    color:#938aff;

    font-size:10px;
}


/* =========================================================
   EMPLOYEE GROWTH GRAPH
   ========================================================= */

.growth-card{

    position:relative;

    overflow:hidden;
}

.chart-info{

    display:flex;

    align-items:center;

    gap:8px;

    font-size:10px;

    color:var(--muted);
}

.live-dot{

    width:7px;
    height:7px;

    border-radius:50%;

    background:var(--green);

    box-shadow:
    0 0 0 5px
    rgba(50,213,131,.10);

    animation:
    livePulse 1.8s infinite;
}

@keyframes livePulse{

    0%,100%{
        transform:scale(1);
    }

    50%{
        transform:scale(1.25);
    }
}

.growth-chart{

    position:relative;

    height:260px;

    padding:
    15px 5px 25px 35px;
}

.grid-lines{

    position:absolute;

    left:35px;
    right:5px;
    top:15px;
    bottom:25px;

    display:flex;

    flex-direction:column;

    justify-content:space-between;
}

.grid-lines span{

    height:1px;

    width:100%;

    background:
    rgba(255,255,255,.055);

    position:relative;
}

.grid-lines span::before{

    content:attr(data-value);

    position:absolute;

    left:-32px;

    top:-7px;

    font-size:8px;

    color:#657087;
}

.growth-svg{

    position:absolute;

    left:35px;
    right:5px;
    top:15px;
    bottom:25px;

    width:calc(100% - 40px);

    height:calc(100% - 40px);

    overflow:visible;
}

.area{

    fill:
    url(#areaGradient);

    opacity:.35;

    stroke:none;

    animation:
    areaReveal 2s ease;
}

@keyframes areaReveal{

    from{
        opacity:0;
    }

    to{
        opacity:.35;
    }
}

.growth-line{

    fill:none;

    stroke:
    url(#lineGradient);

    stroke-width:3;

    stroke-linecap:round;

    stroke-linejoin:round;

    stroke-dasharray:1000;

    stroke-dashoffset:1000;

    animation:
    drawLine 2.3s ease forwards;
}

@keyframes drawLine{

    to{
        stroke-dashoffset:0;
    }
}

.growth-point{

    fill:#fff;

    stroke:#7c72ff;

    stroke-width:3;

    animation:
    pointAppear .7s ease backwards;
}

.growth-point:nth-of-type(1){
    animation-delay:.4s;
}

.growth-point:nth-of-type(2){
    animation-delay:.6s;
}

.growth-point:nth-of-type(3){
    animation-delay:.8s;
}

.growth-point:nth-of-type(4){
    animation-delay:1s;
}

.growth-point:nth-of-type(5){
    animation-delay:1.2s;
}

.growth-point:nth-of-type(6){
    animation-delay:1.4s;
}

.growth-point:nth-of-type(7){
    animation-delay:1.6s;
}

@keyframes pointAppear{

    from{
        opacity:0;
        r:0;
    }

    to{
        opacity:1;
        r:5;
    }
}

.chart-labels{

    position:absolute;

    left:35px;
    right:5px;

    bottom:0;

    display:grid;

    grid-template-columns:
    repeat(7,1fr);
}

.chart-labels span{

    text-align:center;

    color:#748096;

    font-size:9px;
}

.chart-tooltip{

    position:absolute;

    top:12px;
    right:8px;

    padding:7px 11px;

    border-radius:9px;

    background:
    rgba(108,99,255,.12);

    border:
    1px solid rgba(108,99,255,.18);

    color:#b8b2ff;

    font-size:9px;
}


/* =========================================================
   ATTENDANCE
   ========================================================= */

.attendance{

    display:flex;

    align-items:center;

    justify-content:center;

    gap:30px;

    min-height:260px;
}

.donut{

    width:160px;
    height:160px;

    border-radius:50%;

    background:
    conic-gradient(
        var(--primary) 0 72%,
        var(--green) 72% 91%,
        var(--yellow) 91% 100%
    );

    display:flex;

    align-items:center;
    justify-content:center;

    position:relative;

    animation:
    donutRotate 1.4s ease;
}

@keyframes donutRotate{

    from{
        transform:rotate(-70deg)
        scale(.8);
    }

    to{
        transform:rotate(0)
        scale(1);
    }
}

.donut::before{

    content:"";

    position:absolute;

    inset:-7px;

    border-radius:50%;

    border:
    1px solid
    rgba(108,99,255,.15);
}

.donut-inner{

    width:110px;
    height:110px;

    border-radius:50%;

    background:
    #111a31;

    display:flex;

    align-items:center;
    justify-content:center;

    flex-direction:column;

    z-index:2;
}

.donut-inner strong{

    font-size:25px;
}

.donut-inner span{

    font-size:9px;

    color:var(--muted);
}

.legend-item{

    display:flex;

    align-items:center;

    gap:8px;

    margin-bottom:13px;

    font-size:11px;
}

.legend-dot{

    width:9px;
    height:9px;

    border-radius:50%;
}

.primary-dot{
    background:var(--primary);
}

.green-dot{
    background:var(--green);
}

.yellow-dot{
    background:var(--yellow);
}


/* =========================================================
   TABLE
   ========================================================= */

.table-wrapper{

    overflow-x:auto;
}

table{

    width:100%;

    border-collapse:collapse;
}

th{

    text-align:left;

    color:#738098;

    font-size:10px;

    font-weight:500;

    padding:12px;

    border-bottom:
    1px solid var(--border);
}

td{

    padding:14px 12px;

    font-size:11px;

    border-bottom:
    1px solid rgba(255,255,255,.04);

    color:#dce1eb;
}

tbody tr{

    transition:.25s;
}

tbody tr:hover{

    background:
    rgba(108,99,255,.05);

    transform:scale(1.005);
}

.employee-cell{

    display:flex;

    align-items:center;

    gap:10px;
}

.employee-avatar{

    width:35px;
    height:35px;

    border-radius:50%;

    background:
    linear-gradient(
        135deg,
        var(--primary),
        var(--cyan)
    );

    display:flex;

    align-items:center;
    justify-content:center;

    font-weight:700;

    font-size:11px;

    box-shadow:
    0 5px 15px
    rgba(108,99,255,.20);
}

.status{

    padding:5px 9px;

    border-radius:20px;

    font-size:9px;
}

.status.active{

    background:
    rgba(50,213,131,.12);

    color:var(--green);
}

.status.leave{

    background:
    rgba(251,191,36,.12);

    color:var(--yellow);
}


/* =========================================================
   ACTIVITY
   ========================================================= */

.activity{

    display:flex;

    gap:12px;

    padding:12px 0;

    border-bottom:
    1px solid
    rgba(255,255,255,.04);

    transition:.25s;
}

.activity:hover{

    transform:
    translateX(5px);
}

.activity-icon{

    width:36px;
    height:36px;

    border-radius:10px;

    background:
    rgba(108,99,255,.12);

    color:#9b93ff;

    display:flex;

    align-items:center;
    justify-content:center;
}

.activity strong{

    font-size:11px;

    display:block;
}

.activity small{

    color:var(--muted);

    font-size:9px;
}


/* =========================================================
   QUICK ACTIONS
   ========================================================= */

.quick-actions{

    display:grid;

    grid-template-columns:
    repeat(4,1fr);

    gap:12px;
}

.quick-btn{

    border:
    1px solid var(--border);

    background:
    rgba(255,255,255,.025);

    color:#ddd;

    padding:18px 10px;

    border-radius:14px;

    cursor:pointer;

    transition:.25s;

    text-align:center;
}

.quick-btn:hover{

    background:
    rgba(108,99,255,.12);

    border-color:
    rgba(108,99,255,.30);

    transform:
    translateY(-5px);

    box-shadow:
    0 12px 25px
    rgba(0,0,0,.18);
}

.quick-btn .icon{

    font-size:22px;

    margin-bottom:7px;

    color:#a49cff;
}

.quick-btn div:last-child{

    font-size:10px;
}


/* =========================================================
   LIGHT MODE
   ========================================================= */

body.light-mode{

    --bg:#eef2ff;

    --bg2:#f7f8ff;

    --sidebar:#ffffff;

    --card:#ffffff;

    --card2:#f4f6ff;

    --text:#1d2433;

    --muted:#667085;

    --border:rgba(20,30,60,.09);
}

body.light-mode .sidebar{

    background:
    rgba(255,255,255,.96);
}

body.light-mode .topbar{

    background:
    rgba(255,255,255,.82);
}

body.light-mode .menu-item{

    color:#667085;
}

body.light-mode .menu-item:hover,
body.light-mode .menu-item.active{

    color:#222;
}

body.light-mode .top-btn{

    color:#333;

    background:
    rgba(0,0,0,.035);
}

body.light-mode .search-box input{

    color:#222;
}

body.light-mode .card-box,
body.light-mode .stat-card{

    background:
    rgba(255,255,255,.92);
}

body.light-mode td{

    color:#333;
}

body.light-mode .donut-inner{

    background:#fff;
}


/* =========================================================
   RESPONSIVE
   ========================================================= */

@media(max-width:1100px){

    .stats-grid{

        grid-template-columns:
        repeat(2,1fr);
    }

    .dashboard-grid{

        grid-template-columns:1fr;
    }

    .quick-actions{

        grid-template-columns:
        repeat(2,1fr);
    }
}

@media(max-width:850px){

    .sidebar{

        transform:
        translateX(-100%);
    }

    .sidebar.open{

        transform:
        translateX(0);
    }

    .main{

        margin-left:0;
    }

    .menu-btn{

        display:block;
    }

    .search-box{

        width:230px;
    }

    .topbar{

        padding:0 18px;
    }

    .content{

        padding:20px;
    }
}

@media(max-width:650px){

    .stats-grid{

        grid-template-columns:1fr;
    }

    .search-box{

        display:none;
    }

    .top-btn{

        width:38px;
        height:38px;
    }

    .top-actions{

        gap:5px;
    }

    .profile{

        width:38px;
        height:38px;
    }

    .welcome-section{

        display:block;
    }

    .clock{

        margin-top:10px;
    }

    .hero-content{

        padding:28px;
    }

    .hero-content h2{

        font-size:22px;
    }

    .attendance{

        flex-direction:column;

        padding:15px;
    }

    .top-dropdown{

        right:12px;

        width:
        calc(100% - 24px);
    }

    .quick-actions{

        grid-template-columns:1fr 1fr;
    }
}

</style>

</head>


<body>


<!-- =========================================================
     SIDEBAR
     ========================================================= -->

<aside class="sidebar" id="sidebar">

    <div class="brand">

        <div class="brand-logo">
            E
        </div>

        <div class="brand-text">

            <h2>EmployeePro</h2>

            <span data-i18n="managementSystem">
                Management System
            </span>

        </div>

    </div>


    <div class="menu">

        <div class="menu-title"
             data-i18n="mainMenu">
            Main Menu
        </div>


        <a href="<%=ctx%>/empDashBoard"
           class="menu-item active">

            <span>⌂</span>

            <span data-i18n="dashboard">
                Dashboard
            </span>

        </a>


        <a href="<%=ctx%>/showEmployee"
           class="menu-item">

            <span>👥</span>

            <span data-i18n="employees">
                Employees
            </span>

        </a>


        <a href="<%=ctx%>/AddEmployee"
           class="menu-item">

            <span>＋</span>

            <span data-i18n="addEmployee">
                Add Employee
            </span>

        </a>


        <a href="<%=ctx%>/Departments"
           class="menu-item">

            <span>▦</span>

            <span data-i18n="Departments">
                Departments
            </span>

        </a>


        <a href="<%=ctx%>/showAttendence"
           class="menu-item">

            <span>◷</span>

            <span data-i18n="attendance">
                Attendance
            </span>

        </a>


        <a href="<%=ctx%>/ShowleaveRequests"
           class="menu-item">

            <span>📅</span>

            <span data-i18n="leaverequest">
                Leave Requests
            </span>

        </a>


        <div class="menu-title"
             data-i18n="management">
            Management
        </div>


        <a href="<%=ctx%>/Projects"
           class="menu-item">

            <span>★</span>

            <span data-i18n="Projects">
              Projects
            </span>

        </a>


        <a href="<%=ctx%>/Payment"
           class="menu-item">

            <span>▥</span>

            <span data-i18n="payment">
                Payment
            </span>

        </a>


        <a href="#"
           class="menu-item">

            <span>♧</span>

            <span data-i18n="notifications">
                Notifications
            </span>

        </a>


        <a href="#"
           class="menu-item">

            <span>⚙</span>

            <span data-i18n="settings">
                Settings
            </span>

        </a>


        <a href="<%=ctx%>/Login"
           class="menu-item">

            <span>⇥</span>

            <span data-i18n="logout">
                Logout
            </span>

        </a>

    </div>

</aside>



<!-- =========================================================
     MAIN
     ========================================================= -->

<main class="main">


<!-- TOPBAR -->

<div class="topbar">

    <div class="left-top">

        <button type="button"
                class="menu-btn"
                onclick="openSidebar()">

            ☰

        </button>


        <div class="search-box">

            <span>⌕</span>

            <input
                type="text"
                id="searchInput"
                data-i18n-placeholder="searchEmployees"
                placeholder="Search employees...">

        </div>

    </div>


    <div class="top-actions">


        <!-- THEME -->

        <button type="button"
                class="top-btn"
                id="themeBtn"
                title="Theme">

            <span id="themeIcon">
                ◐
            </span>

        </button>


        <!-- FULL SCREEN -->

        <button type="button"
                class="top-btn"
                id="fullscreenBtn"
                title="Full Screen">

            ⛶

        </button>


        <!-- LANGUAGE -->

        <button type="button"
                class="top-btn"
                id="languageBtn"
                title="Language">

            🌐

        </button>


        <!-- MESSAGE -->

        <button type="button"
                class="top-btn"
                id="messageBtn"
                title="Messages">

            ✉

            <span class="badge-dot">
                6
            </span>

        </button>


        <!-- NOTIFICATION -->

        <button type="button"
                class="top-btn"
                id="notificationBtn"
                title="Notifications">

            ♧

            <span class="badge-dot">
                2
            </span>

        </button>


      

    </div>

</div>



<!-- LANGUAGE DROPDOWN -->

<div class="top-dropdown language-dropdown"
     id="languageDropdown">

    <div class="dropdown-title">

        🌐

        <span data-i18n="selectLanguage">
            Select Language
        </span>

    </div>


    <button type="button"
            onclick="changeLanguage('English')">

        🇬🇧 English

    </button>


    <button type="button"
            onclick="changeLanguage('Marathi')">

        🇮🇳 मराठी

    </button>


    <button type="button"
            onclick="changeLanguage('Hindi')">

        🇮🇳 हिन्दी

    </button>

</div>



<!-- MESSAGE DROPDOWN -->

<div class="top-dropdown"
     id="messageDropdown">

    <div class="dropdown-header">

        <strong data-i18n="messages">
            Messages
        </strong>

        <span data-i18n="sixNew">
            6 New
        </span>

    </div>


    <div class="dropdown-item">

        <div class="dropdown-avatar">
            H
        </div>

        <div>

            <strong data-i18n="hrDepartment">
                HR Department
            </strong>

            <small data-i18n="newEmployeeDetails">
                New employee details available.
            </small>

        </div>

    </div>


    <div class="dropdown-item">

        <div class="dropdown-avatar">
            A
        </div>

        <div>

            <strong>
                Ajay Bankar
            </strong>

            <small>
                Please check my leave request.
            </small>

        </div>

    </div>


    <div class="dropdown-item">

        <div class="dropdown-avatar">
            G
        </div>

        <div>

            <strong>
                Ganesh Chavan
            </strong>

            <small>
                Monthly report is ready.
            </small>

        </div>

    </div>


    <button class="view-all-btn">

        View All Messages →

    </button>

</div>



<!-- NOTIFICATION DROPDOWN -->

<div class="top-dropdown"
     id="notificationDropdown">

    <div class="dropdown-header">

        <strong data-i18n="notifications">
            Notifications
        </strong>

        <span>
            2 New
        </span>

    </div>


    <div class="notification-item">

        <div class="notification-icon blue">
            ＋
        </div>

        <div>

            <strong>
                New Employee
            </strong>

            <small>
                New employee joined IT Department.
            </small>

            <small>
                12 minutes ago
            </small>

        </div>

    </div>


    <div class="notification-item">

        <div class="notification-icon green">
            ✓
        </div>

        <div>

            <strong>
                Attendance Updated
            </strong>

            <small>
                Employee attendance updated.
            </small>

            <small>
                35 minutes ago
            </small>

        </div>

    </div>


    <div class="notification-item">

        <div class="notification-icon yellow">
            ⚠
        </div>

        <div>

            <strong>
                Leave Request
            </strong>

            <small>
                New leave request received.
            </small>

            <small>
                1 hour ago
            </small>

        </div>

    </div>


    <button class="view-all-btn">

        View All Notifications →

    </button>

</div>



<!-- =========================================================
     CONTENT
     ========================================================= -->

<section class="content">


<!-- WELCOME -->

<div class="welcome-section">

    <div>

        <h1 data-i18n="welcome">
            Welcome back, Admin!
        </h1>

        <p data-i18n="dashboardSubtitle">
            Here's what's happening with your organization today.
        </p>

    </div>


    <div class="clock"
         id="liveClock">
    </div>

</div>



<!-- =========================================================
     HERO
     ========================================================= -->

<div class="hero">

    <div class="hero-content">

        <h2 data-i18n="heroTitle">
            Manage Your Employees Smarter
        </h2>

        <p data-i18n="heroDescription">

            Monitor employees, attendance,
            performance, departments and
            reports from one powerful dashboard.

        </p>


        <a href="<%=ctx%>/AddEmployee"
           class="hero-btn"
           data-i18n="addNewEmployee">

            Add New Employee

        </a>

    </div>

</div>



<!-- =========================================================
     STATISTICS
     ========================================================= -->

<div class="stats-grid">


    <div class="stat-card">

        <div class="stat-top">

            <div class="stat-icon">
                👥
            </div>

        </div>

        <div class="stat-value"
             data-counter="248">
            0
        </div>

        <div class="stat-title"
             data-i18n="totalEmployees">

            Total Employees

        </div>

        <div class="stat-growth">
            ↑ 12.5%
        </div>

    </div>



    <div class="stat-card">

        <div class="stat-top">

            <div class="stat-icon">
                ✓
            </div>

        </div>

        <div class="stat-value"
             data-counter="221">
            0
        </div>

        <div class="stat-title"
             data-i18n="presentToday">

            Present Today

        </div>

        <div class="stat-growth">
            ↑ 8.2%
        </div>

    </div>



    <div class="stat-card">

        <div class="stat-top">

            <div class="stat-icon">
                📅
            </div>

        </div>

        <div class="stat-value"
             data-counter="18">
            0
        </div>

        <div class="stat-title"
             data-i18n="onLeave">

            On Leave

        </div>

        <div class="stat-growth">
            ↓ 3.4%
        </div>

    </div>



    <div class="stat-card">

        <div class="stat-top">

            <div class="stat-icon">
                ▦
            </div>

        </div>

        <div class="stat-value"
             data-counter="12">
            0
        </div>

        <div class="stat-title"
             data-i18n="departments">

            Departments

        </div>

        <div class="stat-growth">
            ↑ 2.1%
        </div>

    </div>

</div>



<!-- =========================================================
     GROWTH + ATTENDANCE
     ========================================================= -->

<div class="dashboard-grid">


<!-- EMPLOYEE GROWTH -->

<div class="card-box growth-card">

    <div class="card-header">

        <div>

            <h3 data-i18n="employeeGrowth">
                Employee Growth
            </h3>

        </div>

        <div class="chart-info">

            <span class="live-dot"></span>

            <span>
                Live Growth
            </span>

        </div>

    </div>


    <div class="growth-chart">

        <div class="grid-lines">

            <span data-value="300"></span>

            <span data-value="250"></span>

            <span data-value="200"></span>

            <span data-value="150"></span>

            <span data-value="100"></span>

            <span data-value="50"></span>

            <span data-value="0"></span>

        </div>


        <svg
            class="growth-svg"
            viewBox="0 0 700 220"
            preserveAspectRatio="none">

            <defs>

                <linearGradient
                    id="lineGradient"
                    x1="0"
                    y1="0"
                    x2="1"
                    y2="0">

                    <stop
                        offset="0%"
                        stop-color="#6c63ff"/>

                    <stop
                        offset="100%"
                        stop-color="#22d3ee"/>

                </linearGradient>


                <linearGradient
                    id="areaGradient"
                    x1="0"
                    y1="0"
                    x2="0"
                    y2="1">

                    <stop
                        offset="0%"
                        stop-color="#6c63ff"
                        stop-opacity=".55"/>

                    <stop
                        offset="100%"
                        stop-color="#22d3ee"
                        stop-opacity="0"/>

                </linearGradient>

            </defs>


            <!-- AREA -->

            <path
                class="area"
                d="
                M 0 180
                L 100 155
                L 200 145
                L 300 120
                L 400 92
                L 500 65
                L 600 38
                L 700 25
                L 700 220
                L 0 220
                Z">
            </path>


            <!-- LINE -->

            <path
                class="growth-line"
                d="
                M 0 180
                L 100 155
                L 200 145
                L 300 120
                L 400 92
                L 500 65
                L 600 38
                L 700 25">
            </path>


            <!-- POINTS -->

            <circle
                class="growth-point"
                cx="0"
                cy="180"
                r="5"/>

            <circle
                class="growth-point"
                cx="100"
                cy="155"
                r="5"/>

            <circle
                class="growth-point"
                cx="200"
                cy="145"
                r="5"/>

            <circle
                class="growth-point"
                cx="300"
                cy="120"
                r="5"/>

            <circle
                class="growth-point"
                cx="400"
                cy="92"
                r="5"/>

            <circle
                class="growth-point"
                cx="500"
                cy="65"
                r="5"/>

            <circle
                class="growth-point"
                cx="600"
                cy="38"
                r="5"/>

            <circle
                class="growth-point"
                cx="700"
                cy="25"
                r="5"/>

        </svg>


        <div class="chart-tooltip">

            +12.5% growth

        </div>


        <div class="chart-labels">

            <span>Jan</span>
            <span>Feb</span>
            <span>Mar</span>
            <span>Apr</span>
            <span>May</span>
            <span>Jun</span>
            <span>Jul</span>

        </div>

    </div>

</div>



<!-- ATTENDANCE -->

<div class="card-box">

    <div class="card-header">

        <h3 data-i18n="attendanceOverview">
            Attendance Overview
        </h3>

        <span>
            2026
        </span>

    </div>


    <div class="attendance">

        <div class="donut">

            <div class="donut-inner">

                <strong>
                    89%
                </strong>

                <span>
                    Overall
                </span>

            </div>

        </div>


        <div>

            <div class="legend-item">

                <span class="legend-dot primary-dot">
                </span>

                <span>
                    Present
                </span>

                <strong>
                    72%
                </strong>

            </div>


            <div class="legend-item">

                <span class="legend-dot green-dot">
                </span>

                <span>
                    Remote
                </span>

                <strong>
                    19%
                </strong>

            </div>


            <div class="legend-item">

                <span class="legend-dot yellow-dot">
                </span>

                <span>
                    Absent
                </span>

                <strong>
                    9%
                </strong>

            </div>

        </div>

    </div>

</div>

</div>



<!-- =========================================================
     RECENT EMPLOYEES
     ========================================================= -->

<div class="card-box">

    <div class="card-header">

        <h3 data-i18n="recentEmployees">
            Recent Employees
        </h3>

        <a href="<%=ctx%>/showEmployee"
           style="
           color:#9b93ff;
           font-size:11px;
           text-decoration:none;">

            View All →

        </a>

    </div>


    <div class="table-wrapper">

        <table>

            <thead>

                <tr>

                    <th>
                        Employee
                    </th>

                    <th>
                        Department
                    </th>

                    <th>
                        Designation
                    </th>

                    <th>
                        Status
                    </th>

                </tr>

            </thead>


            <tbody>


                <tr>

                    <td>

                        <div class="employee-cell">

                            <div class="employee-avatar">
                                S
                            </div>

                            <div>

                                <strong>
                                    Swapnil Sawant
                                </strong>

                                <small
                                    style="
                                    display:block;
                                    color:var(--muted);
                                    font-size:9px;">

                                    EMP001

                                </small>

                            </div>

                        </div>

                    </td>


                    <td>
                        IT
                    </td>


                    <td>
                        Java Developer
                    </td>


                    <td>

                        <span class="status active">
                            Active
                        </span>

                    </td>

                </tr>



                <tr>

                    <td>

                        <div class="employee-cell">

                            <div class="employee-avatar">
                                S
                            </div>

                            <div>

                                <strong>
                                    Shivam Mane
                                </strong>

                                <small
                                    style="
                                    display:block;
                                    color:var(--muted);
                                    font-size:9px;">

                                    EMP002

                                </small>

                            </div>

                        </div>

                    </td>


                    <td>
                        HR
                    </td>


                    <td>
                        HR Executive
                    </td>


                    <td>

                        <span class="status active">
                            Active
                        </span>

                    </td>

                </tr>



                <tr>

                    <td>

                        <div class="employee-cell">

                            <div class="employee-avatar">
                                P
                            </div>

                            <div>

                                <strong>
                                    Pravin Deshmukh
                                </strong>

                                <small
                                    style="
                                    display:block;
                                    color:var(--muted);
                                    font-size:9px;">

                                    EMP003

                                </small>

                            </div>

                        </div>

                    </td>


                    <td>
                        Finance
                    </td>


                    <td>
                        Accountant
                    </td>


                    <td>

                        <span class="status leave">
                            On Leave
                        </span>

                    </td>

                </tr>

            </tbody>

        </table>

    </div>

</div>


<br>



<!-- =========================================================
     DEPARTMENT + ACTIVITY
     ========================================================= -->

<div class="dashboard-grid">


<!-- DEPARTMENT -->

<div class="card-box">

    <div class="card-header">

        <h3>
            Department Overview
        </h3>

    </div>


    <div class="activity">

        <div class="activity-icon">
            💻
        </div>

        <div>

            <strong>
                IT Department
            </strong>

            <small>
                86 employees
            </small>

        </div>

    </div>


    <div class="activity">

        <div class="activity-icon">
            👥
        </div>

        <div>

            <strong>
                HR Department
            </strong>

            <small>
                32 employees
            </small>

        </div>

    </div>


    <div class="activity">

        <div class="activity-icon">
            💰
        </div>

        <div>

            <strong>
                Finance Department
            </strong>

            <small>
                27 employees
            </small>

        </div>

    </div>


    <div class="activity">

        <div class="activity-icon">
            📢
        </div>

        <div>

            <strong>
                Marketing Department
            </strong>

            <small>
                24 employees
            </small>

        </div>

    </div>

</div>



<!-- RECENT ACTIVITY -->

<div class="card-box">

    <div class="card-header">

        <h3>
            Recent Activity
        </h3>

    </div>


    <div class="activity">

        <div class="activity-icon">
            ＋
        </div>

        <div>

            <strong>
                New employee added
            </strong>

            <small>
                10 minutes ago
            </small>

        </div>

    </div>


    <div class="activity">

        <div class="activity-icon">
            ✓
        </div>

        <div>

            <strong>
                Attendance marked
            </strong>

            <small>
                30 minutes ago
            </small>

        </div>

    </div>


    <div class="activity">

        <div class="activity-icon">
            📄
        </div>

        <div>

            <strong>
                Monthly report generated
            </strong>

            <small>
                1 hour ago
            </small>

        </div>

    </div>

</div>

</div>



<!-- =========================================================
     QUICK ACTIONS
     ========================================================= -->

<div class="card-box">

    <div class="card-header">

        <h3>
            Quick Actions
        </h3>

    </div>


    <div class="quick-actions">


        <button
            type="button"
            class="quick-btn"
            onclick="location.href='<%=ctx%>/AddEmployee'">

            <div class="icon">
                ＋
            </div>

            <div>
                Add New Employee
            </div>

        </button>



        <button
            type="button"
            class="quick-btn"
            onclick="location.href='<%=ctx%>/showEmployee'">

            <div class="icon">
                👥
            </div>

            <div>
                View Employees
            </div>

        </button>



        <button
            type="button"
            class="quick-btn"
            onclick="location.href='<%=ctx%>/Attendance'">

            <div class="icon">
                ✓
            </div>

            <div>
                Attendance
            </div>

        </button>



        <button
            type="button"
            class="quick-btn"
            onclick="location.href='<%=ctx%>/Reports'">

            <div class="icon">
                📊
            </div>

            <div>
                Generate Report
            </div>

        </button>

    </div>

</div>


</section>

</main>



<script>

/* =========================================================
   LANGUAGE
   ========================================================= */

const translations = {

English:{

    managementSystem:"Management System",

    mainMenu:"Main Menu",

    management:"Management",

    dashboard:"Dashboard",

    employees:"Employees",

    addEmployee:"Add Employee",

    departments:"Departments",

    attendance:"Attendance",

    leaveRequests:"Leave Requests",

    performance:"Performance",

    reports:"Reports",

    notifications:"Notifications",

    settings:"Settings",

    logout:"Logout",

    selectLanguage:"Select Language",

    searchEmployees:"Search employees...",

    welcome:"Welcome back, Admin!",

    dashboardSubtitle:
    "Here's what's happening with your organization today.",

    heroTitle:
    "Manage Your Employees Smarter",

    heroDescription:
    "Monitor employees, attendance, performance, departments and reports from one powerful dashboard.",

    addNewEmployee:"Add New Employee",

    totalEmployees:"Total Employees",

    presentToday:"Present Today",

    onLeave:"On Leave",

    employeeGrowth:"Employee Growth",

    attendanceOverview:"Attendance Overview",

    recentEmployees:"Recent Employees",

    messages:"Messages",

    sixNew:"6 New",

    hrDepartment:"HR Department",

    newEmployeeDetails:
    "New employee details available."

},


Marathi:{

    managementSystem:"व्यवस्थापन प्रणाली",

    mainMenu:"मुख्य मेनू",

    management:"व्यवस्थापन",

    dashboard:"डॅशबोर्ड",

    employees:"कर्मचारी",

    addEmployee:"कर्मचारी जोडा",

    departments:"विभाग",

    attendance:"उपस्थिती",

    leaveRequests:"रजेच्या विनंत्या",

    performance:"कामगिरी",

    reports:"अहवाल",

    notifications:"सूचना",

    settings:"सेटिंग्ज",

    logout:"लॉगआउट",

    selectLanguage:"भाषा निवडा",

    searchEmployees:"कर्मचारी शोधा...",

    welcome:"पुन्हा स्वागत आहे, प्रशासक!",

    dashboardSubtitle:
    "आज आपल्या संस्थेमध्ये काय घडत आहे ते येथे पहा.",

    heroTitle:
    "आपले कर्मचारी अधिक स्मार्ट पद्धतीने व्यवस्थापित करा",

    heroDescription:
    "एकाच शक्तिशाली डॅशबोर्डमधून कर्मचारी, उपस्थिती, कामगिरी, विभाग आणि अहवाल व्यवस्थापित करा.",

    addNewEmployee:"नवीन कर्मचारी जोडा",

    totalEmployees:"एकूण कर्मचारी",

    presentToday:"आज उपस्थित",

    onLeave:"रजेवर",

    employeeGrowth:"कर्मचारी वाढ",

    attendanceOverview:"उपस्थितीचा आढावा",

    recentEmployees:"अलीकडील कर्मचारी",

    messages:"संदेश",

    sixNew:"6 नवीन",

    hrDepartment:"एचआर विभाग",

    newEmployeeDetails:
    "नवीन कर्मचाऱ्याची माहिती उपलब्ध आहे."

},


Hindi:{

    managementSystem:"प्रबंधन प्रणाली",

    mainMenu:"मुख्य मेनू",

    management:"प्रबंधन",

    dashboard:"डैशबोर्ड",

    employees:"कर्मचारी",

    addEmployee:"कर्मचारी जोड़ें",

    departments:"विभाग",

    attendance:"उपस्थिति",

    leaveRequests:"छुट्टी के अनुरोध",

    performance:"प्रदर्शन",

    reports:"रिपोर्ट",

    notifications:"सूचनाएं",

    settings:"सेटिंग्स",

    logout:"लॉगआउट",

    selectLanguage:"भाषा चुनें",

    searchEmployees:"कर्मचारी खोजें...",

    welcome:"वापसी पर स्वागत है, एडमिन!",

    dashboardSubtitle:
    "आज आपके संगठन में क्या हो रहा है, यहां देखें।",

    heroTitle:
    "अपने कर्मचारियों को स्मार्ट तरीके से प्रबंधित करें",

    heroDescription:
    "एक शक्तिशाली डैशबोर्ड से कर्मचारियों, उपस्थिति, प्रदर्शन, विभाग और रिपोर्ट को प्रबंधित करें।",

    addNewEmployee:"नया कर्मचारी जोड़ें",

    totalEmployees:"कुल कर्मचारी",

    presentToday:"आज उपस्थित",

    onLeave:"छुट्टी पर",

    employeeGrowth:"कर्मचारी वृद्धि",

    attendanceOverview:"उपस्थिति का अवलोकन",

    recentEmployees:"हाल के कर्मचारी",

    messages:"संदेश",

    sixNew:"6 नए",

    hrDepartment:"एचआर विभाग",

    newEmployeeDetails:
    "नए कर्मचारी की जानकारी उपलब्ध है।"

}

};


/* =========================================================
   LANGUAGE FUNCTION
   ========================================================= */

function changeLanguage(language){

    const selected =
        translations[language];

    if(!selected){
        return;
    }

    document
    .querySelectorAll("[data-i18n]")
    .forEach(function(element){

        const key =
            element.getAttribute("data-i18n");

        if(selected[key]){

            element.textContent =
                selected[key];
        }

    });


    document
    .querySelectorAll("[data-i18n-placeholder]")
    .forEach(function(element){

        const key =
            element.getAttribute(
                "data-i18n-placeholder"
            );

        if(selected[key]){

            element.placeholder =
                selected[key];
        }

    });


    localStorage.setItem(
        "dashboardLanguage",
        language
    );


    document
    .getElementById("languageDropdown")
    .classList.remove("show");
}


/* =========================================================
   LOAD LANGUAGE
   ========================================================= */

document.addEventListener(
    "DOMContentLoaded",
    function(){

        const savedLanguage =
            localStorage.getItem(
                "dashboardLanguage"
            ) || "English";

        changeLanguage(savedLanguage);

    }
);


/* =========================================================
   THEME
   ========================================================= */

const themeBtn =
    document.getElementById("themeBtn");

const themeIcon =
    document.getElementById("themeIcon");


themeBtn.addEventListener(
    "click",
    function(){

        document.body.classList.toggle(
            "light-mode"
        );

        const isLight =
            document.body.classList.contains(
                "light-mode"
            );


        if(isLight){

            themeIcon.textContent="☀";

            localStorage.setItem(
                "dashboardTheme",
                "light"
            );

        }
        else{

            themeIcon.textContent="◐";

            localStorage.setItem(
                "dashboardTheme",
                "dark"
            );

        }

    }
);


/* LOAD SAVED THEME */

if(
    localStorage.getItem(
        "dashboardTheme"
    ) === "light"
){

    document.body.classList.add(
        "light-mode"
    );

    themeIcon.textContent="☀";
}


/* =========================================================
   FULLSCREEN
   ========================================================= */

const fullscreenBtn =
    document.getElementById(
        "fullscreenBtn"
    );


fullscreenBtn.addEventListener(
    "click",
    function(){

        if(!document.fullscreenElement){

            document.documentElement
            .requestFullscreen()
            .catch(function(error){

                console.log(
                    "Fullscreen error:",
                    error
                );

            });

        }
        else{

            document.exitFullscreen();

        }

    }
);


/* =========================================================
   DROPDOWNS
   ========================================================= */

const languageBtn =
    document.getElementById(
        "languageBtn"
    );

const messageBtn =
    document.getElementById(
        "messageBtn"
    );

const notificationBtn =
    document.getElementById(
        "notificationBtn"
    );


const languageDropdown =
    document.getElementById(
        "languageDropdown"
    );

const messageDropdown =
    document.getElementById(
        "messageDropdown"
    );

const notificationDropdown =
    document.getElementById(
        "notificationDropdown"
    );


function closeAllDropdowns(){

    languageDropdown.classList.remove("show");

    messageDropdown.classList.remove("show");

    notificationDropdown.classList.remove("show");
}


/* LANGUAGE */

languageBtn.addEventListener(
    "click",
    function(event){

        event.stopPropagation();

        closeAllDropdowns();

        languageDropdown.classList.toggle(
            "show"
        );

    }
);


/* MESSAGE */

messageBtn.addEventListener(
    "click",
    function(event){

        event.stopPropagation();

        closeAllDropdowns();

        messageDropdown.classList.toggle(
            "show"
        );

    }
);


/* NOTIFICATION */

notificationBtn.addEventListener(
    "click",
    function(event){

        event.stopPropagation();

        closeAllDropdowns();

        notificationDropdown.classList.toggle(
            "show"
        );

    }
);


/* CLICK OUTSIDE */

document.addEventListener(
    "click",
    function(event){

        if(
            !event.target.closest(
                ".top-dropdown"
            ) &&
            !event.target.closest(
                ".top-btn"
            )
        ){

            closeAllDropdowns();

        }

    }
);


/* =========================================================
   SIDEBAR
   ========================================================= */

function openSidebar(){

    document
    .getElementById("sidebar")
    .classList.toggle("open");

}


/* =========================================================
   LIVE CLOCK
   ========================================================= */

function updateClock(){

    const clock =
        document.getElementById(
            "liveClock"
        );

    const now =
        new Date();

    const time =
        now.toLocaleTimeString(
            "en-IN",
            {
                hour:"2-digit",
                minute:"2-digit",
                second:"2-digit"
            }
        );

    clock.textContent =
        "🕐 " + time;
}

updateClock();

setInterval(
    updateClock,
    1000
);


/* =========================================================
   COUNTER ANIMATION
   ========================================================= */

const counters =
    document.querySelectorAll(
        "[data-counter]"
    );


counters.forEach(function(counter){

    const target =
        Number(
            counter.getAttribute(
                "data-counter"
            )
        );

    let current=0;

    const increment =
        Math.ceil(
            target/50
        );

    const timer =
        setInterval(
            function(){

                current += increment;

                if(current >= target){

                    current=target;

                    clearInterval(timer);

                }

                counter.textContent =
                    current;

            },
            25
        );

});


/* =========================================================
   EMPLOYEE SEARCH
   ========================================================= */

const searchInput =
    document.getElementById(
        "searchInput"
    );


searchInput.addEventListener(
    "keyup",
    function(){

        const value =
            this.value.toLowerCase();


        document
        .querySelectorAll(
            "tbody tr"
        )
        .forEach(function(row){

            const text =
                row.textContent
                .toLowerCase();


            if(text.includes(value)){

                row.style.display="";

            }
            else{

                row.style.display="none";

            }

        });

    }
);


/* =========================================================
   ESCAPE KEY
   ========================================================= */

document.addEventListener(
    "keydown",
    function(event){

        if(event.key === "Escape"){

            closeAllDropdowns();

        }

    }
);

</script>


</body>

</html>
