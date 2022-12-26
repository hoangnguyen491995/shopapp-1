package com.example.ott_fe.repository;

import com.example.ott_fe.entity.Role;
import com.example.ott_fe.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
