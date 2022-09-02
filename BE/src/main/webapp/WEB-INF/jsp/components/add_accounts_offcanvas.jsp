     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
     <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>

 <!-- Start of Right Side OffCanvas: Accounts Form Container -->
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
                <div class="offcanvas-header">
                    <h5 id="offcanvasRightLabel" class="text-white"> Create / Add an Account</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <!-- Right Side Offcanvas: Accounts Form Body -->
                <div class="offcanvas-body">
                    <!-- Cards: Accounts Form Card -->
                    <div class="card">
                        <!-- Card Body -->
                        <div class="card-body">
                            <form action="/account/create_account" method="POST" class="add-account-form">
                                <!-- form group -->
                                <div class="form-group mb-3">
                                    <label for=""> Account Name</label>
                                    <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name">
                                </div>
                                <!-- end of form group -->

                                <!-- form group -->
                                <div class="form-group mb-3">
                                    <label for=""> Account Name</label>
                                    <select name="account_type" class="form-control" id="">
                                        <option value="">-- Select Account Type --</option>
                                        <option value="check">Check</option>
                                        <option value="savings">Savings</option>
                                        <option value="business">Business</option>
                                    </select>
                                </div>
                                <!-- end of form group -->
                                <div class="form-group my-2">
                                    <button id="transact-btn" class="btn btn-md"> Add Account</button>
                                </div>
                            </form>
                        </div>
                        <!-- End of Card Body -->
                    </div>
                    <!-- End of Cards: Accounts Form Card -->
                </div>
                <!-- End of Right Side Offcanvas: Accounts Form Body -->
            </div>
    <!-- End of Right Side OffCanvas: Accounts Form Container -->
