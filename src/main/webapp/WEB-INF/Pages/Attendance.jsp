<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Employee Attendance</title>


<!-- ================= BOOTSTRAP 5 ================= -->

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">


<!-- ================= BOOTSTRAP ICONS ================= -->

<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">


<style>

    /* =====================================================
       BODY
    ===================================================== */

    body {

        margin: 0;

        min-height: 100vh;

        font-family: 'Segoe UI', Arial, sans-serif;

        background:

            linear-gradient(
                rgba(15, 23, 42, 0.82),
                rgba(30, 41, 59, 0.88)
            ),

            url("https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=2000&q=85");

        background-size: cover;

        background-position: center;

        background-attachment: fixed;

        display: flex;

        justify-content: center;

        align-items: center;

        padding: 40px 15px;

    }


    /* =====================================================
       MAIN CARD
    ===================================================== */

    .attendance-card {

        width: 100%;

        max-width: 1150px;

        background: rgba(255, 255, 255, 0.97);

        border-radius: 28px;

        overflow: hidden;

        box-shadow:
            0 25px 70px rgba(0, 0, 0, 0.40);

        animation: cardEntry 0.8s ease;

    }


    @keyframes cardEntry {

        from {

            opacity: 0;

            transform:
                translateY(50px)
                scale(0.96);

        }

        to {

            opacity: 1;

            transform:
                translateY(0)
                scale(1);

        }

    }


    /* =====================================================
       LEFT SECTION
    ===================================================== */

    .left-section {

        min-height: 700px;

        background:

            linear-gradient(
                rgba(29, 78, 216, 0.82),
                rgba(30, 64, 175, 0.92)
            ),

            url("https://images.unsplash.com/photo-1521737711867-e3b97375f902?auto=format&fit=crop&w=1200&q=85");

        background-size: cover;

        background-position: center;

        color: white;

        display: flex;

        flex-direction: column;

        justify-content: center;

        align-items: center;

        padding: 45px;

        text-align: center;

    }


    /* =====================================================
       EMPLOYEE IMAGE
    ===================================================== */

    .employee-image {

        width: 190px;

        height: 190px;

        object-fit: cover;

        border-radius: 50%;

        border: 7px solid rgba(255,255,255,0.9);

        box-shadow:
            0 15px 40px rgba(0,0,0,0.35);

        animation: floating 3s ease-in-out infinite;

    }


    @keyframes floating {

        0%,100% {

            transform: translateY(0);

        }

        50% {

            transform: translateY(-12px);

        }

    }


    /* =====================================================
       LEFT HEADING
    ===================================================== */

    .left-section h1 {

        font-size: 38px;

        font-weight: 700;

        margin-top: 28px;

        letter-spacing: 1px;

    }


    .left-section p {

        font-size: 16px;

        line-height: 1.7;

        opacity: 0.92;

        max-width: 380px;

    }


    /* =====================================================
       CLOCK
    ===================================================== */

    .live-clock {

        margin-top: 25px;

        padding: 13px 28px;

        border-radius: 50px;

        background: rgba(255,255,255,0.18);

        border: 1px solid rgba(255,255,255,0.25);

        backdrop-filter: blur(10px);

        font-size: 21px;

        font-weight: 600;

        box-shadow:
            0 8px 25px rgba(0,0,0,0.15);

    }


    /* =====================================================
       SECURITY BOX
    ===================================================== */

    .security-box {

        margin-top: 30px;

        padding: 15px 22px;

        border-radius: 15px;

        background: rgba(255,255,255,0.12);

        border: 1px solid rgba(255,255,255,0.18);

    }


    /* =====================================================
       RIGHT SECTION
    ===================================================== */

    .right-section {

        padding: 45px;

    }


    .page-title {

        font-weight: 700;

        color: #1e293b;

        margin-bottom: 5px;

    }


    .page-subtitle {

        color: #64748b;

        margin-bottom: 30px;

    }


    /* =====================================================
       FORM
    ===================================================== */

    .form-label {

        font-weight: 600;

        color: #334155;

    }


    .form-control,
    .form-select {

        height: 48px;

        border-radius: 12px;

        border: 1px solid #dbe3ef;

        padding-left: 15px;

        transition: all 0.3s ease;

    }


    .form-control:focus,
    .form-select:focus {

        border-color: #2563eb;

        box-shadow:
            0 0 0 4px rgba(37,99,235,0.12);

        transform: translateY(-2px);

    }


    .input-group-text {

        background: #eff6ff;

        border: 1px solid #dbe3ef;

        color: #2563eb;

        border-radius: 12px 0 0 12px;

    }


    /* =====================================================
       STATUS
    ===================================================== */

    .status-container {

        display: flex;

        gap: 12px;

        flex-wrap: wrap;

    }


    .status-option {

        position: relative;

        flex: 1;

        min-width: 105px;

    }


    .status-option input {

        display: none;

    }


    .status-option label {

        display: block;

        padding: 13px;

        text-align: center;

        border: 2px solid #e2e8f0;

        border-radius: 14px;

        cursor: pointer;

        font-weight: 600;

        transition: 0.3s ease;

    }


    .status-option label:hover {

        transform: translateY(-3px);

        border-color: #2563eb;

    }


    .status-option input:checked + label {

        background: #2563eb;

        color: white;

        border-color: #2563eb;

        box-shadow:
            0 8px 20px rgba(37,99,235,0.25);

        transform: scale(1.03);

    }


    /* =====================================================
       BUTTON
    ===================================================== */

    .btn-mark {

        height: 52px;

        border: none;

        border-radius: 13px;

        font-size: 17px;

        font-weight: 600;

        background:

            linear-gradient(
                135deg,
                #2563eb,
                #4f46e5
            );

        color: white;

        transition: 0.3s ease;

        box-shadow:
            0 8px 20px rgba(37,99,235,0.25);

    }


    .btn-mark:hover {

        transform: translateY(-3px);

        box-shadow:
            0 12px 25px rgba(37,99,235,0.35);

        color: white;

    }


    .btn-reset {

        height: 52px;

        border-radius: 13px;

        font-weight: 600;

    }


    /* =====================================================
       SUCCESS MESSAGE
    ===================================================== */

    .success-message {

        display: none;

        margin-top: 20px;

        padding: 15px;

        border-radius: 12px;

        background: #dcfce7;

        color: #166534;

        border-left: 5px solid #22c55e;

        animation: successAnimation 0.5s ease;

    }


    @keyframes successAnimation {

        from {

            opacity: 0;

            transform: scale(0.9);

        }

        to {

            opacity: 1;

            transform: scale(1);

        }

    }


    /* =====================================================
       RESPONSIVE
    ===================================================== */

    @media(max-width: 768px) {

        .left-section {

            min-height: 500px;

            padding: 35px 25px;

        }


        .right-section {

            padding: 30px 22px;

        }


        .employee-image {

            width: 150px;

            height: 150px;

        }


        .left-section h1 {

            font-size: 30px;

        }

    }

