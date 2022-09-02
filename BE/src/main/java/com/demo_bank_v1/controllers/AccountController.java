package com.demo_bank_v1.controllers;

import com.demo_bank_v1.helpers.GenAccountNumber;
import com.demo_bank_v1.models.User;
import com.demo_bank_v1.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountRepository accountRepository;

    @PostMapping("/create_account")
    public String createAccount(@RequestParam("account_name")String accountName,
                                @RequestParam("account_type")String accountType,
                                RedirectAttributes redirectAttributes,
                                HttpSession session){
        // TODO: check for empty strings:
        if(accountName.isEmpty() || accountType.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "Account Name and Type cannot be empty");
            return "redirect:/app/dashboard";
        }

        //TODO: get logged in user:
        User user = (User)session.getAttribute("user");

        //TODO: get or generate account number:
         int setAccountNumber = GenAccountNumber.generateAccountNumber();
         String bankAccountNumber = Integer.toString(setAccountNumber);
         // TODO: create account:
        accountRepository.createBankAccount(user.getUser_id(), bankAccountNumber, accountName, accountType);

        // set success message
        redirectAttributes.addFlashAttribute("success", "Account Created Successfully");
        return "redirect:/app/dashboard";
    }
}
