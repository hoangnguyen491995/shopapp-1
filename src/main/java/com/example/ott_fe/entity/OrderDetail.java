package com.example.ott_fe.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class OrderDetail extends BaseEntity {


    @ManyToOne
    @JoinColumn(name = "orderId", nullable = false)
    private Orders order;

    @ManyToOne
    @JoinColumn(name = "productId", nullable = false)
    private Product product;

    private int quantity;

}
