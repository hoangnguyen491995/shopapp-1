package com.example.ott_fe.controller;


import com.example.ott_fe.entity.Product;
import com.example.ott_fe.service.ICatalogService;
import com.example.ott_fe.service.IProductService;
import com.mysql.cj.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class CatalogController {
    @Autowired
    IProductService productService ;

    @GetMapping("/catalog")
    public String catalog(Model model,@RequestParam(name = "catalogId") String catalogId ){

         List<Product> productList = productService.getAllProduct() ;
         List<Product> listbyCatagory = new ArrayList<>() ;
          for(int i=0 ; i<productList.size();i++){
           int catalogId1 = Integer.parseInt(catalogId);
              if(productList.get(i).getCatalogId()==catalogId1){
                  listbyCatagory.add(productList.get(i)) ;
              }
          }
        model.addAttribute("products",listbyCatagory) ;
        return "catalog" ;

    }
//    public String catalog(Model model,@RequestParam(categoryID="categoryID",required = false) long categoryID){
//        model.addAttribute("catalog",productService.getbyCatalogIDContaining(categoryID)) ;
//        return "catalog";
//    }
}