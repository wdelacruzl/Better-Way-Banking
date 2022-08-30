package com.demo_bank_v1.helpers;

public class HTML {

    public static String htmlEmailTemplate(String token, int code){
        //Verify Account URL:
        String url = "http://127.0.0.1:8070/verify?token=" + token + "&code=" + code;

        String emailTemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "    <!-- <link rel='stylesheet' href='css/email.css'> -->\n" +
                "    <title>Document</title>\n" +
                "    <style>\n" +
                "        *{\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: Comfortaa;\n" +
                "        }\n" +
                "\n" +
                "        body{\n" +
                "            height: 100vh;\n" +
                "            background-color:  #fceae0;\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "\n" +
                "        .wrapper{\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            background-color: white;\n" +
                "            border-radius: 7px;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .email-msg-header{\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .company-name{\n" +
                "            font-size: 39px;\n" +
                "            color: #B5838D;\n" +
                "            text-align: center;\n" +
                "            font-weight: 600;\n" +
                "        }\n" +
                "\n" +
                "        .welcome-text{\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .verify-account-btn{\n" +
                "            padding: 15px;\n" +
                "            background-color: #E5989B;\n" +
                "            text-decoration: none;\n" +
                "            color: white;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "\n" +
                "        .copy-right{\n" +
                "            padding: 15px;\n" +
                "            color: #B5838D;\n" +
                "            font-size: 14px;\n" +
                "            margin-bottom: -20px;\n" +
                "            margin-top: 20px;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "<body>\n" +
                "\n" +
                "    <!-- wrapper -->\n" +
                "    <div class='wrapper'>\n" +
                "        <!--  Email MSG Header -->\n" +
                "        <h2 class='email-msg-header'>\n" +
                "            Welcome and Thank You for Choosing\n" +
                "        </h2>\n" +
                "        <!-- End of Email MSG Header -->\n" +
                "        <div class='company-name'>Better Way Banking</div>\n" +
                "        <hr>\n" +
                "\n" +
                "        <!-- Welcome Text -->\n" +
                "        <p class='welcome-text'>\n" +
                "            Your account has been successfully registered! <br> please click below to verify your account\n" +
                "        </p>\n" +
                "        <!-- End of Welcome Text -->\n" +
                "        <br>\n" +
                "        <!-- Verify Account Button  -->\n" +
                "        <a href='"+ url +"' class='verify-account-btn'>Verify Account</a>\n" +
                "        <!-- End of Verify Account Button  -->\n" +
                "\n" +
                "        <div class='copy-right'>\n" +
                "            &copy; Copy Right 2022. All Rights Reserved.\n" +
                "        </div>\n" +
                "    </div>\n" +
                "    <!-- End of wrapper -->\n" +
                "\n" +
                "\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        return emailTemplate;
    }

}
