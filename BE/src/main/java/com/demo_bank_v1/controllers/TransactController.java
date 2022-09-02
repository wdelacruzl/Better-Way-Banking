package com.demo_bank_v1.controllers;

import com.demo_bank_v1.models.User;
import com.demo_bank_v1.repository.AccountRepository;
import com.demo_bank_v1.repository.PaymentRepository;
import com.demo_bank_v1.repository.TransactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

@Controller
@RequestMapping("/transact")
public class TransactController {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private PaymentRepository paymentRepository;

    @Autowired
    private TransactRepository transactRepository;

    private LocalDateTime currentDateTime = LocalDateTime.now();

    @PostMapping("/deposit")
    public String deposit(@RequestParam("deposit_amount") String depositAmount,
                          @RequestParam("account_id") String accountID,
                          HttpSession session,
                          RedirectAttributes redirectAttributes){

        //TODO: check for empty strings:
        if (depositAmount.isEmpty() || accountID.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "The Specific Account or Deposit Amount Cannot Be Empty");
            return "redirect:/app/dashboard";
        }
        //TODO: get logged in user:
        User user = (User)session.getAttribute("user");

        //TODO: get current account balance:
        int acc_id = Integer.parseInt(accountID);

        double depositAmountValue = Double.parseDouble(depositAmount);

        //TODO: check if deposit amount is 0 (zero):
        if (depositAmountValue == 0){
            redirectAttributes.addFlashAttribute("error", " Deposit Amount Cannot Be 0 (zero)");
            return "redirect:/app/dashboard";
        }

        //TODO: update balance:
        double currentBalance = accountRepository.getAccountBalance(user.getUser_id(), acc_id);

        double newBalance = currentBalance + depositAmountValue;

        // Update Account:
        accountRepository.changeAccountBalanceById(newBalance, acc_id);

        //Log Successful Transaction:
        transactRepository.logTransaction(acc_id,"deposit", depositAmountValue,
                "online", "success", "Deposit Transaction Successful",currentDateTime );

