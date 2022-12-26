package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Cart;
import com.example.ott_fe.entity.Product;
import com.example.ott_fe.entity.User;
import com.example.ott_fe.repository.CartRepository;
import com.example.ott_fe.service.ICartService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.IUserService;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.xml.bind.PrintConversionEvent;
import java.security.Principal;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/cart")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CartController {
    @Autowired
    ICartService cartService;

    @Autowired
    IUserService userService;

    @Autowired
    CartRepository cartRepository;

    @Autowired
    IProductService productService;

    @GetMapping
    public String cart(Model model, Principal principal) {
        User user = userService.findByUsername(principal.getName());
        Set<Product> products = user.getCarts().get(0).getProducts();
        model.addAttribute("products", products);
        return "cart";
    }

    @GetMapping("/add-product")
    public String addProductToCart(@RequestParam(name = "productId") Long productId, Principal principal) {
        User user = userService.findByUsername(principal.getName());
        Cart cart = user.getCarts().get(0);
        cart.getProducts().add(productService.getProductById(productId));
        cartRepository.save(cart);
        return "redirect:/cart";
    }

    @GetMapping("/delete-product")
    public String deleteProductToCart(@RequestParam(name = "productId") Long productId, Principal principal) {
        User user = userService.findByUsername(principal.getName());
        Cart cart = user.getCarts().get(0);
        cart.getProducts().remove(productService.getProductById(productId));
        cartRepository.save(cart);
        return "redirect:/cart";
    }
}
