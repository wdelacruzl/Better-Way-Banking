     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
     <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>


      <!-- Container: No Accounts -->
      <div class="container">
        <!-- Card: No Accounts -->
            <div class="card no-accounts-card">
             <!-- Card: No Accounts -->
                <div class="card-body">
                    <h1 class="card-title">
                        <i class="fas fa-ban text-danger"></i> No Registered Accounts
                    </h1>
                    <hr>
                    <div class="card-text">
                        You do not have any registered accounts currently. <br>
                        Please click below to register / add a new account
                    </div>
                    <br>
                    <button id="add-account-btn" class="btn btn-sm shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
                    aria-controls="offcanvasRight"> <i class="fa fa-credit-card"></i> Add New Account </button>
                </div>
              <!-- Enf of Card: No Accounts -->
            </div>
         <!-- End of Card: No Accounts -->
      </div>
       <!-- End of Container: No Accounts -->