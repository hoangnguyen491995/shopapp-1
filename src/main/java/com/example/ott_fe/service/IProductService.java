package com.example.ott_fe.service;

import com.example.ott_fe.entity.Product;

import java.util.List;


public interface IProductService {

   Product addProduct(Product product) ;

    Product updateProduct(Product product) ;

   boolean deleteProduct(long Product_Id) ;

    List<Product> getAllProduct() ;
  List<Product>  getbyCatalogIDContaining(long catalogId ) ;

}
