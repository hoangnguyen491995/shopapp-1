package com.example.ott_fe.controller;

import com.example.ott_fe.entity.User;
import com.example.ott_fe.service.IImageService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("admin/user")
public class UserController {

    @Autowired
    IUserService userService ;

    @Autowired
    IProductService productService;

    @Autowired
    IImageService imageService;
    //  ====add user====
    @GetMapping("/add")
    public String addUserView(Model model) {
        model.addAttribute("users",userService.getAllUser()) ;
        model.addAttribute("user", new User());
        return "redirect:admin/user";

    }

    @PostMapping("/add")
    public String addUser(@ModelAttribute("user") User user,Model model) {
        model.addAttribute("users",userService.getAllUser()) ;
        userService.addUser(user);
        return "redirect:admin/user";
    }

    @GetMapping("/delete")
    public String deleteUser(@RequestParam(name = "userId") Long id) {
        userService.deleteUser(id) ;
        return "redirect:admin/user";
    }

   //sửa thông tin user theo id
   @PostMapping("/update")
   public User updateUser(@ModelAttribute("user") User user, Model model) {
     model.addAttribute("users", userService.getAllUser());
       return userService.updateUser(user);
   }

}
