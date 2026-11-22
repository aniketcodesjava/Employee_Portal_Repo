
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Skyline Bank - Holder Login</title>

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
}

/* Login Box */

.login-container {
    width: 380px;
    background: white;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

.logo {
    text-align: center;
    font-size: 27px;
    font-weight: bold;
    color: #087eae;
    margin-bottom: 10px;
}

h2 {
    text-align: center;
    color: #102c4c;
    margin-bottom: 25px;
}

label {
    display: block;
    margin-bottom: 7px;
    color: #333;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
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
    padding-right: 60px;
}

.show-password {
    position: absolute;
    right: 10px;
    top: 12px;
    cursor: pointer;
    color: #087eae;
    font-size: 13px;
}

/* Button */

button {
    width: 100%;
    padding: 13px;
    border: none;
    background: #087eae;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border-radius: 6px;
    cursor: pointer;
}

button:hover {
    background: #064d75;
}

/* Links */

.bottom-link {
    text-align: center;
    margin-top: 20px;
}

.bottom-link a {
    color: #ff6b6b;
    text-decoration: none;
    font-weight: bold;
}

.bottom-link a:hover {
    text-decoration: underline;
}

#error {
    color: red;
    font-size: 14px;
    margin-bottom: 15px;
    text-align: center;
}

</style>

</head>

<body>

<div class="login-container">

    <div class="logo">
        SKYLINE BANK
    </div>

    <h2>Holder Login</h2>

    <form action="HolderLoginCredential.jsp" method="post"
          onsubmit="return validateForm()">

        <div id="error"></div>

        <label>Admin Username/Email</label>

        <input type="text"
               id="username"
               name="n1"
               placeholder="Enter admin username">

        <label>Password</label>

        <div class="password-box">

            <input type="password"
                   id="password"
                   name="n2"
                   placeholder="Enter password">

            <span class="show-password"
                  onclick="togglePassword()">
                Show
            </span>

        </div>

        <button type="submit">
            Login
        </button>

    </form>
    
     <!-- Registration Link -->

    <div class="links">

        <p>
            Don't have account?
            <a href="holderRegister.jsp">Register Here</a>
        </p>


    </div>
    
     <div class="bottom-link">
        <a href="ForgotPasswordHolder.jsp">Forgot Password ?</a>
    </div>

</div>

<script>

// Form Validation

function validateForm() {

    let username = document.getElementById("username").value.trim();

    let password = document.getElementById("password").value.trim();

    let error = document.getElementById("error");

    if (username === "") {

        error.innerHTML = "Please enter admin username";

        return false;
    }

    if (password === "") {

        error.innerHTML = "Please enter password";

        return false;
    }

    if (password.length < 6) {

        error.innerHTML = "Password must contain at least 6 characters";

        return false;
    }

    return true;
}

// Show / Hide Password

function togglePassword() {

    let password = document.getElementById("password");

    let show = document.querySelector(".show-password");

    if (password.type === "password") {

        password.type = "text";

        show.innerHTML = "Hide";

    } else {

        password.type = "password";

        show.innerHTML = "Show";
    }
}

</script>

</body>
</html>
