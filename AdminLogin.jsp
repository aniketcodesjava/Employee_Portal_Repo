
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank - Admin Login</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    min-height: 100vh;
    background: linear-gradient(135deg, #071b35, #087eae);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

/* Login Container */

.login-container {
    width: 100%;
    max-width: 400px;
    background: white;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

/* Heading */

h2 {
    text-align: center;
    color: #092d50;
    margin-bottom: 10px;
}

.subtitle {
    text-align: center;
    color: #777;
    font-size: 14px;
    margin-bottom: 25px;
}

/* Input Fields */

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    color: #333;
    font-weight: bold;
    margin-bottom: 8px;
}

input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    outline: none;
    font-size: 15px;
}

input:focus {
    border-color: #087eae;
}

/* Password */

.password-box {
    position: relative;
}

.password-box input {
    padding-right: 65px;
}

.show-btn {
    position: absolute;
    right: 10px;
    top: 12px;
    border: none;
    background: none;
    color: #087eae;
    cursor: pointer;
}

/* Login Button */

.login-btn {
    width: 100%;
    padding: 13px;
    background: #087eae;
    border: none;
    color: white;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

.login-btn:hover {
    background: #064d75;
}

/* Links */

.links {
    text-align: center;
    margin-top: 22px;
    font-size: 14px;
}

.links a {
    color: #087eae;
    text-decoration: none;
    font-weight: bold;
}

.links a:hover {
    text-decoration: underline;
}

.error {
    color: red;
    font-size: 13px;
    margin-top: 12px;
    text-align: center;
}

</style>
</head>

<body>

<div class="login-container">

    <h2>Admin Login</h2>

    <p class="subtitle">
        Welcome to Skyline Bank Admin Panel
    </p>

    <form action="AdminLoginCredential.jsp" method="post"
          onsubmit="return validateForm()">

        <!-- Username -->

        <div class="form-group">

            <label>Admin Username</label>

            <input type="text"
                   id="username"
                   name="email"
                   placeholder="Enter admin username">

        </div>

        <!-- Password -->

        <div class="form-group">

            <label>Password</label>

            <div class="password-box">

                <input type="password"
                       id="password"
                       name="password"
                       placeholder="Enter password">

                <button type="button"
                        class="show-btn"
                        onclick="togglePassword()">
                    Show
                </button>

            </div>

        </div>

        <button type="submit" class="login-btn">
            Login
        </button>

        <p class="error" id="errorMessage"></p>

    </form>

    <!-- Registration Link -->

    <div class="links">


        <a href="index.jsp">← Back to Home</a>

    </div>

</div>

<script>

// Password Show / Hide

function togglePassword() {

    let password = document.getElementById("password");
    let button = document.querySelector(".show-btn");

    if (password.type === "password") {

        password.type = "text";
        button.innerHTML = "Hide";

    } else {

        password.type = "password";
        button.innerHTML = "Show";
    }
}

// Form Validation

function validateForm() {

    let username = document.getElementById("username").value.trim();
    let password = document.getElementById("password").value.trim();

    let error = document.getElementById("errorMessage");

    if (username === "") {

        error.innerHTML = "Please enter admin username.";
        return false;
    }

    if (password === "") {

        error.innerHTML = "Please enter password.";
        return false;
    }

    if (password.length < 6) {

        error.innerHTML = "Password must contain at least 6 characters.";
        return false;
    }

    return true;
}

</script>

</body>
</html>
