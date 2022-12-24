package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Product;
import com.example.ott_fe.service.ICatalogService;
import com.example.ott_fe.service.IImageService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    IProductService productService ;
    @Autowired
    IUserService userService ;
    @Autowired
    IImageService imageService ;
    @Autowired
    ICatalogService catalogService ;
    @GetMapping("home")
    public String home(Model model){
        model.addAttribute("products",productService.getAllProduct()) ;
        model.addAttribute("image",imageService.getAllImage()) ;
        return "home";
    }


    @GetMapping("/product")
    public String product(Model model){
        model.addAttribute("products",productService.getAllProduct()) ;
        model.addAttribute("catalog",catalogService.getAllCatalog()) ;
        return "product";
    }

    @GetMapping("/myAccount")
    public String myAccount(){
        return "myAccount";
    }

    @GetMapping("/cart")
    public String cart(){
        return "cart";
    }


      @GetMapping("/productDetail")
          public String productDetail(Model model, @RequestParam(name = "productId") String productId){

           System.out.println(productId);
          List<Product> list = productService.getAllProduct() ;
          List<Product>  productDetail = new ArrayList<>() ;
            for(int i=0;i<list.size(); i++){
            int productID1 = Integer.parseInt(productId);

            if(list.get(i).getProductId() ==productID1 ){
                productDetail.add(list.get(i)) ;
            }
        }

        model.addAttribute("products",productDetail) ;
        return "productDetail" ;
    }
}
