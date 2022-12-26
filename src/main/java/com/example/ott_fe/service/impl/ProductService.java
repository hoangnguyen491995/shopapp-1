package com.example.ott_fe.service.impl;

import com.example.ott_fe.entity.Product;
import com.example.ott_fe.repository.ProductRepository;
import com.example.ott_fe.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class ProductService implements IProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public Product addProduct(Product product) {
        if (product != null) {
            return productRepository.save(product);
        }
        return null;
    }

    @Override
    public Product updateProduct(Product product) {
        if (product != null) {
            Product product1 = productRepository.findById(product.getProductId()).orElse(null);
            if (product1 != null) {
                product1.setNameProduct(product.getNameProduct());
                product1.setDescription(product.getDescription());
                product1.setPrice(product.getPrice());
//                   product1.setImages(product.getImages());
                return productRepository.save(product1);
            }
        }
        return null;
    }

    @Override
    public void deleteProduct(Long id) {
        Product product = productRepository.getReferenceById(id);
        if (product != null) {
            productRepository.delete(product);
            return;
        }
    }

    @Override
    public List<Product> getAllProduct() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> getbyCatalogIDContaining(long catalogId) {
        return productRepository.findAllById(Collections.singleton(catalogId));
    }
}
