<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank | Home</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #07172e, #064d75, #087eae);
    min-height: 100vh;
    color: white;
}

/* Navbar */

.navbar {
    background: rgba(5, 18, 38, 0.95);
    padding: 18px 0;
}

.navbar-brand {
    color: #35d5f2 !important;
    font-size: 25px;
    font-weight: bold;
    letter-spacing: 1px;
}

/* Hero Section */

.hero-section {
    min-height: 88vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 40px 15px;
}

.hero-content {
    max-width: 750px;
}

.bank-icon {
    font-size: 75px;
    color: #35d5f2;
    margin-bottom: 20px;
}

.hero-content h1 {
    font-size: 45px;
    font-weight: bold;
    margin-bottom: 20px;
}

.hero-content h1 span {
    color: #35d5f2;
}

.hero-content p {
    color: #dceaf5;
    font-size: 17px;
    line-height: 1.8;
    margin-bottom: 30px;
}

/* Admin Login Button */

.admin-btn {
    display: inline-block;
    background: #d69b27;
    color: white;
    padding: 13px 32px;
    border-radius: 8px;
    text-decoration: none;
    font-size: 17px;
    font-weight: bold;
    transition: 0.3s;
}

.admin-btn:hover {
    background: #b47c12;
    color: white;
    transform: translateY(-4px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.3);
}

/* Footer */

footer {
    background: #07172e;
    color: #bfcbd8;
    text-align: center;
    padding: 15px;
    font-size: 14px;
}

/* Responsive */

@media(max-width: 576px) {

    .hero-content h1 {
        font-size: 32px;
    }

    .hero-content p {
        font-size: 15px;
    }

    .bank-icon {
        font-size: 60px;
    }
}

</style>
</head>

<body>

<!-- Navbar -->

<nav class="navbar">
    <div class="container">

        <a class="navbar-brand" href="index.jsp">
            <i class="bi bi-bank2"></i>
            SKYLINE BANK
        </a>

    </div>
</nav>

<!-- Hero Section -->

<section class="hero-section">

    <div class="hero-content">

        <div class="bank-icon">
            <i class="bi bi-bank"></i>
        </div>

        <h1>
            Welcome to <span>Skyline Bank</span>
        </h1>

        <p>
            Banking Beyond Boundaries.
            <br>
            Experience secure, simple and smart banking management.
            <br>
            Your trusted banking management system.
        </p>

        <!-- Only Admin Login Option -->

        <a href="AdminLogin.jsp" class="admin-btn">
            <i class="bi bi-person-lock"></i>
            Admin Login
        </a>

    </div>

</section>

<!-- Footer -->

<footer>
    © 2026 Skyline Bank | Banking Beyond Boundaries
</footer>

</body>
</html>