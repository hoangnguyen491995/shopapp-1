package com.example.ott_fe.controller;

import com.example.ott_fe.entity.User;
import com.example.ott_fe.service.IImageService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.impl.UserService;
import com.example.ott_fe.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    IProductService productService;

    @Autowired
    IImageService imageService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
//        userValidator.validate(userForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "registration";
//        }

        userService.save(userForm);

        return "redirect:/home";
    }

    @GetMapping("login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/home"})
    public String welcome(Model model) {
        model.addAttribute("products", productService.getAllProduct());
        model.addAttribute("image", imageService.getAllImage());
        return "home";
    }
}
