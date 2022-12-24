package com.example.ott_fe.controller;

import com.example.ott_fe.service.ICatalogService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.event.MouseListener;

@Controller
public class AdminController {
   @Autowired
   IProductService productService ;
   @Autowired
   IUserService userService ;
   @Autowired
    ICatalogService catalogService ;

    @RequestMapping("/admin/login")
    public String loginAdmin(){
        return "admin/login";
    }

    @RequestMapping("/admin/product")
    public String product(Model model){
        model.addAttribute("products",productService.getAllProduct()) ;

        return "admin/product";
    }

    @GetMapping("admin/user")
    public String user(Model model){
        model.addAttribute("user",userService.getAllUser()) ;
        return "admin/user" ;
    }

   @GetMapping("admin/catalog")
    public  String catalog(Model model){
       model.addAttribute("catalog",catalogService.getAllCatalog()) ;
       return "admin/catalog" ;
   }
}
