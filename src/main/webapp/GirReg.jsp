<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Girnar Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<style>
    body {
        background: linear-gradient(135deg, #fff8e7 0%, #ffe9c7 100%);
        min-height: 100vh;
        display: flex;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }
    .reg-card {
        max-width: 480px;
        margin: 40px auto;
        border: none;
        border-radius: 14px;
        box-shadow: 0 8px 24px rgba(180, 120, 20, 0.15);
        overflow: hidden;
    }
    .reg-header {
        background: linear-gradient(90deg, #d97706, #f59e0b);
        color: #fff;
        padding: 22px 20px;
        text-align: center;
    }
    .reg-header h3 {
        margin: 0;
        font-weight: 600;
        letter-spacing: 0.5px;
    }
    .reg-header p {
        margin: 4px 0 0;
        font-size: 0.85rem;
        opacity: 0.9;
    }
    .reg-body {
        padding: 30px 28px;
        background: #fff;
    }
    .form-label {
        font-weight: 500;
        color: #7c4a03;
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
    .form-check-label {
        margin-right: 20px;
    }
	.error{
		color:red;
		font-size: 14px;
	}
</style>
</head>
<body>

<div class="container">
    <div class="card reg-card">
        <div class="reg-header">
            <h3>&#128330; Registration Form</h3>
            <p>Devotional &amp; Spiritual Activity Sign-up</p>
        </div>
        <div class="reg-body">
            <form action="GirRegController" method="post">

                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Enter your full name"  value="${nameValue}"/>
					<span class="error">${nameerr}</span>
                </div>

                <div class="mb-3">
                    <label class="form-label d-block">Gender</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" ${genValue=="male"?"checked":""} name="gender" id="genderMale" value="male"/>
                        <label class="form-check-label" for="genderMale">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" ${genValue=="female"?"checked":""} name="gender" id="genderFemale" value="female"/>
                        <label class="form-check-label" for="genderFemale">Female</label>
                    </div>
                    <span class="error">${generr}</span>
                </div>

                <div class="mb-3">
                    <label class="form-label">City</label>
                    <select name="city" class="form-select">
                        <option value="-1">----Select City----</option>
                        <option value="Ahmedabad">Ahmedabad</option>
                        <option value="Gandhinagar">Gandhinagar</option>
                        <option value="HMT">HMT</option>
                        <option value="Surat">Surat</option>
                        <option value="Rajkot">Rajkot</option>
                    </select>
                   <span class="error"> ${cityError}</span>
                </div>

                <div class="mb-4">
                    <label class="form-label">Contact</label>
                    <input type="text" value="${conValue}" class="form-control" name="contact" placeholder="Mobile number" />
                	<span class="error">${conerr }</span>
                </div>

                <div class="d-grid">
                    <input type="submit" class="btn btn-devotion" value="Register"/>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>