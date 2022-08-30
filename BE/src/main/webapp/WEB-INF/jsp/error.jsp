<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/c6eb28a525.js" crossorigin="anonymous"></script>
   <style>
    *{
        box-sizing: border-box;
        font-family: Comfortaa;
    }
    body{
        height: 100vh;
        background-image: url('../images/Cream\ Aesthetic\ Desktop\ Wallpaper.png');
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
    }
    .card{
        box-shadow: 0px 3px 6px black ;
    }
    .card .card-text{
       font-size: 18px;
    }
   </style>
    <title>Errors</title>
</head>
<body class="d-flex align-items-center justify-content-center">

    <!-- Card: Error Card-->
    <div class="card col-4 alert alert-danger border border-danger text-danger">
        <!-- Card Title -->
        <h3 class="card-title">
            <i class="fa fa-window-close"></i> Errors:
        </h3>
        <hr>
        <!-- End of Card Title -->
        <!-- Card Body -->
        <div class="card-body">
            <!-- Card Text -->
            <p class="card-text">
                        <!--Display Message-->
                         <c:if test="${requestScope.error != null}">
                            <div class="alert alert-danger text-center border border-danger">
                                <b>${requestScope.error}</b>
                            </div>
                         </c:if>
                        <!-- End of Display Message-->
            </p>
            <!-- End of Card Text -->
            <hr>
            <!-- Back to Login Page -->
            <a href="/login" class="btn btn-sm btn-danger">
                <i class="fa fa-arrow-alt-circle-left me-1"></i> Back to Login
            </a>
            <!--End of Back to Login Page -->
        </div>
        <!-- End of Card Body -->
    </div>
    <!-- End of Card: Error Card-->
</body>
</html>