<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/c6eb28a525.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/dashboard.css">
    <title>Dashboard</title>
</head>
<body>


    <c:import url="components/incl/header.jsp"/>

     <!--  Transact Offcanvas: pulls from the left  -->
        <c:import url="components/transact_offcanvas.jsp"/>

     <!--  Add Accounts Offcanvas: pulls from the right  -->
        <c:import url="components/add_accounts_offcanvas.jsp"/>

    <!-- Container -->
    <div class="container">

             <!--Display Message-->
                 <c:if test="${success != null}">
                    <div class="alert alert-success text-center border border-success">
                        <b>${success}</b>
                    </div>
                 </c:if>
                <!-- End of Display Message-->

        <!--Display Message-->
         <c:if test="${error != null}">
            <div class="alert alert-danger text-center border border-danger">
                <b>${error}</b>
            </div>
         </c:if>
        <!-- End of Display Message-->

     </div>
    <!-- End of Container -->

     <c:choose>
        <c:when test="${fn:length(userAccounts) > 0}">
           <!-- Display Accounts -->
        <c:import url="components/accounts_display.jsp"/>
        </c:when>
        <c:otherwise>
        <!-- Dont Display Accounts -->
        <c:import url="components/no_accounts_display.jsp"/>
        </c:otherwise>
     </c:choose>









    <c:import url="components/incl/footer.jsp"/>