</style>

</head>

<body>



  <script>
  
   let msg="${atmsg}";
   if(msg && msg.trim() !=" ")
	   {
	   alert(msg);
	   }
  </script>

<!-- =========================================================
     MAIN ATTENDANCE CARD
========================================================= -->

<div class="attendance-card">


<div class="row g-0">


    <!-- =================================================
         LEFT SECTION
    ================================================= -->

    <div class="col-lg-5 left-section">


        <!-- ONLINE EMPLOYEE IMAGE -->

        <img

            src="https://static.vecteezy.com/system/resources/thumbnails/047/268/873/small_2x/confident-software-developer-coding-at-workstation-with-enthusiasm-free-photo.jpeg"

            class="employee-image"

            alt="Employee">


        <h1>

            <i class="bi bi-calendar-check-fill"></i>

            Attendance

        </h1>


        <p>

            Mark your daily attendance quickly,
            securely and efficiently.

        </p>


        <!-- LIVE CLOCK -->

        <div class="live-clock">

            <i class="bi bi-clock-fill me-2"></i>

            <span id="liveClock">
                00:00:00
            </span>

        </div>


        <!-- SECURITY INFORMATION -->

        <div class="security-box">

            <i class="bi bi-shield-check fs-4"></i>

            <small class="d-block mt-2">

                Your attendance information is
                securely recorded.

            </small>

        </div>


    </div>


    <!-- =================================================
         RIGHT SECTION
    ================================================= -->

    <div class="col-lg-7 right-section">


        <h2 class="page-title">

            <i class="bi bi-person-check-fill text-primary"></i>

            Employee Attendance

        </h2>


        <p class="page-subtitle">

            Please fill the details below
            to mark your attendance.

        </p>


        <!-- =================================================
             FORM
        ================================================= -->

        <form

            action="markAttendance"

            method="post"

            id="attendanceForm">


            <!-- ================= EMPLOYEE ID + NAME ================= -->

            <div class="row">


                <!-- Employee ID -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Employee ID

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-person-badge-fill"></i>

                        </span>


                        <input

                            type="text"

                            name="empId"

                            class="form-control"

                            placeholder="Enter Employee ID"

                            required>

                    </div>

                </div>


                <!-- Employee Name -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Employee Name

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-person-fill"></i>

                        </span>


                        <input

                            type="text"

                            name="empName"

                            class="form-control"

                            placeholder="Enter Employee Name"

                            required>

                    </div>

                </div>

            </div>


            <!-- ================= DEPARTMENT + DATE ================= -->

            <div class="row">


                <!-- Department -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Department

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-building-fill"></i>

                        </span>


                        <select

                            name="empDepartment"

                            class="form-select"

                            required>


                            <option value="">

                                Select Department

                            </option>


                            <option>IT</option>

                            <option>HR</option>

                            <option>Finance</option>

                            <option>Marketing</option>

                            <option>Sales</option>

                            <option>Management</option>


                        </select>

                    </div>

                </div>


                <!-- Attendance Date -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Attendance Date

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-calendar3"></i>

                        </span>


                        <input

                            type="date"

                            name="attendDate"

                            id="attendanceDate"

                            class="form-control"

                            required>

                    </div>

                </div>

            </div>


            <!-- ================= STATUS ================= -->

            <div class="mb-4">

                <label class="form-label">

                    Attendance Status

                </label>


                <div class="status-container">


                    <!-- PRESENT -->

                    <div class="status-option">

                        <input

                            type="radio"

                            id="present"

                            name="status"

                            value="Present"

                            checked>


                        <label for="present">

                            <i class="bi bi-check-circle-fill"></i>

                            <br>

                            Present

                        </label>

                    </div>


                    <!-- ABSENT -->

                    <div class="status-option">

                        <input

                            type="radio"

                            id="absent"

                            name="status"

                            value="Absent">


                        <label for="absent">

                            <i class="bi bi-x-circle-fill"></i>

                            <br>

                            Absent

                        </label>

                    </div>


                    <!-- HALF DAY -->

                    <div class="status-option">

                        <input

                            type="radio"

                            id="halfday"

                            name="status"

                            value="Half Day">


                        <label for="halfday">

                            <i class="bi bi-clock-history"></i>

                            <br>

                            Half Day

                        </label>

                    </div>


                    <!-- LEAVE -->

                    <div class="status-option">

                        <input

                            type="radio"

                            id="leave"

                            name="status"

                            value="Leave">


                        <label for="leave">

                            <i class="bi bi-calendar-x-fill"></i>

                            <br>

                            Leave

                        </label>

                    </div>


                </div>

            </div>


            <!-- ================= CHECK IN / OUT ================= -->

            <div class="row">


                <!-- Check In -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Check-In Time

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-box-arrow-in-right"></i>

                        </span>


                        <input

                            type="time"

                            name="checkIn"

                            id="checkIn"

                            class="form-control"

                            required>

                    </div>

                </div>


                <!-- Check Out -->

                <div class="col-md-6 mb-3">

                    <label class="form-label">

                        Check-Out Time

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-box-arrow-right"></i>

                        </span>


                        <input

                            type="time"

                            name="checkOut"

                            class="form-control">

                    </div>

                </div>

            </div>


            <!-- ================= WORK LOCATION ================= -->

            <div class="mb-3">

                <label class="form-label">

                    Work Location

                </label>


                <div class="input-group">

                    <span class="input-group-text">

                        <i class="bi bi-geo-alt-fill"></i>

                    </span>


                    <select

                        name="workLocation"

                        class="form-select"

                        required>


                        <option value="">

                            Select Work Location

                        </option>


                        <option>Office</option>

                        <option>Work From Home</option>

                        <option>Client Location</option>

                        <option>Other</option>


                    </select>

                </div>

            </div>


            <!-- ================= REMARKS ================= -->

            <div class="mb-4">

                <label class="form-label">

                    Remarks

                </label>


                <textarea

                    name="remarks"

                    class="form-control"

                    rows="3"

                    placeholder="Enter remarks if required..."></textarea>

            </div>


            <!-- ================= BUTTONS ================= -->

            <div class="row g-2">


                <div class="col-md-8">

                    <button

                        type="submit"

                        class="btn btn-mark w-100">


                        <i class="bi bi-check2-circle"></i>

                        &nbsp;

                        Mark Attendance

                    </button>

                </div>


                <div class="col-md-4">

                    <button

                        type="reset"

                        class="btn btn-outline-secondary btn-reset w-100">


                        <i class="bi bi-arrow-clockwise"></i>

                        &nbsp;

                        Reset

                    </button>

                </div>


            </div>


            <!-- ================= SUCCESS MESSAGE ================= -->

            <div

                id="successMessage"

                class="success-message">


                <i class="bi bi-check-circle-fill"></i>

                <strong>

                    Attendance marked successfully!

                </strong>


            </div>


        </form>

    </div>

