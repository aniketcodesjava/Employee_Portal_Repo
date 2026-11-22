
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forgot Password - Skyline Bank</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #fff1f1, #ffe0e0);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
}

.forgot-card {
    width: 100%;
    max-width: 430px;
    background: white;
    padding: 35px;
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.12);
}

.bank-icon {
    width: 65px;
    height: 65px;
    background: #ffe5e5;
    color: #e63946;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 30px;
    margin: auto;
}

.form-control {
    padding: 11px;
    border-radius: 8px;
}

.btn-reset {
    background: #e63946;
    color: white;
    padding: 11px;
    border-radius: 8px;
    font-weight: bold;
}

.btn-reset:hover {
    background: #c82333;
    color: white;
}

a {
    text-decoration: none;
    color: #e63946;
}
</style>
</head>

<body>

<div class="forgot-card">

    <div class="bank-icon mb-3">
        <i class="bi bi-shield-lock-fill"></i>
    </div>

    <h3 class="text-center fw-bold">Forgot Password?</h3>

    <p class="text-center text-muted mb-4">
        Skyline Bank - Reset your account password
    </p>

    <form action="EditPassword.jsp" method="post">

        <!-- Email -->
        <div class="mb-3">
            <label class="form-label">Registered Email Address</label>
            <input type="email" id="email" name="n1" class="form-control"
                   placeholder="Enter your registered email" required>
        </div>

        <!-- New Password -->
        <div class="mb-3">
            <label class="form-label">New Password</label>
            <div class="input-group">
                <input type="password" id="password"  name="n2"  class="form-control"
                       placeholder="Enter new password" required minlength="8">
                <button class="btn btn-outline-secondary" type="button"
                        onclick="togglePassword('password', 'icon1')">
                    <i class="bi bi-eye" id="icon1"></i>
                </button>
            </div>
        </div>

        <!-- Confirm Password -->
        <div class="mb-3">
            <label class="form-label">Confirm Password</label>
            <div class="input-group">
                <input type="password" id="confirmPassword" name="n3" class="form-control"
                       placeholder="Confirm new password" required minlength="8">
                <button class="btn btn-outline-secondary" type="button"
                        onclick="togglePassword('confirmPassword', 'icon2')">
                    <i class="bi bi-eye" id="icon2"></i>
                </button>
            </div>
        </div>

        <button type="submit" class="btn btn-reset w-100">
            <i class="bi bi-key-fill me-2"></i>Reset Password
        </button>

        <div class="text-center mt-3">
            <a href="holderLogin.jsp">
                <i class="bi bi-arrow-left"></i> Back to Login
            </a>
        </div>

    </form>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

// Show / Hide Password
function togglePassword(inputId, iconId) {

    let password = document.getElementById(inputId);
    let icon = document.getElementById(iconId);

    if (password.type === "password") {
        password.type = "text";
        icon.className = "bi bi-eye-slash";
    } else {
        password.type = "password";
        icon.className = "bi bi-eye";
    }
}

// Form Validation
document.getElementById("forgotForm").addEventListener("submit", function(event) {

    event.preventDefault();

    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirmPassword").value;

    if (password.length < 8) {
        alert("Password must contain at least 8 characters!");
        return;
    }

    if (password !== confirmPassword) {
        alert("New Password and Confirm Password do not match!");
        return;
    }

    alert("Form validation successful! Connect this form to your password reset backend.");

});

</script>

</body>
</html>
