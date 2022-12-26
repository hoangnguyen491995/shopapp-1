package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.*;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Catalog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long catalogId;

    private String catalogName ;

    @OneToMany(mappedBy = "catalog")
    private List<Product> products;

}
