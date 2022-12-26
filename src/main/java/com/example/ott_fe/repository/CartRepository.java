package com.example.ott_fe.repository;
import com.example.ott_fe.entity.Cart;
import com.example.ott_fe.entity.Catalog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
}
