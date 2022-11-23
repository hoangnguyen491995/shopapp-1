package com.example.ott_fe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("")
    public String home(){
        return "home";
    }

    @RequestMapping("/contact")
    public String contact(){
        return "contact";
    }

    @RequestMapping("/introduce")
    public String introduce(){
        return "introduce";
    }

    @RequestMapping("/myAccount")
    public String myAccount(){
        return "myAccount";
    }
}
