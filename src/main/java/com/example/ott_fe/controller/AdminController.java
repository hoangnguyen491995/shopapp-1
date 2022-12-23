package com.example.ott_fe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdminController {

    @RequestMapping("/admin/login")
    public String loginAdmin(){
        return "admin/login";
    }

    @RequestMapping("/admin")
    public String Admin(){
        return "admin/home";
    }
}
