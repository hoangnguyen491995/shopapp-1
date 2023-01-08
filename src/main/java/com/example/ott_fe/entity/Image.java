package com.example.ott_fe.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@AllArgsConstructor
@Entity
@NoArgsConstructor
public class Image extends BaseEntity {



    private String name;

    private String url;

//    @ManyToOne
//    @JoinColumn(name = "productId", nullable = false)
//    private Product product;
      private long productIds;


}
