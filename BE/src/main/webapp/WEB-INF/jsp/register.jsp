<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/c6eb28a525.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/register.css">
    <title>Register</title>
</head>
<body class="d-flex align-items-center ml-3">

    <!-- Card: Registration Form Card -->
    <div class="card registration-form-card col-5 bg-transparent border-0">
        <!-- Card Body -->
    <div class="card-body">
        <!-- Form Header  -->
        <h1 class="form-header card-title mb-3">
            <i class="fa fa-edit"></i> Register
        </h1>
         <!-- End of Form Header  -->

         <!-- Registration Form -->      <!-- modelAttribute same as the one in the advisorController binding form fields to the model-->
            <form:form  action="/register" class="reg-form" modelAttribute="registerUser"> <!-- form:form(form tags for spring)-->
                <!-- Row 1 -->
                <div class="row">
                    <!-- Form Group -->
                    <div class="form-group col">      <!-- Path(instead of name) same as the one in the User model-->
                        <form:input type="text" path="first_name" class="form-control form-control-lg" placeholder="Enter First Name"/>
                        <form:errors path="first_name" class="text-white bg-danger" />
                    </div>
                    <!-- End of Form Group -->

               <!-- Form Group -->
                    <div class="form-group col">
                       <form:input type="text" path="last_name" class="form-control form-control-lg" placeholder="Enter Last Name"/>
                       <form:errors path="last_name" class="text-white bg-danger" />
                    </div>
                <!-- End of Form Group -->
            </div>
            <!-- End of Row 1 -->

            <!-- Row 2 -->
            <div class="row">
            <!-- Form Group -->
                <div class="form-group col">
                    <form:input type="email" path="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                    <form:errors path="email" class="text-white-bg-danger" />
                </div>
                <!-- End of Form Group -->
          <!-- End of Form Group -->
            </div>
            <!-- End of Row 2 -->

            <!-- Row 3 -->
             <div class="row">
                <!-- Form Group -->
                    <div class="form-group col">
                        <form:input type="password" path="password" class="form-control form-control-lg" placeholder="Enter password"/>
                        <form:errors path="password" class="text-white bg-danger" />
                    </div>
                <!-- End of Form Group -->

                <!-- Form Group -->
                     <div class="form-group col">
                        <input type="password" name="confirm_password" class="form-control form-control-lg" placeholder="Confirm password"/>
                        <small class="text-white bg-danger">${confirm_pass}</small>
                    </div>
                <!-- End of Form Group -->
            </div>
                <!-- End of Row 3 -->

            <!-- Row 4 -->
             <div class="row">
              <!-- Form Group -->
               <div class="form-group col">
                   <button class="btn btn-lg"> Register</button>
                </div>
                <!-- End of Form Group -->
            </div>
            <!-- End of Row 4 -->

            </form:form>
          <!-- End of Registration Form -->

          <!-- Card Text -->
          <p class="card-text text-white my-2">
            Already have an account? <span class="ms-2 text-warning1"><a href="/login"
                class="btn btn-sm text-warning1"> Sign In</a></span>
          </p>
          <!-- End of Card Text -->

          <!-- Back Button To Landing Page -->
          <small class="text-warning1">
            <i class="fa fa-arrow-alt-circle-left"></i> <a href="/" class="btn btn-sm text-warning1">Back</a>
          </small>
          <!-- End of Back Button To Landing Page -->
    </div>
         <!-- End of Card Body -->
    </div>
     <!-- End of Card: Registration Form Card -->
</body>
</html>