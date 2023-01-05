package com.example.ott_fe.entity;

import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class Product extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long productId;

    private String nameProduct;

    private String description;

    private int price;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "catalogId", nullable = false)
    private Catalog catalog;

//    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
//    private List<Image> images;

//    @ManyToMany(mappedBy = "products", cascade = CascadeType.MERGE)
//    @ToString.Exclude
//    Set<Orders> orders = new HashSet<>();

    private String url;

    private String insurance;

    public Product(long productId){
        this.productId=productId;
}




}
