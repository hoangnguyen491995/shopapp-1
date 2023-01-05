package com.example.ott_fe.repository;
import com.example.ott_fe.entity.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository extends JpaRepository<Orders, Long> {
}
