package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.*;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long productId;

    private String nameProduct;

    private String description;

    private int price;
//
//    @ManyToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name = "Catalog_Id", nullable = false)
//    @JsonBackReference
//    private Catalog catalog;

    @OneToMany(mappedBy = "product")
    @JsonManagedReference
    @JsonIgnore
    private List<Image> images;

    @ManyToMany(cascade = {CascadeType.ALL})
    @JoinTable(
            name = "Orders_product",
            joinColumns = {@JoinColumn(name = "order_id")},
            inverseJoinColumns = {@JoinColumn(name = "product_id")}
    )

    Set<Orders> orders = new HashSet<>();

    private int catalogId;

    private String url;

    private Date created_date;

    private Date updated_date;

    public int getPrice() {
        return price;
    }

}
