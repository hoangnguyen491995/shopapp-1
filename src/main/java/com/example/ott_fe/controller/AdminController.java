package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Catalog;
import com.example.ott_fe.entity.Image;
import com.example.ott_fe.entity.Product;
import com.example.ott_fe.entity.User;
import com.example.ott_fe.service.ICatalogService;
import com.example.ott_fe.service.IImageService;
import com.example.ott_fe.service.IProductService;
import com.example.ott_fe.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class AdminController {

    @Autowired
    IProductService productService;
    @Autowired
    IUserService userService;
    @Autowired
    ICatalogService catalogService;
    @Autowired
    IImageService imageService;

    @GetMapping("/admin/login")
    public String loginAdmin() {
        return "admin/login";
    }

    @GetMapping("/admin/product")
    public String product(Model model) {
        model.addAttribute("products", productService.getAllProduct());
        model.addAttribute("catalog", catalogService.getAllCatalog());
        model.addAttribute("product", new Product());
        return "admin/product";
    }

    @GetMapping("admin/user")
    public String user(Model model) {
        model.addAttribute("users", userService.getAllUser());
        model.addAttribute("user", new User());
        return "admin/user";
    }
    //  hiện danh sách

    @GetMapping("admin/catalog")
    public String catalog(Model model) {
        model.addAttribute("catalog", catalogService.getAllCatalog());
        return "admin/catalog";
    }
   // xóa catalog
    @GetMapping("admin/catalog/delete")
    public String deleteCatalog( @RequestParam(name = "catalogId") String catalogId){
        Long catalogId1 = Long.parseLong(catalogId);
        catalogService.deleteCatalog(catalogId1) ;
        return "redirect:/admin/catalog" ;
    }
    // thêm catalog
    @PostMapping("admin/catalog/add")
    public String addProduct(@ModelAttribute("catalog") Catalog catalog) {
        catalogService.addCatalog(catalog);
        return "admin/product";
    }









    @GetMapping("admin/productDetailAdmin")
    public String productDetail(Model model, @RequestParam(name = "productId") String productId) {
//
//        List<Product> list = productService.getAllProduct();
//        List<Product> productDetail = new ArrayList<>();
//
//        List<Image> imageList = imageService.getAllImage()  ;
//        List<Image> imageDetail = new ArrayList<>() ;
//
//        for (int i = 0; i < list.size(); i++) {
//            int productID1 = Integer.parseInt(productId);
//            if (list.get(i).getProductId() == productID1) {
//                productDetail.add(list.get(i));
//            }
//        }
//
//        for (int i = 0; i < imageList.size(); i++) {
//            int productID1 = Integer.parseInt(productId);
//            if (imageList.get(i).getProductIds() == productID1) {
//                imageDetail.add(imageList.get(i));
//            }
//        }
//
//        model.addAttribute("products", productDetail);
//        model.addAttribute("images", imageDetail);
//
//        return "redirect:admin/productDetail";


        return "redirect:/admin/productDetailAdmin";
    }


}
