package com.example.ott_fe.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long User_Id;

    private String userName;

    private String phone;

    private String email;

    private String passWord;

    @OneToMany()
    @JsonIgnore
    @JoinColumn(name="userId")
    private List<Orders> orders;

//    @ManyToMany(cascade = { CascadeType.ALL})
//    @JoinTable(
//            name = "User_Role",
//            joinColumns = { @JoinColumn(name = "user_id") },
//            inverseJoinColumns = { @JoinColumn(name = "role_id") }
//    )
//    Set<Role> roles = new HashSet<>();

    private Date created_date;

    private Date updated_date;
}
