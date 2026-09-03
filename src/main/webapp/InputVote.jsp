<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">

            <div class="card shadow">
                <div class="card-header bg-primary text-white text-center">
                    <h3 class="mb-0">Registration Form</h3>
                </div>

                <div class="card-body p-4">

                    <form action="VoteServlet" method="post">

                        <!-- Name -->
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" 
                                   class="form-control" 
                                   id="name"
                                   name="name"
                                   placeholder="Enter your name">
                                   
                        </div>

                        <!-- Birth Year -->
                        <div class="mb-3">
                            <label for="year" class="form-label">Birth Year</label>
                            <input type="text" 
                                   class="form-control" 
                                   id="year"
                                   name="birthyear"
                                   placeholder="Enter your birth year">
                                   
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <label class="form-label">Gender</label>

                            <div class="form-check">
                                <input class="form-check-input" 
                                       type="radio" 
                                       name="gender" 
                                       id="male"
                                       value="male">
                                       
                                <label class="form-check-label" for="male">
                                    Male
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" 
                                       type="radio" 
                                       name="gender" 
                                       id="female"
                                       value="female">
                                <label class="form-check-label" for="female">
                                    Female
                                </label>
                            </div>
                        </div>

                        <!-- Submit -->
                        <div class="d-grid">
                            <input type="submit" 
                                   value="Submit" 
                                   class="btn btn-primary">
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>