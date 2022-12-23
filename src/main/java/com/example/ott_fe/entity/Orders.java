package com.example.ott_fe.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "userId",insertable =false , updatable = false)
    private User user;

    @ManyToMany(mappedBy = "orders")
    private Set<Product> users = new HashSet<>();

    private Date created_date;

    private Date updated_date;
}
