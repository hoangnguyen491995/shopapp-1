package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Product;
import com.example.ott_fe.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("admin/product" )
public class  ProductController {

    @Autowired
    IProductService productService;

    @GetMapping("/list")
    public List<Product> list(Model model) {
        model.addAttribute("products", productService.getAllProduct());
        return productService.getAllProduct();
    }
//  ====add product====
    @GetMapping("/add")
    public String addProductView(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product";
    }


    @PostMapping("/add")
    public String addProduct(@ModelAttribute("product") Product product) {
        productService.addProduct(product);

        return "admin/product";
    }

    // sửa theo ID
    @PostMapping("/update")
    public Product updateProduct(@ModelAttribute("product") Product product, Model model) {
        model.addAttribute("product", productService.getAllProduct());
     return productService.updateProduct(product);
      //  return  "redirect:/" ;
  }

    @GetMapping("/delete")
    public String deleteProduct(@RequestParam(name = "productId") Long id) {
        productService.deleteProduct(id);
        return "redirect:admin/product";
    }
}
