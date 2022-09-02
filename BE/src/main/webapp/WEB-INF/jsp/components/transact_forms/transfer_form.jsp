     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
     <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>

 <!-- Card: transfer Card -->
                    <div class="card transfer-card">
                        <div class="card-body">
         <!-- Transfer Forms -->
          <!-- Start of Select Account Option -->
        <form action="/transact/transfer" method="POST">
              <div class="form-group">
                 <label for="">Transferring From:</label>
                 <!-- Select Account Option -->
                   <select name="transfer_from" class="form-control" id="">
                      <option value="">-- Select Account --</option>
                      <c:if test="${userAccounts != null}">
                             <c:forEach items="${userAccounts}" var="selectAccount">
                             <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                         </c:forEach>
                      </c:if>
                    </select>
              </div>
                  <!-- End of Select Account Option -->


          <!-- Start of Select Account Option -->
              <div class="form-group">
                 <label for="">Transferring To:</label>
                 <!-- Select Account Option -->
                   <select name="transfer_to" class="form-control" id="">
                      <option value="">-- Select Account --</option>
                      <c:if test="${userAccounts != null}">
                             <c:forEach items="${userAccounts}" var="selectAccount">
                             <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                         </c:forEach>
                      </c:if>
                    </select>
              </div>
                  <!-- End of Select Account Option -->

                            <div class="form-group mb-2">
                                <label for="">Transfer Amount: </label>
                                <input type="text" name="transfer_amount" class="form-control" placeholder="Enter transfer Amount ">
                            </div>

                            <div class="form-group mb-2">
                                <button id="transact-btn" class="btn btn-md"> Transfer</button>
                            </div>
        </form>
            <!-- End of Transfer Forms -->
                        </div>
                    </div>
 <!-- End of Card: transfer Card -->