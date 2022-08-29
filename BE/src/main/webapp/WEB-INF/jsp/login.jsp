<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/c6eb28a525.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/register.css">
    <title>Login</title>
</head>
<body class="d-flex align-items-center ml-3">

    <!-- Card: Login Form Card -->
    <div class="card login-form-card col-5 bg-transparent border-0">
        <!-- Card Body -->
    <div class="card-body">
        <!-- Form Header  -->
        <h1 class="form-header card-title mb-3">
            <i class="fa fa-user-circle"></i> Login
        </h1>
         <!-- End of Form Header  -->

         <!-- Login Form -->
            <form action="" class="login-form">

            <!-- Row 1 -->
            <div class="row">
            <!-- Form Group -->
                <div class="form-group col">
                    <input type="email" name="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                </div>
                <!-- End of Form Group -->
            </div>
            <!-- End of Row 1 -->

             <!-- Row 2 -->
             <div class="row">

                <!-- Form Group -->
                    <div class="form-group col">
                        <input type="password" name="password" class="form-control form-control-lg" placeholder="Enter password"/>
                    </div>
                <!-- End of Form Group -->

            </div>
                <!-- End of Row 2 -->

            <!-- Row 4 -->
             <div class="row">
              <!-- Form Group -->
               <div class="form-group col">
                   <button class="btn btn-lg"> Login</button>
                </div>
                <!-- End of Form Group -->
            </div>
            <!-- End of Row 4 -->

            </form>
          <!-- End of Login Form -->

          <!-- Card Text -->
          <p class="card-text text-white my-2">
            Dont have an account? <span class="ms-2 text-warning1"><a href="/register"
                class="btn btn-sm text-warning1"> Sign up</a></span>
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
     <!-- End of Card: Login Form Card -->
</body>
</html>