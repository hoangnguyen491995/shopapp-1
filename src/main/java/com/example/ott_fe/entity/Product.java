package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
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

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "catalogId", nullable = false)
    private Catalog catalog;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<Image> images;

    @ManyToMany(mappedBy = "products", cascade = CascadeType.MERGE)
    @ToString.Exclude
    Set<Cart> carts = new HashSet<>();

    private String url;
    private String insurance;

}
