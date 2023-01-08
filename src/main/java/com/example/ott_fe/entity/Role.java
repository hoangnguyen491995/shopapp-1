package com.example.ott_fe.entity;

import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Role")
@EqualsAndHashCode(callSuper = true)
public class Role extends BaseEntity {


    private String name;

    @ManyToMany(mappedBy = "roles")
    @ToString.Exclude
    private Set<User> users = new HashSet<>();

}
