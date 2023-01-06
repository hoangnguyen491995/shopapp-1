package com.example.ott_fe.controller;

import com.example.ott_fe.entity.OrderDetail;
import com.example.ott_fe.entity.Orders;
import com.example.ott_fe.entity.Product;
import com.example.ott_fe.entity.User;
import com.example.ott_fe.repository.CartRepository;
import com.example.ott_fe.repository.OrderDetailRepository;
import com.example.ott_fe.service.ICartService;
import com.example.ott_fe.service.IOrderDetailService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.IUserService;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.apache.catalina.LifecycleState;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cart")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CartController {

    @Autowired
    IUserService userService;

    @Autowired
    CartRepository cartRepository;

    @Autowired
    IOrderDetailService orderDetailService;
    @Autowired
    IProductService productService;

    @GetMapping
    public String cart(Model model, Principal principal) {
        User user = userService.findByUsername(principal.getName());
        model.addAttribute("oderDetail", orderDetailService.getDetailByOrderId(user.getCarts().get(0).getId()));
//        model.addAttribute("products", productService.getAllProduct());
        return "cart";
    }

    @GetMapping("/add-product")
    public String addProductToCart(Model model, @RequestParam(name = "productId") Long productId, Principal principal) {

        User user = userService.findByUsername(principal.getName());
        Orders order = user.getCarts().get(0);
        orderDetailService.findByOrderIdAndProductId(order, productId);

        return "redirect:/cart";
    }

    @GetMapping("/delete-product")
    public String deleteProductToCart(@RequestParam(name = "productId") Long productId, Principal principal) {
        User user = userService.findByUsername(principal.getName());
        Orders order = user.getCarts().get(0);
        orderDetailService.deleteByOrderIdAndProductId(order, productId);
        return "redirect:/cart";
    }

}