</div>
```

</div>

<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>


/* =====================================================
   LIVE CLOCK
===================================================== */

function updateClock() {

    const now = new Date();

    let hours = now.getHours();

    let minutes = now.getMinutes();

    let seconds = now.getSeconds();


    hours = String(hours).padStart(2, '0');

    minutes = String(minutes).padStart(2, '0');

    seconds = String(seconds).padStart(2, '0');


    document.getElementById("liveClock").innerText =

        hours + ":" +
        minutes + ":" +
        seconds;

}


setInterval(updateClock, 1000);

updateClock();



/* =====================================================
   CURRENT DATE
===================================================== */

const today = new Date();


const year = today.getFullYear();


const month = String(

    today.getMonth() + 1

).padStart(2, '0');


const day = String(

    today.getDate()

).padStart(2, '0');


document.getElementById("attendanceDate").value =

    year + "-" +
    month + "-" +
    day;



/* =====================================================
   AUTO CHECK-IN TIME
===================================================== */

let currentHours =

    String(today.getHours()).padStart(2, '0');


let currentMinutes =

    String(today.getMinutes()).padStart(2, '0');


document.getElementById("checkIn").value =

    currentHours + ":" +
    currentMinutes;



/* =====================================================
   FORM VALIDATION
===================================================== */

document.getElementById("attendanceForm")

.addEventListener("submit", function(event) {


    const employeeId =

        document.querySelector(

            'input[name="employeeId"]'

        ).value.trim();


    const employeeName =

        document.querySelector(

            'input[name="employeeName"]'

        ).value.trim();


    if (

        employeeId === "" ||

        employeeName === ""

    ) {

        event.preventDefault();


        alert(

            "Please enter Employee ID and Employee Name."

        );


        return;

    }

});



/* =====================================================
   STATUS ANIMATION
===================================================== */

const statusInputs =

    document.querySelectorAll(

        'input[name="status"]'

    );


statusInputs.forEach(function(input) {


    input.addEventListener(

        "change",

        function() {


            document.querySelectorAll(

                ".status-option label"

            ).forEach(function(label) {


                label.style.transform =

                    "scale(1)";

            });


            this.nextElementSibling.style.transform =

                "scale(1.05)";

        }

    );

});


</script>

<!-- =====================================================
     BOOTSTRAP JS
===================================================== -->

<script

    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>

</body>

</html>
