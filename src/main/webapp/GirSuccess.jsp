<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<style>
    body {
        background: linear-gradient(135deg, #fff8e7 0%, #ffe9c7 100%);
        min-height: 100vh;
        display: flex;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }
    .success-card {
        max-width: 480px;
        margin: 40px auto;
        border: none;
        border-radius: 14px;
        box-shadow: 0 8px 24px rgba(180, 120, 20, 0.15);
        overflow: hidden;
        text-align: center;
    }
    .success-header {
        background: linear-gradient(90deg, #d97706, #f59e0b);
        color: #fff;
        padding: 26px 20px;
    }
    .success-header .icon {
        font-size: 3rem;
        display: block;
        margin-bottom: 6px;
    }
    .success-header h3 {
        margin: 0;
        font-weight: 600;
    }
    .success-body {
        padding: 30px 28px;
        background: #fff;
    }
    .success-body p {
        color: #6b4c1f;
        font-size: 1.05rem;
        margin-bottom: 22px;
    }
    .details-table {
        text-align: left;
        margin-bottom: 24px;
    }
    .details-table td {
        padding: 6px 4px;
        font-size: 0.95rem;
    }
    .details-table td.label {
        font-weight: 600;
        color: #7c4a03;
        width: 40%;
    }
    .btn-devotion {
        background: #d97706;
        border: none;
        color: #fff;
        font-weight: 600;
        letter-spacing: 0.5px;
    }
    .btn-devotion:hover {
        background: #b45f04;
        color: #fff;
    }
</style>
</head>
<body>

<div class="container">
    <div class="card success-card">
        <div class="success-header">
            <span class="icon">&#10004;&#65039;</span>
            <h3>Registration Successful</h3>
        </div>
        <div class="success-body">
            <p>Thank you for registering. Your details have been recorded successfully.</p>

            <table class="details-table w-100">
                <tr>
                    <td class="label">Name</td>
                    <td>${nameValue}</td>
                </tr>
                <tr>
                    <td class="label">Gender</td>
                    <td>${genValue}</td>
                </tr>
                <tr>
                    <td class="label">City</td>
                    <td>${cityValue}</td>
                </tr>
                <tr>
                    <td class="label">Contact</td>
                    <td>${conValue}</td>
                </tr>
            </table>

            <a href="GirReg.jsp" class="btn btn-devotion">Register Another</a>
        </div>
    </div>
</div>

</body>
</html>