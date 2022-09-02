package com.demo_bank_v1.controllers;

import com.demo_bank_v1.helpers.Token;
import com.demo_bank_v1.models.User;
import com.demo_bank_v1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
public class AuthController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public ModelAndView getLogin(){
        System.out.println("In Login Page Controller");
        ModelAndView getLoginPage = new ModelAndView("login");
        // set token string:
        String token = Token.generateToken();
        // send token to view:
        getLoginPage.addObject("token", token);
        getLoginPage.addObject("PageTitle", "Login");
        return getLoginPage;
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        @RequestParam("_token") String token,
                        Model model,
                        HttpSession session) {
        // TODO: validate input fields or form data:
        if (email.isEmpty() || email == null || password.isEmpty() || password == null) {
            model.addAttribute("error", "Username or Password Cannot Be Empty");
            return "login";
        }
        // TODO: check if email exists:
        String getEmailInDatabase = userRepository.getUserEmail(email);
        if (getEmailInDatabase != null) {
            // get password in database
            String getPasswordInDatabase = userRepository.getUserPassword(getEmailInDatabase);

            // validate password
            if (!BCrypt.checkpw(password, getPasswordInDatabase)) {
                model.addAttribute("error", "Incorrect Username or Password");
                return "login";
            }
        } else {
            model.addAttribute("error", "Something went wrong, please contact support");
            return "error";
        }
        // TODO: check if user account is verified:
        int verified = userRepository.isVerified(getEmailInDatabase);
        // Check if account is verified:
        if (verified != 1) {
            String msg = "This Account Has Not Been Verified Yet, Check Email to verify";
            model.addAttribute("error", msg);
            return "login";
        }

        // TODO: proceed to log the user in:
        User user = userRepository.getUserDetails(getEmailInDatabase);

        // set session attributes:
        session.setAttribute("user", user);
        session.setAttribute("token", token);
        session.setAttribute("authenticated", true);

        return "redirect:/app/dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes){
        session.invalidate();
        redirectAttributes.addFlashAttribute("logged_out","logged out successfully" );
        return "redirect:/login";
    }

}