        redirectAttributes.addFlashAttribute("success", " Amount Deposited Successfully");
        return "redirect:/app/dashboard";

    }
    // End of Deposit.

    @PostMapping("/transfer")
    public String transfer(@RequestParam("transfer_from") String transfer_from,
                           @RequestParam("transfer_to") String transfer_to,
                           @RequestParam("transfer_amount")String transfer_amount,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){
        //TODO: check for empty fields:
        if (transfer_from.isEmpty() || transfer_to.isEmpty() || transfer_amount.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "The Transferring From, " +
                    "Transferring To and Transfer Amount Cannot Be Empty");
            return "redirect:/app/dashboard";
        }

        //TODO: convert variables:
        int transferFromId = Integer.parseInt(transfer_from);
        int transferToId = Integer.parseInt(transfer_to);
        double transferAmount = Double.parseDouble(transfer_amount);

        //TODO: check if transferring into the same account:
        if (transferFromId == transferToId){
            String errorMessage = "Cannot Transfer Into The Same Account, Please Select A Different Account";
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }

        //TODO: check for 0 values:
        if(transferAmount == 0){
            String errorMessage = "Cannot Transfer An Amount of 0";
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }

        // TODO: get logged in user:
        User user = (User)session.getAttribute("user");

        //TODO: get current balance:
        double currentBalanceOfAccountTransferringFrom = accountRepository.getAccountBalance(user.getUser_id(), transferFromId);

        // TODO: check if transfer amount is more than current amount:
        if (currentBalanceOfAccountTransferringFrom < transferAmount){
            String errorMessage = "You Have Insufficient Funds To Make This Transfer";
            // logging failed transaction
            transactRepository.logTransaction(transferFromId,"Transfer", transferAmount,
                    "online", "failed", "Insufficient Funds", currentDateTime );
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }

        double currentBalanceOfAccountTransferringTo = accountRepository.getAccountBalance(user.getUser_id(), transferToId);

        //TODO: set new balance:
        double newBalanceOfAccountTransferringFrom = currentBalanceOfAccountTransferringFrom - transferAmount;
        double newBalanceOfAccountTransferringTo = currentBalanceOfAccountTransferringTo + transferAmount;

        //Changed balance of the account transferring from:
        accountRepository.changeAccountBalanceById(newBalanceOfAccountTransferringFrom, transferFromId);

        //Changed balance of the account transferring to:
        accountRepository.changeAccountBalanceById(newBalanceOfAccountTransferringTo, transferToId);

        //log Successful Transaction
        transactRepository.logTransaction(transferFromId,"Transfer", transferAmount,
                "online", "success", "Transfer Transaction Successful",currentDateTime );


        redirectAttributes.addFlashAttribute("success", "Amount Transferred Successfully");
        return "redirect:/app/dashboard";
    }
    // End of Transfer Method.

    @PostMapping("/withdraw")
    public String withdraw(@RequestParam("withdrawal_amount") String withdrawalAmount,
                           @RequestParam("account_id") String accountID,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){
     //TODO: check for empty fields:
        if (withdrawalAmount.isEmpty() || accountID.isEmpty()){
            String errorMessage = "The Withdraw Amount or Account Withdrawing From Cannot Be Empty";
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }
     //TODO: convert variables:
        double withdrawal_amount =Double.parseDouble(withdrawalAmount);
        int account_id = Integer.parseInt(accountID);

     //TODO: check for 0 values:
        if (withdrawal_amount == 0){
            String errorMessage = "Withdrawal Amount Cannot Be 0 (Zero)";
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }

     // TODO: get loggoed in user:
        User user = (User)session.getAttribute("user");

     // TODO: get the current balance:
        double currentBalance = accountRepository.getAccountBalance(user.getUser_id(), account_id);

        // TODO: check if transfer amount is more than current amount:
        if (currentBalance < withdrawal_amount){
            String errorMessage = "You Have Insufficient Funds To Make This Withdrawal";
            // logging failed transaction
            transactRepository.logTransaction(account_id,"Withdrawal", withdrawal_amount,
                    "online", "failed", "Insufficient Funds", currentDateTime );
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }

     // TODO: set new balance:
        double newBalance = currentBalance - withdrawal_amount;

     // TODO: update account balance:
        accountRepository.changeAccountBalanceById(newBalance, account_id);

        //log Successful Transaction
        transactRepository.logTransaction(account_id,"Withdrawal", withdrawal_amount,
                "online", "success", "Withdrawal Transaction Successful",currentDateTime );


        redirectAttributes.addFlashAttribute("success", "Withdrawal Successful");
        return "redirect:/app/dashboard";
    }
    // End of Withdrawal Method.

    @PostMapping("/payment")
    public String payment(@RequestParam("beneficiary") String beneficiary,
                          @RequestParam("account_number") String account_number,
                          @RequestParam("account_id") String account_id,
                          @RequestParam("reference") String reference,
                          @RequestParam("payment_amount") String payment_amount,
                          HttpSession session,
                          RedirectAttributes redirectAttributes){

    // TODO: check for empty values:
        if(beneficiary.isEmpty() || account_number.isEmpty() || account_id.isEmpty() || payment_amount.isEmpty()){
           String errorMessage = "Beneficiary, Account Number, Account Paying From and Payment Amount Cannot Be Empty";
            redirectAttributes.addFlashAttribute("error", errorMessage);
            return "redirect:/app/dashboard";
        }
    // TODO: convert variables:
        int accountID = Integer.parseInt(account_id);
        double paymentAmount = Double.parseDouble(payment_amount);

    // TODO: check for 0:
        if (paymentAmount == 0){
            String errorMessage = "Payment Amount Cannot Be 0 (Zero)";
            redirectAttributes.addFlashAttribute("error", errorMessage );
            return "redirect:/app/dashboard";
        }

    // TODO: get logged in user:
        User user= (User)session.getAttribute("user");

    // TODO: get current balance:
        double currentBalance = accountRepository.getAccountBalance(user.getUser_id(), accountID);

    // TODO: check if payment amount is more than current amount:
       if (currentBalance < paymentAmount){
           String errorMessage = "You Have Insufficient Funds To Make This Payment";
           // TODO: make payment:
           String reasonCode = "Insufficient Funds";
           paymentRepository.makePayment(accountID, beneficiary,account_number, paymentAmount, reference, "failed", reasonCode,currentDateTime);
           // logging failed transaction
           transactRepository.logTransaction(accountID,"Payment", paymentAmount,
                   "online", "failed", "Insufficient Funds", currentDateTime );
           redirectAttributes.addFlashAttribute("error", errorMessage );
           return "redirect:/app/dashboard";
       }
    // TODO: set new balance for account paying from:
        double newBalance = currentBalance - paymentAmount;

    // TODO: make payment:
        String reasonCode = "Payment Was Successful";
        paymentRepository.makePayment(accountID, beneficiary,account_number, paymentAmount, reference, "success", reasonCode,currentDateTime);

    // TODO: update account paying from:
        accountRepository.changeAccountBalanceById(newBalance, accountID);

        //log Successful Transaction
        transactRepository.logTransaction(accountID,"Payment", paymentAmount,
                "online", "success", "Payment Transaction Successful",currentDateTime );

        String successMessage = reasonCode;
        redirectAttributes.addFlashAttribute("success", successMessage);
        return "redirect:/app/dashboard";
    }




}
