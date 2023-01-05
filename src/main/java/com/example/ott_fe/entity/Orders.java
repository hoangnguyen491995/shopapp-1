package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class Orders extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ordersId;

    @ManyToOne
    @JoinColumn(name = "userId", nullable = false)
    private User user;

//    @ManyToMany(cascade = CascadeType.MERGE)
//    @JsonIgnore
//    @JoinTable(
//            name = "orderProduct",
//            joinColumns = {@JoinColumn(name = "orderId")},
//            inverseJoinColumns = {@JoinColumn(name = "orderId")}
//    )
//    @EqualsAndHashCode.Exclude
//    private Set<Product> products = new HashSet<>();



}
