package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class User extends BaseEntity {


    private String username;

    private String phone;

    private String email;

    private String password;
    @Transient
    private String passwordConfirm;

    @OneToMany()
    @JsonIgnore
    @JoinColumn(name = "userId")
    private List<Orders> carts;

    @ManyToMany(cascade = {CascadeType.ALL})
    @JoinTable(
            name = "userRole",
            joinColumns = {@JoinColumn(name = "userId")},
            inverseJoinColumns = {@JoinColumn(name = "roleId")}
    )
    @EqualsAndHashCode.Exclude
    @JsonIgnore
    Set<Role> roles = new HashSet<>();

    public void put(String mesage, String tài_khoản_không_hợp_lệ) {
    }
}
