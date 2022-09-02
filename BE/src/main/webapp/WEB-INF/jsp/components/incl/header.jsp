  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
  <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>

   <!-- Main Page Header -->
    <header class="main-page-header mb-3">
        <!-- Container -->
        <div class="container d-flex align-items-center">
        <div class="company-name">
            Better Way Banking
        </div>
        <!-- Nav -->
        <nav class="navegation">
            <li><a href="/app/dashboard">Dashboard</a></li>
            <li><a href="/app/payment_history">Payment History</a></li>
            <li><a href="/app/transact_history">Transaction History</a></li>
        </nav>
        <!-- End of Nav -->

        <!-- Display Name -->
        <div class="display-name ms-auto text-white">
            <i class="fa fa-circle text-success me-2"></i> Welcome: <span>${user.first_name} ${user.last_name}</span>
        </div>
        <!-- End of Display Name -->

        <!-- Logout Button -->
        <a href="/logout" class="btn btn-sm text-white ms-2">
            <i class="fa fa-sign-out me-2"></i> Sign Out
        </a>
        <!-- End of Logout Button -->
        </div>
        <!-- Container -->
    </header>
    <!-- End of Main Page Header -->

