package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Product;
import com.example.ott_fe.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/product")
public class ProductController {
    @Autowired
    IProductService productService ;

   @GetMapping("/list")
   public List<Product> list(Model model){
       model.addAttribute("products",productService.getAllProduct()) ;
       return productService.getAllProduct();
   }

    @PostMapping("/add")
    public Product addProduct(@RequestBody Product product){
        return productService.addProduct(product) ;
    }

  // sửa theo ID
    @PutMapping("/update")
    public Product updateProduct(@RequestBody Product product){
        return productService.updateProduct(product) ;
    }

    @DeleteMapping("/delete")
    public Boolean deleteProduct(@RequestBody String id ){
        return productService.deleteProduct(Long.parseLong(id)) ;
    }

}
