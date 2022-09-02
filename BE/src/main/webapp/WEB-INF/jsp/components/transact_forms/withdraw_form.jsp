     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
     <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>


<!-- Card: Withdraw Card -->
                    <div class="card withdraw-card">
                        <div class="card-body">

                            <!-- withdraw Form Group -->
                            <form action="/transact/withdraw" method="POST" class="withdraw-form">
                                <div class="form-group mb-2">
                                    <label for=""> Withdrawal Amount </label>
                                    <input type="text" name="withdrawal_amount" class="form-control" placeholder="Enter Withdrawal Amount ">
                                </div>


                                      <div class="form-group">
                                         <label for="">Withdrawing From:</label>
                                         <!-- Select Account Option -->
                                           <select name="account_id" class="form-control" id="">
                                              <option value="">-- Select Account --</option>
                                              <c:if test="${userAccounts != null}">
                                                     <c:forEach items="${userAccounts}" var="selectAccount">
                                                     <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                                 </c:forEach>
                                              </c:if>
                                            </select>
                                      </div>

                                <div class="form-group my-2">
                                    <button id="transact-btn" class="btn btn-md"> Withdraw</button>
                                </div>
                            </form>
                            <!-- End of withdraw Form Group -->

                        </div>
                    </div>
                    <!-- End of Card: withdraw Card -->