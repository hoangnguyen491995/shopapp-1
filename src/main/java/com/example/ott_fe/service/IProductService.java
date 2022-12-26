package com.example.ott_fe.service;

import com.example.ott_fe.entity.Product;

import java.util.List;


public interface IProductService {

    Product getProductById(Long id);

    Product addProduct(Product product);

    Product updateProduct(Product product);

    void deleteProduct(Long productId);

    List<Product> getAllProduct();

    List<Product> getbyCatalogIDContaining(long catalogId);

}
