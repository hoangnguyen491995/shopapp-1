package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.util.List;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class Product extends BaseEntity {

    private String nameProduct;

    private String description;

    private int price;

   @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "catalogId", nullable = false)
    private Catalog catalog;


//    @ManyToOne
//    @JoinColumn(name = "productId", nullable = false)
//    private Product product;
//

    @OneToMany(cascade = CascadeType.REMOVE)
    @JsonIgnore
    @JoinColumn(name = "productId")
    private List<OrderDetail> orderDetails;

//    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
//    private List<Image> images;

//    @ManyToMany(mappedBy = "products", cascade = CascadeType.MERGE)
//    @ToString.Exclude
//    Set<Orders> orders = new HashSet<>();

    private String url;

    private String insurance;

}
