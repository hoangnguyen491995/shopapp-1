package com.example.ott_fe.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Catalog extends BaseEntity {

    private String catalogName ;

    @OneToMany(mappedBy = "catalog")
    private List<Product> products;


}


