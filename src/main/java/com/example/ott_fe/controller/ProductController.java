package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Product;
import com.example.ott_fe.entity.User;
import com.example.ott_fe.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    IProductService productService;

    @GetMapping("/list")
    public List<Product> list(Model model) {
        model.addAttribute("products", productService.getAllProduct());
        return productService.getAllProduct();
    }

    @GetMapping("/add")
    public String addProductView(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product";

    }

    @PostMapping("/add")
    public String addProduct(@ModelAttribute("product") Product product) {

        productService.addProduct(product);
        return "redirect:/admin/product";
    }

    // sửa theo ID
    @PutMapping("/update")
    public Product updateProduct(@RequestBody Product product) {
        return productService.updateProduct(product);
    }

    @DeleteMapping("/delete")
    public String deleteProduct(@RequestBody Long id) {
        productService.deleteProduct(id);
        return "thang";
    }

}
