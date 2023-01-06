package com.example.ott_fe.repository;

import com.example.ott_fe.entity.OrderDetail;
import com.example.ott_fe.entity.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
    List<OrderDetail> findAllByOrderId(Long id);
    OrderDetail findByOrderIdAndProductId(Long orderId, Long productId);


}
