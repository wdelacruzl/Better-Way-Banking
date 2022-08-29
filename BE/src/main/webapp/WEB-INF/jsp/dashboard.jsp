<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/c6eb28a525.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/dashboard.css">
    <title>Dashboard</title>
</head>
<body>

    <!-- Main Page Header -->
    <header class="main-page-header mb-3">
        <!-- Container -->
        <div class="container d-flex align-items-center">
        <div class="company-name">
            Better Way Banking
        </div>
        <!-- Nav -->
        <nav class="navegation">
            <li><a href="">Dashboard</a></li>
            <li><a href="">Payment History</a></li>
            <li><a href="">Transaction History</a></li>
        </nav>
        <!-- End of Nav -->

        <!-- Display Name -->
        <div class="display-name ms-auto text-white">
            <i class="fa fa-circle text-success me-2"></i> Welcome: <span>Wendy Garcia </span>
        </div>
        <!-- End of Display Name -->

        <!-- Logout Button -->
        <a href="" class="btn btn-sm text-white ms-2">
            <i class="fa fa-sign-out me-2"></i> Sign Out
        </a>
        <!-- End of Logout Button -->
        </div>
        <!-- Container -->
    </header>
    <!-- End of Main Page Header -->

     <!-- Start of Transact OffCanvas -->
          <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title text-white" id="offcanvasExampleLabel">Transact</h5>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
                <!-- Offcanvas: Transact Body -->
                <div class="offcanvas-body">
                    <small class="card-text text-white" >
                        Choose an option below to perform a transaction
                    </small>
                    <select name="transact-type" class="form-control my-3" id="transact-type">
                        <option value="">-- Select Transaction Type --</option>
                        <option value="payment">Payment</option>
                        <option value="transfer">Transfer</option>
                        <option value="deposit">Deposit</option>
                        <option value="withdraw">Withdraw</option>
                    </select>

                    <!-- Card: Payment Card -->
                    <div class="card payment-card">
                        <div class="card-body">
                            <div class="form-group mb-2">
                                <label for="">Account Holder / Beneficiary</label>
                                <input type="text" name="beneficiary"  class="form-control" placeholder="Enter Account Holder's Name">
                            </div>
                            <div class="form-group mb-2">
                                <label for="">Account Number</label>
                                <input type="text" name="account_number" class="form-control" placeholder="Enter Account Number ">
                            </div>

                            <div class="form-group">
                                <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control" id="">
                                <option value="">-- Select Account --</option>
                            </select>
                            </div>
                            <!-- End of Select Account Option -->


                            <div class="form-group mb-2">
                                <label for="">Reference</label>
                                <input type="text" name="reference"  class="form-control" placeholder="Enter Reference">
                            </div>
                            <div class="form-group mb-2">
                                <label for="">Payment Amount</label>
                                <input type="text" name="payment_amount" class="form-control" placeholder="Enter Payment Amount ">
                            </div>

                            <div class="form-group mb-2">
                                <button id="transact-btn" class="btn btn-md"> Pay</button>
                            </div>

                        </div>
                    </div>
                    <!-- End of Card: Payment Card -->

                    <!-- Card: transfer Card -->
                    <div class="card transfer-card">
                        <div class="card-body">

                            <div class="form-group">
                                <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control" id="">
                                <option value="">-- Select Account --</option>
                            </select>
                            </div>
                            <!-- End of Select Account Option -->

                            <div class="form-group">
                                <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control" id="">
                                <option value="">-- Select Account --</option>
                            </select>
                            </div>
                            <!-- End of Select Account Option -->

                            <div class="form-group mb-2">
                                <label for="">transfer Amount</label>
                                <input type="text" name="transfer
                                _amount" class="form-control" placeholder="Enter transfer
                                 Amount ">
                            </div>

                            <div class="form-group mb-2">
                                <button id="transact-btn" class="btn btn-md"> Transfer</button>
                            </div>

                        </div>
                    </div>
                    <!-- End of Card: transfer Card -->

                    <!-- Card: Deposit Card -->
                    <div class="card deposit-card">
                        <div class="card-body">

                            <!-- Deposit Form Group -->
                            <form class="deposit-form">
                                <div class="form-group mb-2">
                                    <label for=""> Deposit Amount </label>
                                    <input type="text" name="deposit
                                                    _amount" class="form-control" placeholder="Enter Deposit Amount ">
                                </div>


                                <div class="form-group">
                                    <label for="">Select Account</label>
                                    <!-- Select Account Option -->
                                    <select name="account_id" class="form-control" id="">
                                        <option value="">-- Select Account --</option>
                                    </select>
                                </div>
                                <!-- End of Select Account Option -->

                                <div class="form-group my-2">
                                    <button id="transact-btn" class="btn btn-md"> Deposit</button>
                                </div>
                            </form>
                            <!-- End of Deposit Form Group -->

                        </div>
                    </div>
                    <!-- End of Card: deposit Card -->


                    <!-- Card: Withdraw Card -->
                    <div class="card withdraw-card">
                        <div class="card-body">

                            <!-- withdraw Form Group -->
                            <form class="withdraw-form">
                                <div class="form-group mb-2">
                                    <label for=""> Withdrawal Amount </label>
                                    <input type="text" name="withdrawal_amount" class="form-control" placeholder="Enter Withdrawal Amount ">
                                </div>


                                <div class="form-group">
                                    <label for="">Select Account</label>
                                    <!-- Select Account Option -->
                                    <select name="account_id" class="form-control" id="">
                                        <option value="">-- Select Account --</option>
                                    </select>
                                </div>
                                <!-- End of Select Account Option -->

                                <div class="form-group my-2">
                                    <button id="transact-btn" class="btn btn-md"> Withdraw</button>
                                </div>
                            </form>
                            <!-- End of withdraw Form Group -->

                        </div>
                    </div>
                    <!-- End of Card: withdraw Card -->



                </div>
                <!-- End of Offcanvas: Transact Body -->
          </div>
    <!-- End of Transact OffCanvas -->

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
                            <form action="" class="add-account-form">
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


    <!-- Container -->
<div class="container d-flex">

    <button id="add-account-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
            aria-controls="offcanvasRight"> <i class="fa fa-credit-card"></i> Add New Account </button>

      <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
      <i class="fa fa-wallet"></i>  Transact
      </button>


</div>
    <!-- End of Container -->

    <!-- Container: Total Accounts Balance Display -->
    <div class="container d-flex py-3">
       <h2 class="me-auto"> Total Amount Balance:</h2>
       <h2 class="ms-auto"> $0.00</h2>
    </div>
    <!-- End of Container: Total Accounts Balance Display -->

    <!-- Container: Accordion Menu/ Drop Down -->
    <div class="container">
    <div class="accordion accordion-flush" id="accordionFlushExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="flush-headingOne">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
              Accordion Item #1
            </button>
          </h2>
          <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="flush-headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
              Accordion Item #2
            </button>
          </h2>
          <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="flush-headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
              Accordion Item #3
            </button>
          </h2>
          <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
          </div>
        </div>
      </div>
    </div>
      <!-- End of Container: Accordion Menu/ Drop Down -->

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
      <script src="js/main.js"></script>
    </body>
</html>