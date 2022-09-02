package com.demo_bank_v1.controllers;

import com.demo_bank_v1.helpers.HTML;
import com.demo_bank_v1.helpers.Token;
import com.demo_bank_v1.mailMessenger.MailMessenger;
import com.demo_bank_v1.models.User;
import com.demo_bank_v1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.validation.Valid;
import java.util.Random;

@Controller
public class RegisterController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/register")
    public ModelAndView getRegister(){
        ModelAndView getRegisterPage = new ModelAndView("register");
        getRegisterPage.addObject("PageTitle", "Register");
        System.out.println("In Register Page Controller");
        return getRegisterPage;
    }

    @PostMapping("/register")
    public ModelAndView register(@Valid @ModelAttribute("registerUser")
    User user, BindingResult result,
                                 @RequestParam("first_name") String first_name,
                                 @RequestParam("last_name") String last_name,
                                 @RequestParam("email") String email,
                                 @RequestParam("password") String password,
                                 @RequestParam("confirm_password") String confirm_password) throws MessagingException {
        ModelAndView registrationPage = new ModelAndView("register");
        // check for errors
        if(result.hasErrors() && confirm_password.isEmpty()){
            registrationPage.addObject("confirm_pass", "The confirm field is required");
            return registrationPage;
        }

        // TODO: check for password match:
        if(!password.equals(confirm_password)){
            registrationPage.addObject("passwordMisMatch", "Passwords do not match");
            return registrationPage;
        }

        // TODO: GET TOKEN STRING:
        String token = Token.generateToken();
        // TODO: GENERATE RANDOM CODE:
        Random rand = new Random();
        int bound = 123;
        int code = bound * rand.nextInt(bound);

        // TODO: GET EMAIL HTML BODY
        String emailBody = HTML.htmlEmailTemplate(token,code);

        //TODO: HASH PASSWORD:
        String hashed_password = BCrypt.hashpw(password,BCrypt.gensalt());

        // TODO: REGISTER USER:
        userRepository.registerUser(first_name, last_name, email, hashed_password, token, code);

        // TODO: SEND EMAIL NOTIFICATION:
        MailMessenger.htmlEmailMessenger("no-reply@somecompany.com", email, "Verify Account", emailBody);

        // TODO: RETURN TO REGISTER PAGE:
        String successMessage = "Account Registered Successfully, Please Check your Email and Verify Account!";
        registrationPage.addObject("success", successMessage);
        return registrationPage;

    }
}
